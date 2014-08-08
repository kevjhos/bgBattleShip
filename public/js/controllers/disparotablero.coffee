define ['controllers'], (controllers) ->
  controllers.controller 'Disparoclickcontroller', ['$scope', ($scope) ->
    $scope.toggleBold = () ->
      element(document).find 'table'.toggleClass 'bold'
  ]