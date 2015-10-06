module.exports = [
  '$stateProvider'
  '$urlRouterProvider'
  (
    $stateProvider,
    $urlRouterProvider
  ) ->

    $urlRouterProvider.otherwise '/'

    $stateProvider
      .state 'main',
        url: '/'
        views:
          'main':
            controller: 'MainCtrl'
            templateUrl: 'main/main.html'

      .state 'main.subs',
        url: 'subs'
        views:
          'page':
            controller: 'SubsCtrl'
            templateUrl: 'subs/subs.html'

      .state 'main.subs.sub',
        url: '/:sub'
        views:
          'sub':
            controller: 'SubCtrl'
            templateUrl: 'sub/sub.html'

      .state 'main.subs.sub.topic',
        url: '/:topic'
        views:
          'topic':
            controller: 'TopicCtrl'
            templateUrl: 'topic/topic.html'

      .state 'main.about',
        url: 'about'
        views:
          'page':
            controller: 'AboutCtrl'
            templateUrl: 'about/about.html'

    return this
]
