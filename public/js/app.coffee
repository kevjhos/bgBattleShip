'use strict'

define [
 "angular"
 "css!generalStyle"
 "ngRoute"
 "ngResource"
 "controllers"
 "directives"
 "services"
 "ngDragDrop"
 "dibujarTableroController"
], (angular) ->
  battleShipsApp = angular.module "battleShipsApp", [
    "ngRoute"
    "ngResource"
    "battleShipsControllers"
    "battleShipsDirectives"
    "battleShipsServices"
    "ngDragDrop"
  ]

  # Sets the URL routes for partial views.
  battleShipsApp.config [
    "$routeProvider"
  , ($routeProvider) ->
      $routeProvider.when("/",
        templateUrl: "main.html"
      ).otherwise
        redirectTo: "/main.html"
  ]

  battleShipsApp
