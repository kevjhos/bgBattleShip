define ['controllers'], (controllers) ->
    controllers.controller 'customerController', ['$scope', ($scope) ->
      $scope.customer =
        name: 'Naomi',
        address: '1600 Amphitheatre'
    ]