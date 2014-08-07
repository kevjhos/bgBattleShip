'use strict'
define ['directives'], (directives) ->
  directives.directive 'barcoDirectiva', () ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.almover = () ->
       switch attrs.barco
        when '1'
         alert 'barco '+scope.list1.title+' de tamanio '+scope.list1.piezas
        when '2'
         alert 'barco '+scope.list2.title+' de tamanio '+scope.list2.piezas
        else
         alert 'ninguno'
      

       
