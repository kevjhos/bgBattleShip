define ['controllers', 'exampleResource', 'boardDirective'], (controllers) -> #es el modulo principal de controladores donde estan todos los controladores
  controllers.controller 'tableController', ['$scope', 'resourceExample', ($scope, resourceExample)->

    $scope.hola='Dibujando Tablero'

    resourceExample.get (serverResponse) ->
      alert "#{serverResponse.name} is #{serverResponse.age} years old"
    , (error) ->
      alert error

    $scope.list1 = {title: 'Drag Me'}
    $scope.list2 = {title: "mueveme" }
    $scope.list3 = {title: ""}
    $scope.list4 = {title: "" }
    $scope.list5 = {title: "mueveme" }


  ]