'use strict'

define ['directives'], (directives) ->
  directives.directive 'board', () ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      contextoTablero = element[0].getContext("2d")

      scope.dibujarTablero = (x,y) =>
        #$scope.tablero= document.getElementById("tablero")
        #contextoTablero = tablero.getContext("2d")
        #posicion=[0][0]
        contextoTablero.translate(20, 20)
        contextoTablero.fillStyle = "#999"
        contextoTablero.fillRect 4, 4, alto=300, ancho=300
        #contextoTab.fillStyle = "#999"
        #contextoTab.fillRect 4 * x, 4 * y, x, y
        #contextoTab.fillStyle = "#999"
        #contextoTab.fillRect 4 * x + 1, 4 * y + 1, x - 2, y - 2
        yi = 0.1
        while yi < alto
          xi = 0.1
          contextoTablero.moveTo yi*30, 300
          contextoTablero.lineTo yi*30, 0
          #posicion[yi][0]
          while xi < ancho
            contextoTablero.moveTo 0, xi*30
            contextoTablero.lineTo 300, xi*30
            #contextoTablero.fillStyle = "#999"
            #contextoTablero.fillRect 30, 30, 300, 300
            #posicion[yi][xi]
            xi++
          yi++
        for i  in [1..10]
          text=i
          contextoTablero.fillStyle = '#000'
          contextoTablero.fillText(text, -15 + i*30, -5)
          contextoTablero.fillText(text, -10, -10 + i * 30)
      #contextoTablero.moveTo i*30, 0
      #contextoTablero.lineTo i*30, 300
      #contextoTablero.moveTo 0, i*30
      #contextoTablero.lineTo 300, i*30

        contextoTablero.strokeStyle = "#eee"  #color de la tinta
        contextoTablero.stroke()  #poniendo la tinta a lo dibujado

      scope.dibujarTablero attrs.x, attrs.y

      scope.lanzarBomba = (x,y) =>
        alert ('bombardeado..')
        #tablero= document.getElementById("tablero")
        #contextoTablero = tablero.getContext("2d")
        contextoTablero.font = 'bold 20px sans-serif'
        contextoTablero.fillStyle = '#000'
        contextoTablero.fillText 'X', x*30-18, y*30-5
        contextoTablero.strokeStyle = "#000"  #color de la tinta
        #contextoTablero.stroke()  #poniendo la tinta a lo dibujado
      scope.lanzarBomba attrs.x, attrs.y

