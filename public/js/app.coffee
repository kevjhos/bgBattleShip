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
 "addUserController"
 "generarController"
 
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

  battleShipsApp.config [
    "$routeProvider"
  , ($routeProvider) ->
      $routeProvider.when("/home",
        templateUrl: "home.html"
      ).otherwise
        redirectTo: "/main.html"
  ]

  battleShipsApp.config [
    "$routeProvider"
  , ($routeProvider) ->
      $routeProvider.when("/admin",
        templateUrl: "admin.html"
      ).otherwise
        redirectTo: "/main.html"
  ]

  battleShipsApp.config [
    "$routeProvider"
  , ($routeProvider) ->
      $routeProvider.when("/login",
        templateUrl: "login.html"
      ).otherwise
        redirectTo: "/main.html"
  ]

  battleShipsApp.config [
    "$routeProvider"
  , ($routeProvider) ->
      $routeProvider.when("/adduser",
        templateUrl: "adduser.html"
      ).otherwise
        redirectTo: "/main.html"
  ]

  battleShipsApp
