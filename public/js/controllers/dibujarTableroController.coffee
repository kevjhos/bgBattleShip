define ['controllers', 'exampleResource', 'ejemDirectiva'], (controllers) -> #es el modulo principal de controladores donde estan todos los controladores
  controllers.controller 'tableController', ['$scope', 'resourceExample', ($scope, resourceExample)->

    $scope.hola='Dibujando Tablero'
    #$scope.list100 = exampleServices.variable1(2) 'exampleService', exampleServices
    $scope.list11 = {}
    $scope.list12 = {}
    $scope.list13 = {}
    $scope.list14 = {}
    $scope.list15 = {}
    $scope.list16 = {}
    $scope.list17 = {}
    $scope.list18 = {}
    $scope.list19 = {}
    $scope.list20 = {}
    $scope.list21 = {}
    $scope.list22 = {}
    $scope.list23 = {}
    $scope.list24 = {}
    $scope.list25 = {}
    $scope.list34 = {}
    $scope.list35 = {}
    $scope.usuario
    $scope.password
    $scope.celdasancho = [1..9]
    $scope.celdasalto = [1..7]
    $scope.mensaje = (text) ->
     alert text
    $scope.prueba = (u,p) ->
    # alert "registering user..."+u+"with password..."+p
<<<<<<< HEAD
  ]
=======
    $scope.mostrar = 'algo'
    $scope.desk = ''
    $scope.variable_cambiar=true

    

     
     

    

    #resourceExample.get (serverResponse) ->
     # if serverResponse.data?   
      	
      	# ... unless var? -->> a no ser que no sea nulo
      	# var? -->> pregunta si es nulo
      
      #alert "#{serverResponse.name} is #{serverResponse.age} years old"
    #, (error) ->
    #  alert error

    

  ]
>>>>>>> develop
