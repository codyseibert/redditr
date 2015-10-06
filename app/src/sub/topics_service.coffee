module.exports = [
  '$http'
  '$q'
  (
    $http
    $q
  ) ->

    parse = (topics) ->
      topics.map (topic) ->
        id: topic.data.id
        link: topic.data.permalink
        url: topic.data.url
        title: topic.data.title
        html: topic.data.selftext_html
        numComments: topic.data.num_comments
        author: topic.data.author

    parseComments = (comments) ->
      comments.map (comment) ->
        html: comment.data.body #body_html
        author: comment.data.author

    @getAllFor = (sub) ->
      deferred = $q.defer()
      $http.get "http://www.reddit.com/r/#{sub}.json?limit=100&sort=new"
        .success (topics) ->
          deferred.resolve parse topics.data.children
      deferred.promise

    @getCommentsFor = (sub, topic) ->
      deferred = $q.defer()
      $http.get "http://www.reddit.com/r/#{sub}/comments/#{topic}.json?limit=100"
        .success (comments) ->
          deferred.resolve parseComments comments[1].data.children
      deferred.promise

    return this
]
