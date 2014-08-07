define ['controllers', 'generarResource'], (controllers) ->
  controllers.controller 'generar', ['$scope', 'resourceGenerar', ($scope, resourceGenerar) ->

    tipoNaves = [["Mina",2,4],["Fragata",3,4],["Cruzer",4,2],["Acorazado",5,1]]
    celdas_x=10
    celdas_y=10
    configurarJugador = (ispc) ->
      cuadro = []
      y = 0
      while y < celdas_x
        cuadro[y] = []
        x = 0
        while x < celdas_x
          cuadro[y][x] = [100,-1,0]
          ++x
        ++y
      num_nave = 0
      s = tipoNaves.length - 1
      while s >= 0
        i = 0
        while i < tipoNaves[s][2]
          d = Math.floor(Math.random() * 2)
          len = tipoNaves[s][1]
          lx = celdas_x
          ly = celdas_y
          dx = 0
          dy = 0
          if d is 0
            lx = celdas_x - len
            dx = 1
          else
            ly = celdas_y - len
            dy = 1

          loop
            y = Math.floor(Math.random() * ly)
            x = Math.floor(Math.random() * lx)
            cx = x
            cy = y
            ok = true
            j = 0
            while j < len
              if cuadro[cy][cx][0] < 100
                ok = false
                break
            cx += dx
            cy += dy
            ++j
          break unless not ok
          cx = x
          cy = y
          j = 0
          while j < len
            cuadro[cy][cx][0] = nave[d][s][j]
            cuadro[cy][cx][1] = num_nave
            cuadro[cy][cx][2] = muerte[d][s][j]
            cx += dx
            cy += dy
            ++j
            if ispc
              naves_jugador_2[num_nave] = [s,tipoNaves[s][1]]
              vidas_jugador_2++
            else
              naves_jugador_1[num_nave] = [s,tipoNaves[s][1]]
              vidas_jugador_1++

            num_nave++
        ++i
      --s
      cuadro
  ]