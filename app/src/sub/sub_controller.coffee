module.exports = [
  '$scope'
  '$stateParams'
  'TopicsService'
  (
    $scope
    $stateParams
    TopicsService
  ) ->

    TopicsService.getAllFor $stateParams.sub
      .then (topics) ->
        $scope.topics = topics
        $scope.links = topics.map (topic) ->
          name: topic.title
          state: 'main.subs.sub.topic'
          params: topic: topic.id

]
