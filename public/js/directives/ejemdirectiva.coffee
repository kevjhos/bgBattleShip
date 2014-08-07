'use strict'
class Celda
 @celdaActiva = 0
 guardarTipo = (x) ->
  @celdaActiva = x;

define ['directives'], (directives) ->
  directives.directive 'ejemDirectiva', () ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.test = () ->
      	if attrs.tipo is 'bar1'
      	 guardarTipo 'bar1'
      	

            
      		
      		
      	
