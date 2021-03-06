require.config
  paths:
  # 3rd party libraries
    angular: 'lib/angular'
    jquery: 'lib/jquery-2.0.3.min'
    bootstrap: 'lib/bootstrap.min'
    jqueryUI: 'lib/jquery-ui.min'

  #Angular libraries
    ngRoute: 'lib/angular-route'
    ngResource: 'lib/angular-resource'
    ngDragDrop: 'lib/angular-dragdrop.min'

  # Angular modules
    app: 'app'
    controllers: 'controllers/controllers'
    directives: 'directives/directives'
    services: 'services/services'

  #Angular controllers
    exampleController: 'controllers/persons-controller'
    dibujarTableroController: 'controllers/dibujarTableroController'
    addUserController: 'controllers/adduser-controller'
    barcoController: 'controllers/barcoController'

  #Angular services
    exampleService: 'services/example-service'
    exampleResource: 'services/example-resource'
    playerService: 'services/players-service'

  #Angular directives
    exampleDirective: 'directives/example-directive'
    boardDirective: 'directives/board-directive'
    ejemDirectiva: 'directives/ejemdirectiva'
    barcoDirectiva: 'directives/barcoDirectiva'


  #CSS styles
    generalStyle: '../styles/index'
    bootstrapStyle: '../styles/bootstrap.min'

  shim:
    angular:
      deps: ['jquery']
      exports: 'angular'
    jqueryUI:
      deps: ['jquery']
    ngRoute:
      deps: ['angular']
    ngResource:
      deps: ['angular']
    ngDragDrop:
      deps: ['angular', 'jqueryUI']
    bootstrap:
      deps: ['jquery']
      exports: 'bootstrap'

  map:
    '*':
      'css': 'lib/css.min'

require [
  'angular'
  'app'
  'css!bootstrapStyle'
  'bootstrap'
], (angular, app) ->
  # Starts manually the Angular application.
  angular.bootstrap document, [app.name]
