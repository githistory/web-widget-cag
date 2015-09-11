angular.module 'widget.cgg.test', [
  'widget.cgg',
  'ui.router'
]

.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise("/step1")
  $stateProvider
  .state 'step1',
    url: "/step1",
    templateUrl: "step1.html"
  .state 'step2',
    url: "/step2",
    templateUrl: "step2.html"
