'use strict'
define ['directives'], (directives) ->
  directives.directive 'ejemDirectiva', () ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.test = () ->
       switch attrs.tipo
        when '11'
         scope.desk='celda 11'
        when '22'
         scope.desk='celda 22'
        when '32'
         scope.desk='celda 32'
        when '42'
         scope.desk='celda 42'
       



         #element.attribute
         
      	

            
      		
      		
      	
