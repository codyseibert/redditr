module.exports = [
  (
  ) ->
    restrict: 'E'

    templateUrl: 'topnav/topnav.html'

    scope:
      links: '='

    link: (scope, elem, attr) ->
      console.log 'hi'
      console.log scope.links
]
