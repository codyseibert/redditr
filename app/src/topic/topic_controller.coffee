module.exports = [
  '$scope'
  '$stateParams'
  'TopicsService'
  (
    $scope
    $stateParams
    TopicsService
  ) ->

    sub = $stateParams.sub
    topic = $stateParams.topic

    TopicsService.getCommentsFor sub, topic
      .then (comments) ->
        $scope.comments = comments

]
