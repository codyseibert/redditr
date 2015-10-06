module.exports = [
  (
  ) ->
    restrict: 'E'

    templateUrl: 'topnav/topnav.html'

    scope:
      links: '='

    link: (scope, elem, attr) ->
      scope.select = (link) ->
        angular.forEach scope.links, (link) -> link.selected = false
        link.selected = true
]
