define(['controllers', 'exampleResource', 'boardDirective'], function(controllers) {
  return controllers.controller('tableController', [
    '$scope', 'resourceExample', function($scope, resourceExample) {
      $scope.hola = 'Dibujando Tablero';
      $scope.list1 = {
        title: 'Barquito1'
      };
      $scope.list2 = {
        title: 'Barquito2'
      };
      $scope.list3 = {
        title: 'Barquito3'
      };
      $scope.list4 = {
        title: 'Barquito4'
      };
      $scope.list5 = {
        title: 'Barquito5'
      };
      $scope.list6 = {
        title: 'Barquito6'
      };
      $scope.list7 = {};
      return $scope.highlightRow = function() {
        return console.log("in highlight row!");
      };
    }
  ]);
});
