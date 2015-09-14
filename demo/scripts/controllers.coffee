angular.module 'widget.cgg.demo'

.controller 'demo', ($scope, $state, $rootScope)->
  $scope.progress =
    value: 0
    steps: [
      icon: 'tint'
      value: 0
    ,
      icon: 'gift'
      value: 33
    ,
      icon: 'fire'
      value: 66
    ,
      icon: 'check'
      value: 100
    ]
  $scope.max = _.max($scope.progress.steps, 'value').value

  $rootScope.$on '$stateChangeSuccess', ->
    switch $state.current.name
      when "step1" then $scope.progress.value = 0
      when "step2" then $scope.progress.value = 33
      when "step3" then $scope.progress.value = 66
      when "step4" then $scope.progress.value = 100
      else $scope.progress.value = 0

  $scope.$watch 'value', (nv)=>
    $scope.refreshSteps(nv)

.controller 'step1', ($scope, $rootScope)->
  $scope.$watch 'step1.firstname', ->
    $rootScope.firstname = $scope.step1.firstname
  $scope.$watch 'step1.lastname', ->
    $rootScope.lastname = $scope.step1.lastname
  $scope.$watch 'step1.age', ->
    $rootScope.age = $scope.step1.age
  $scope.$watch 'email', ->
    $rootScope.email = $scope.email
