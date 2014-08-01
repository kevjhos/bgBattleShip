define ['controllers', 'exampleResource', 'boardDirective'], (controllers) -> #es el modulo principal de controladores donde estan todos los controladores
  controllers.controller 'tableController', ['$scope', 'resourceExample', ($scope, resourceExample)->

    $scope.hola='Dibujando Tablero'
    $scope.list1 = {title: 'Barquito1'}
    $scope.list2 = {title: 'Barquito2'}
    $scope.list3 = {title: 'Barquito3'}
    $scope.list4 = {title: 'Barquito4'}
    $scope.list5 = {title: 'Barquito5'}
    $scope.list6 = {title: 'Barquito6'}
    $scope.list7 = {}
    $scope.highlightRow = ->
     console.log "in highlight row!"
    

    #resourceExample.get (serverResponse) ->
     # if serverResponse.data?   
      	
      	# ... unless var? -->> a no ser que no sea nulo
      	# var? -->> pregunta si es nulo
      
      #alert "#{serverResponse.name} is #{serverResponse.age} years old"
    #, (error) ->
    #  alert error

    

  ]