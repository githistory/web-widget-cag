angular.module 'widget.cgg.test'

.controller 'test', ($scope)->
  $scope.progress =
    value: 50
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

.controller 'w1', ($scope)->
  console.log 'w1'

.controller 'w2', ($scope)->
  console.log 'w2'

