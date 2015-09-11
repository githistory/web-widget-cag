angular.module 'widget.cgg'

.directive 'cggButtonSet', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cgg-button-set/template'
  scope:
    previous: '@'
    next: '@'

  controller: ($scope)->


  link: ($scope, element, attrs)->
