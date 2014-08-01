define(['controllers'], function(controllers) {
  return controllers.controller('customerController', [
    '$scope', function($scope) {
      return $scope.customer = {
        name: 'Naomi',
        address: '1600 Amphitheatre'
      };
    }
  ]);
});
