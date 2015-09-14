angular.module 'widget.cgg'

.directive 'cggInputField', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cgg-inputField/template'
  scope:
    label: '@'
    placeholder: '@'
    isRequired : '@'

  controller: ($scope)->
    $scope.label = $scope.label || 'No label name'
    $scope.placeholder = $scope.placeholder || 'Empty placeholder'

  link: ($scope, element, attrs)->
