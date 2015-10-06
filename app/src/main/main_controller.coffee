module.exports = [
  '$scope',
  (
    $scope
  ) ->

    class Link
      constructor: (name, state) ->
        @name = name
        @state = state

    $scope.links = [
      new Link 'SUBS', 'main.subs'
      new Link 'ABOUT', 'main.about'
    ]

]
