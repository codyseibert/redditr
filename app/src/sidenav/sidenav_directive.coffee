module.exports = [
  (
  ) ->
    restrict: 'E'

    templateUrl: 'sidenav/sidenav.html'

    scope:
      links: '='
      cols: '@?'

    link: (scope, elem, attr) ->

      scope.cols = 2

      scope.select = (link) ->
        angular.forEach scope.links, (link) -> link.selected = false
        link.selected = true

]
