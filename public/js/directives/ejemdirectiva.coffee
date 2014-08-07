'use strict'
define ['directives'], (directives) ->
  directives.directive 'ejemDirectiva', ['datos', (datos) ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.test = () ->
        currentElement = element
        datos.shipSize = 3
        puntero=1
        while datos.shipSize > 0
          tipo = (parseInt attrs.tipo) + puntero
          currentElement = $( "div[tipo= " + tipo + "]" )
          aux = '1'
          aux2 = tipo % 10
          valor = currentElement.attr 'tipo'
          if  valor is aux+''+aux2
           currentElement.attr 'estado', 'usado'
           $(currentElement.children()[0]).removeClass 'ng-hide'
           puntero = puntero + 1
           datos.shipSize =  datos.shipSize - 1
          else
           puntero = puntero + 1
           datos.shipSize =  datos.shipSize - 1
          
                      
  ]
       



         #element.attribute
         
      	

            
      		
      		
      	
