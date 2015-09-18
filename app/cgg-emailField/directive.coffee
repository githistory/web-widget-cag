angular.module 'widget.cgg'

.directive 'cggEmailField', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cgg-emailField/template'
  scope:
    label: '@'
    placeholder: '@'
    isRequired : '@'
    displayLock: '@'
    info: '@'
    errorShowUp: '@'
  require: '?ngModel'

  controller: ($scope)->
    $scope.label = $scope.label || 'No label name'
    $scope.placeholder = $scope.placeholder || 'Empty placeholder'
    $scope.isRequired = angular.isDefined($scope.isRequired) ? true || false
    $scope.displayLock = angular.isDefined($scope.displayLock) ? true || false
    $scope.displayInfo = angular.isDefined($scope.info) ? true || false
    $scope.errorShowUp == 'true' ? true : false

  link: (scope, element, attrs, ngModel)->
    unless ngModel then return

    read = -> # view -> model
      ngModel.$setViewValue(scope.inputValue)

    ngModel.$render = -> # model -> view
      scope.inputValue = ngModel.$viewValue

    scope.$watch 'inputValue', ->
      scope.$evalAsync(read)
    read()

    scope.notification = false
    scope.toggleNotification = ->
      scope.notification = !scope.notification

