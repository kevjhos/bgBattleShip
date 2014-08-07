'use strict'
define ['directives'], (directives) ->
  directives.directive 'ejemDirectiva', () ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.test = () ->
       switch attrs.tipo
        when '12'
         scope.desk='celda 12'
        when '22'
         scope.desk='celda 22'
       



         #element.attribute
         
      	

            
      		
      		
      	
