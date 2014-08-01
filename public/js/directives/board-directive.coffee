'use strict'

define ['directives'], (directives) ->
  directives.directive 'board', () ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      contextoTablero = element[0].getContext("2d")

      scope.dibujarTablero = (x,y) =>
        #$scope.tablero= document.getElementById("tablero")
        #contextoTablero = tablero.getContext("2d")
        contextoTablero.fillStyle = "#999"
        contextoTablero.fillRect x, y, 30, 300
        for i  in [1..9]
          contextoTablero.moveTo i*30, 0
          contextoTablero.lineTo i*30, 300
          contextoTablero.moveTo 0, i*30
          contextoTablero.lineTo 300, i*30
        contextoTablero.strokeStyle = "#eee"  #color de la tinta
        contextoTablero.stroke()  #poniendo la tinta a lo dibujado

      scope.dibujarTablero attrs.x, attrs.y

      scope.lanzarBomba = (x,y) =>
        alert ('bombardeado..')
        #tablero= document.getElementById("tablero")
        #contextoTablero = tablero.getContext("2d")
        contextoTablero.font = 'bold 20px sans-serif'
        contextoTablero.fillStyle = '#000'
        contextoTablero.fillText 'x', x*30-21, y*30-11

