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
    console.log($scope.labelName)
    $scope.label = $scope.label || ''
    $scope.defaultValue = $scope.defaultValue || false
    $scope.labelName = $scope.labelName || 'wtf'
    console.log($scope.labelName)

  link: ($scope, element, attrs)->
