angular.module 'widget.cgg'

.directive 'cggCheckbox', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cgg-checkbox/template'
  scope:
    label: '@'
    defaultValue: '@'
    labelName: '@'

  controller: ($scope)->
    $scope.label = $scope.label || ''
    $scope.defaultValue = $scope.defaultValue || false
    $scope.labelName = $scope.labelName || 'emptyLabel'

  link: ($scope, element, attrs)->
