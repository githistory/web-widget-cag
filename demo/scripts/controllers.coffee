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
  $scope.$watch 'firstname', ->
    $rootScope.firstname = $scope.firstname
  $scope.$watch 'lastname', ->
    $rootScope.lastname = $scope.lastname
  $scope.$watch 'age', ->
    $rootScope.age = $scope.age
  $scope.$watch 'email', ->
    $rootScope.email = $scope.email

.controller 'step2', ($scope, $rootScope)->
#  $rootScope.step2 =
#    field1: '1'
#    field2: '2'
#  console.log($scope.step2)
#  $scope.step2 = $rootScope.step2 = {}
