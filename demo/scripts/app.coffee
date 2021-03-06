angular.module 'widget.cgg.demo', [
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
  .state 'step3',
    url: "/step3",
    templateUrl: "step3.html"
  .state 'step4',
    url: "/step4",
    templateUrl: "step4.html"
