'use strict'
define ['directives'], (directives) ->
  directives.directive 'ejemDirectiva', ['datos', (datos) ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.test = () ->
        currentElement = element
        auxelem= (parseInt datos.shipSize) - 1
        puntoX= datos.anclaX
        puntoY= datos.anclaY + 1
        datos.ubicacion = attrs.tipo
        #datos.shipSize = 3
        puntero=1
        while auxelem > 0
          tipo = (parseInt attrs.tipo) + puntero
          currentElement = $( "div[tipo= " + tipo + "]" )
          valor = currentElement.attr 'tipo'
          #varY = puntoY + puntero
          if  valor is puntoX+''+puntoY
           currentElement.attr 'estado', 'usado'
           $(currentElement.children()[0]).removeClass 'ng-hide'
           puntero = puntero + 1
           auxelem =  auxelem - 1
           puntoY = puntoY + 1
          else
           puntero = puntero + 1
           auxelem =  auxelem - 1
          
                      
  ]
       



         #element.attribute
         
      	

            
      		
      		
      	
