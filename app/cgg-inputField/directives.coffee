angular.module 'widget.cgg'

.directive 'cggInputField', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cgg-inputField/template'
  scope:
    label: '@'
    placeholder: '@'
    isRequired : '@'
    displayLock: '@'
  require: '?ngModel'

  controller: ($scope)->
    $scope.label = $scope.label || 'No label name'
    $scope.placeholder = $scope.placeholder || 'Empty placeholder'
    $scope.isRequired = angular.isDefined($scope.isRequired) ? true || false
    $scope.displayLock = angular.isDefined($scope.displayLock) ? true || false

  link: (scope, element, attrs, ngModel)->
    unless ngModel then return

    read = -> # view -> model
      ngModel.$setViewValue(scope.inputValue)

    ngModel.$render = -> # model -> view
      scope.inputValue = ngModel.$viewValue

    scope.$watch 'inputValue', ->
      scope.$evalAsync(read)
    read()

