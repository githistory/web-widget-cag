angular.module 'widget.cgg.test'

.controller 'test', ($scope, $state, $rootScope)->
  $scope.progress =
    value: 1
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


.controller 'w1', ($scope)->
  console.log 'w1'

.controller 'w2', ($scope)->
  console.log 'w2'
