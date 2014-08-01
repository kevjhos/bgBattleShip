'use strict';
define(["angular", "css!generalStyle", "ngRoute", "ngResource", "controllers", "directives", "services", "ngDragDrop", "dibujarTableroController"], function(angular) {
  var battleShipsApp;
  battleShipsApp = angular.module("battleShipsApp", ["ngRoute", "ngResource", "battleShipsControllers", "battleShipsDirectives", "battleShipsServices", "ngDragDrop"]);
  battleShipsApp.config([
    "$routeProvider", function($routeProvider) {
      return $routeProvider.when("/", {
        templateUrl: "main.html"
      }).otherwise({
        redirectTo: "/main.html"
      });
    }
  ]);
  return battleShipsApp;
});
