angular.module 'widget.cag'

.directive 'cggInputField', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cgg-inputField/template'
  scope:
    label: '@'
    placeholder: '@'

  controller: ($scope)->
    $scope.label = $scope.label || 'No label name'
    $scope.placeholder = $scope.placeholder || 'Empty placeholder'

  link: ($scope, element, attrs)->
