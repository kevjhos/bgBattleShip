define ['controllers', 'exampleResource', 'ejemDirectiva'], (controllers) -> #es el modulo principal de controladores donde estan todos los controladores
  controllers.controller 'tableController', ['$scope', 'resourceExample', ($scope, resourceExample)->

    $scope.hola='Dibujando Tablero'
    #$scope.list100 = exampleServices.variable1(2) 'exampleService', exampleServices
    $scope.list35 = {}
    $scope.usuario
    $scope.password
    $scope.celdasancho = [1..9]
    $scope.celdasalto = [1..7]
    $scope.mensaje = (text) ->
     alert text
    $scope.prueba = (u,p) ->
     alert "registering user..."+u+"with password..."+p
    $scope.mostrar = 'algo'
    $scope.desk = ''
    $scope.bandera=$scope.list35
    $scope.clase = "nomarcado"
    $cambiarClase = ->
     if $scope.clase is 'nomarcado'
      $scope.clase = 'marcado'
     else
      $scope.clase = 'nomarcado'
    

     
     

    

    #resourceExample.get (serverResponse) ->
     # if serverResponse.data?   
      	
      	# ... unless var? -->> a no ser que no sea nulo
      	# var? -->> pregunta si es nulo
      
      #alert "#{serverResponse.name} is #{serverResponse.age} years old"
    #, (error) ->
    #  alert error

    

  ]