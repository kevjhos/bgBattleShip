require.config({
  paths: {
    angular: 'lib/angular',
    jquery: 'lib/jquery-2.0.3.min',
    bootstrap: 'lib/bootstrap.min',
    jqueryUI: 'lib/jquery-ui.min',
    ngRoute: 'lib/angular-route',
    ngResource: 'lib/angular-resource',
    ngDragDrop: 'lib/angular-dragdrop.min',
    app: 'app',
    controllers: 'controllers/controllers',
    directives: 'directives/directives',
    services: 'services/services',
    exampleController: 'controllers/persons-controller',
    dibujarTableroController: 'controllers/dibujarTableroController',
    exampleService: 'services/example-service',
    exampleResource: 'services/example-resource',
    exampleDirective: 'directives/example-directive',
    boardDirective: 'directives/board-directive',
    generalStyle: '../styles/index',
    bootstrapStyle: '../styles/bootstrap.min'
  },
  shim: {
    angular: {
      deps: ['jquery'],
      exports: 'angular'
    },
    jqueryUI: {
      deps: ['jquery']
    },
    ngRoute: {
      deps: ['angular']
    },
    ngResource: {
      deps: ['angular']
    },
    ngDragDrop: {
      deps: ['angular', 'jqueryUI']
    },
    bootstrap: {
      deps: ['jquery'],
      exports: 'bootstrap'
    }
  },
  map: {
    '*': {
      'css': 'lib/css.min'
    }
  }
});

require(['angular', 'app', 'css!bootstrapStyle', 'bootstrap'], function(angular, app) {
  return angular.bootstrap(document, [app.name]);
});
