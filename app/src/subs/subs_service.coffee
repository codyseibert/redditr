module.exports = [
  '$http'
  '$q'
  (
    $http
    $q
  ) ->

    class Sub
      constructor: (name, state, params) ->
        @name = name
        @state = state
        @params = params

    subs = [
      new Sub 'learnprogramming', 'main.subs.sub', sub: 'learnprogramming'
      new Sub 'progether', 'main.subs.sub', sub: 'progether'
    ]

    @getAll = ->
      defer = $q.defer()
      defer.resolve subs
      defer.promise

    return this
]
