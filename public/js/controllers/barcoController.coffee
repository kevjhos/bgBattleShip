define ['controllers', 'barcoDirectiva','datosAlias'], (controllers) ->
  controllers.controller 'barcoController', ['$scope', 'datos', ($scope, datos) ->
    
    $scope.list1 = {id:'1',title: 'BrcA',tipo:'A', piezas:'4'}
    $scope.list2 = {id:'2',title: 'BrcB',tipo:'B', piezas:'3'}
    $scope.list3 = {id:'3',title: 'BrcB',tipo:'B', piezas:'3'}
    $scope.list4 = {id:'4',title: 'BrcC',tipo:'C', piezas:'2'}
    $scope.list5 = {id:'5',title: 'BrcC',tipo:'C', piezas:'2'}
    $scope.list6 = {id:'6',title: 'BrcC',tipo:'C', piezas:'2'}
    $scope.list7 = {id:'7',title: 'BrcD',tipo:'D', piezas:'1'}
    $scope.list8 = {id:'8',title: 'BrcD',tipo:'D', piezas:'1'}
    $scope.list9 = {id:'9',title: 'BrcD',tipo:'D', piezas:'1'}
    $scope.list10 = {id:'10',title: 'BrcD',tipo:'D', piezas:'1'}
    $scope.guardarBarco = (lista) ->
     datos.shipSize = lista
     switch lista
        when '1'
         alert 'barco size'+lista
        when '2'
         alert 'barco size'+lista 
        when '3'
         alert 'barco size'+lista 
        when '4'
         alert 'barco size'+lista 
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



  