define ['services'], (services) ->
  services.factory 'serviceClassTabla', ['$resource', ($resource) ->
    class Tabla
      constructor: (tamx, tamy) ->
        @xsize = tamx
        @ysize = tamy
        @celdas = @dibujarBoard(@xsize, @ysize)
        @barcos = []

      getSizex: ->
        @xsize
      getSizey:->
        @ysize 
      setSizex: (x)->
        @xsize = x 
      setSizey: (y)->
        @ysize = y
      agregarBarco: (barco)->
        @barcos.push(barco)

      maquetarBoard: (x, y) ->
        table = new Array(x)
        for row in table
          row = new Array(y)
          for espacio in fila
            espacio = new serviceClassCelda(row,espacio)
        return table

  ]