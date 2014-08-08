define ['controllers', 'barcoDirectiva','datosAlias'], (controllers) ->
  controllers.controller 'barcoController', ['$scope', 'datos', ($scope, datos) ->
    
    $scope.list1 = {id:'1',title: 'BrcA',tipo:'A', piezas:'4',imagen: "images/barco4.png"}
    $scope.list2 = {id:'2',title: 'BrcB',tipo:'B', piezas:'3',imagen: "images/barco3red.png"}
    $scope.list3 = {id:'3',title: 'BrcB',tipo:'B', piezas:'3',imagen: "images/barco3green.png"}
    $scope.list4 = {id:'4',title: 'BrcC',tipo:'C', piezas:'2',imagen: "images/barco2orange.png"}
    $scope.list5 = {id:'5',title: 'BrcC',tipo:'C', piezas:'2',imagen: "images/barco2blue.png"}
    $scope.list6 = {id:'6',title: 'BrcC',tipo:'C', piezas:'2',imagen: "images/barco2green.png"}
    $scope.list7 = {id:'7',title: 'BrcD',tipo:'D', piezas:'1',imagen: "images/barco1blue.png"}
    $scope.list8 = {id:'8',title: 'BrcD',tipo:'D', piezas:'1',imagen: "images/barco1green.png"}
    $scope.list9 = {id:'9',title: 'BrcD',tipo:'D', piezas:'1',imagen: "images/barco1orange.png"}
    $scope.list10 = {id:'10',title: 'BrcD',tipo:'D', piezas:'1',imagen: "images/barco1red.png"}
    $scope.ubicacion = datos.ubicacion
    $scope.guardarP = (mensaje) ->
     alert mensaje	
    $scope.guardarPos = (posx, posy) ->
     datos.anclaX = posx
     datos.anclaY = posy
    $scope.sizeBarco = (size) ->
     datos.shipSize = size
     switch size
        when '1'
         alert 'barco size'+size
        when '2'
         alert 'barco size'+size 
        when '3'
         alert 'barco size'+size 
        when '4'
         alert 'barco size'+size 
        else
         alert 'ninguno'
  ]
 	###$scope.guardarBarco2 = (lista) ->
     alert lista.piezas
 	$scope.guardarBarco3 = (lista) ->
     alert lista.piezas 
 	$scope.guardarBarco4 = (lista) ->
     alert lista.piezas 
 	$scope.guardarBarco5 = (lista) ->
     alert lista.piezas ###



  