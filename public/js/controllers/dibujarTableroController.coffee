define ['controllers', 'exampleResource', 'ejemDirectiva'], (controllers) -> #es el modulo principal de controladores donde estan todos los controladores
  controllers.controller 'tableController', ['$scope', 'resourceExample', ($scope, resourceExample)->

    $scope.hola='Dibujando Tablero'
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
    $scope.usuario
    $scope.password
    $scope.mensaje = (text) ->
     alert text
    $scope.prueba = (u,p) ->
     alert "registering user..."+u+"with password..."+p
  ]
