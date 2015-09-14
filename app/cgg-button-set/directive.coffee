angular.module 'widget.cgg'

.directive 'cggButtonSet', (_)->
  restrict: 'AE'
  replace: true
  templateUrl: 'cgg-button-set/template'
  scope:
    previous: '@'
    next: '@'
    progressValue: '='
    formComplete: '='

  controller: ($scope)->
    if ($scope.next == 'submit')
      $scope.buttonTitleNext = 'submit'
    else
      $scope.buttonTitleNext = 'next'

    $scope.formComplete == true ? true : false
