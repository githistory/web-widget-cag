angular.module 'widget.cag'

.directive 'cagProgress', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cag-progress/template'
  scope:
    value: '='
    steps: '='
    theme: '@'
  controller: ($scope)->
    $scope.sortedSteps = _.sortBy $scope.steps, 'value'
    $scope.max = $scope.sortedSteps[$scope.steps.length-1].value
    $scope.value = Math.min $scope.value, $scope.max

    $scope.refreshSteps = (value)->
      unless value then return
      _.each $scope.sortedSteps, (step)->
        step.color = if value<step.value then $scope.theme else $scope.theme+'-major'

  link: ($scope, element, attrs)->
