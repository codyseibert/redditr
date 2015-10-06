module.exports = [
  '$scope',
  'SubsService'
  (
    $scope
    SubsService
  ) ->

    SubsService.getAll()
      .then (links) ->
        $scope.links = links

]
