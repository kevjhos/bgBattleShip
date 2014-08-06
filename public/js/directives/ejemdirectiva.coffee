'use strict'
class Celda
 celdaActiva
 guardarTipo = (x) ->
  alert x 

define ['directives'], (directives) ->
  directives.directive 'ejemDirectiva', () ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.test = () ->
      	if attrs.tipo is 'cel12'
      	 guardarTipo 'bar1'

         #element.attribute
         
      	

            
      		
      		
      	
