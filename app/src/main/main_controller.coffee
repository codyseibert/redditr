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
      new Link 'Subs', 'main.subs'
      new Link 'About', 'main.about'
    ]

]
