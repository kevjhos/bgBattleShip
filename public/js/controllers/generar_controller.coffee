define ['controllers'], (controllers) ->
  controllers.controller 'generarController', ['$scope',($scope) ->

    #Informacion usada para dibujar naves
    nave =  [[[1,5], [1,2,5], [1,2,3,5], [1,2,3,4,5]], [[6,10], [6,7,10], [6,7,8,10], [6,7,8,9,10]]];

    #Informacion usada para dibujar naves hundidas
    muerte = [[[201,203], [201,202,203], [201,202,202,203], [201,202,202,202,203]], [[204,206], [204,205,206], [204,205,205,206], [204,205,205,205,206]]];

    #Informacion usada para describir naves
    tipoNaves = [["Mina",2,4],["Fragata",3,4],["Cruzer",4,2],["Acorazado",5,1]]
    celdas_x=10
    celdas_y=10

    jugador_1 = []
    jugador_2 = []
    naves_jugador_1 = []
    naves_jugador_2 = []
    vidas_jugador_1 = 0
    vidas_jugador_2 = 0
    bandera_turno=true
    $scope.bandera="franklin"
    #Funcion para precargar todas las imagenes, para evitar demoras durante el juego
    precarga = [];
    precargaImagen = ->
      alert("precargaImagen")
      ids = [1,2,3,4,5,6,7,8,9,10,100,101,102,103,201,202,203,204,205,206]
      window.status = "Precargando imagenes... Espere porfavor"
      i = 0
      while i < ids.length
        img = new Image
        name = "images/batt" + ids[i] + ".gif"
        img.src = name
        precarga[i] = img
        ++i
      window.status = ""

    #Funcion para cambiar la imagen que aparece en un cuadro
    setImagen = (y, x, id, ispc) ->
      if ispc
        jugador_2[y][x][0] = id
        document.images["jug2" + y + "_" + x].src = "../../images/batt" + id + ".gif"
      else
        jugador_1[y][x][0] = id
        document.images["jug1" + y + "_" + x].src = "../../images/batt" + id + ".gif"

    #Funcion para insertar codigo HTML para un cuadro
    mostrarCelda = (ispc) ->
      alert("mostrarCelda")
      y = 0
      while y < celdas_y
        x = 0
        while x < celdas_x
          if ispc
            document.write '<a href="javascript:cuadroClick(' + y + ',' + x + ');"><img name="jug2' + y + '_' + x + '" src="../../images/batt100.gif" width=40 height=40></a>'
          else
            document.write '<a href="javascript:void(0);"><img name="jug1' + y + '_' + x + '" src="../../images/batt' + jugador_1[y][x][0] + '.gif" width=40 height=40></a>'
          ++x
        document.write '<br>'
      ++y


    #Manejador para hacer clic en un cuadro
    cuadroClick = (y, x) ->
      alert("cuadroClick")
      if bandera_turno
        if jugador_2[y][x][0] < 100
          setImagen y, x, 103, true
          num_nave = jugador_2[y][x][1]
          if --naves_jugador_2[num_nave][1] is 0
            hundirNave jugador_2, num_nave, true
            alert "Hundiste un " + tipoNaves[naves_jugador_2[num_nave][0]][0] + "!"
            actualizarEstado()
            if --vidas_jugador_2 is 0
              alert "Ganaste! Refresca tu navegador \n" + "para jugar otro juego."
              bandera_turno = false

          desplazarOrdenador()  if bandera_turno
        else if jugador_2[y][x][0] is 100
          setImagen y, x, 102, true
          desplazarOrdenador()


    #Funcion para que jugador_2 se mueva. Notar que jugador_2 no hace trampa.
    desplazarOrdenador = ->
      alert(desplazarOrdenador)
      alert("desplazarOrdenador")

      selected = false
      pass = 0
      #Hacer dos pasos durante el modo 'Tirar a matar'
      while pass < 2
        y = 0
        while y < celdas_y and not selected
          x = 0
          while x < celdas_x and not selected
            # Explosion mostrada en esta posicion
            if jugador_1[y][x][0] is 103
              sx = x
              sy = y
              nup = (y > 0 and jugador_1[y - 1][x][0] <= 100)
              ndn = (y < celdas_y - 1 and jugador_1[y + 1][x][0] <= 100)
              nlt = (x > 0 and jugador_1[y][x - 1][0] <= 100)
              nrt = (x < celdas_x - 1 and jugador_1[y][x + 1][0] <= 100)
              if pass is 0
                # En la primera pasada para ver 2 explosiones
                # en una fila - tiro siguiente sera en linea
                yup = (y > 0 and jugador_1[y - 1][x][0] is 103)
                ydn = (y < celdas_y - 1 and jugador_1[y + 1][x][0] is 103)
                ylt = (x > 0 and jugador_1[y][x - 1][0] is 103)
                yrt = (x < celdas_x - 1 and jugador_1[y][x + 1][0] is 103)
                if nlt and yrt
                  sx = x - 1
                  selected = true
                else if nrt and ylt
                  sx = x + 1
                  selected = true
                else if nup and ydn
                  sy = y - 1
                  selected = true
                else if ndn and yup
                  sy = y + 1
                  selected = true
              else
                # En la segunda pasada para ver una sola explosion -
                # golpear en al rededor
                if nlt
                  sx = x - 1
                  selected = true
                else if nrt
                  sx = x + 1
                  selected = true
                else if nup
                  sy = y - 1
                  selected = true
                else if ndn
                  sy = y + 1
                  selected = true
            ++x
          ++y
        ++pass
      unless selected
        # No encontramos nada en el modo 'tirar a matar' por lo que solo
        # se toma bombas en un patron de tablero de damas para una maxima eficiencia y
        # nunca dos veces en el mismo lugar
        while jugador_1[sy][sx][0] > 100
          sy = Math.floor(Math.random() * celdas_y)
          sx = Math.floor(Math.random() * celdas_x / 2) * 2 + sy % 2
      if jugador_1[sy][sx][0] < 100
        # Golpea algo
        setImagen sy, sx, 103, false
        num_nave = jugador_1[sy][sx][1]
        if --naves_jugador_1[num_nave][1] is 0
          hundirNave jugador_1, num_nave, false
          alert "Te hundieron un " + tipoNaves[naves_jugador_1[num_nave][0]][0] + "!"
          if --vidas_jugador_1 is 0
            descubrirEnemigo()
            alert "Perdiste...! Refresca tu navegador \n" + "para jugar otro juego."
            bandera_turno = false
      else
        # Ha fallado
        setImagen sy, sx, 102, false


    #Cuando se golpea una nave, mostrar usando grafico cambiado
    hundirNave = (grid, num_nave, ispc) ->
      alert("hundirNave")
      y = 0
      while y < celdas_x
        x = 0
        while x < celdas_x
          if grid[y][x][1] is num_nave
            if ispc
              setImagen y, x, jugador_2[y][x][2], true
            else
              setImagen y, x, jugador_1[y][x][2], false
          ++x
        ++y


    # Muestra ubicacion de todas las naves del jugador_2  - cuando jugador_1 ha perdido
    descubrirEnemigo = ->
      alert("descubrirEnemigo")
      y = 0
      while y < celdas_x
        x = 0
        while x < celdas_x
          if jugador_2[y][x][0] is 103
            setImagen y, x, jugador_2[y][x][2], true
          else setImagen y, x, jugador_2[y][x][0], true  if jugador_2[y][x][0] < 100
          ++x
        ++y

    # Mostrar el numero de naves que jugador_2 ha abandonado
    actualizarEstado = ->
      alert("actualizarEstado")
      f = false
      s = "jugador_2 tiene "
      i = 0
      while i < naves_jugador_2.length
        if naves_jugador_2[i][1] > 0
          if f
            s = s + ", "
          else
            f = true
          s = s + tipoNaves[naves_jugador_2[i][0]][0]
        ++i
      s = s + "Nada a la izquierda, Gracias a ti!"  unless f
      statusmsg = s
      window.status = statusmsg

    #Mostrar estado
    setStatus = ->
      window.status = statusmsg


    #Funcion para colocar las naves en las celdas
    configurarJugador = (ispc) ->
      alert("configurarJugador")
      cuadro = []
      y = 0
      while y < celdas_x
        #alert("entra1")
        cuadro[y] = []
        x = 0
        while x < celdas_x
          #alert("entra2")
          cuadro[y][x] = [100,-1,0]
          ++x
        ++y
      num_nave = 0
      s = tipoNaves.length - 1
      while s >= 0
        #alert("entra3")
        i = 0
        while i < tipoNaves[s][2]
          #alert("entra4")
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

          while not ok
            #alert("entra5")
            y = Math.floor(Math.random() * ly)
            x = Math.floor(Math.random() * lx)
            #alert("y "+y+" x "+x)
            cx = x
            cy = y
            cont = 0
            #alert(len)
            ok = true
            while cont < len
              #alert("entra6")
              if cuadro[cy][cx][0] < 100
                #alert("entra ok")
                ok = false
                break
              cx += dx
              cy += dy
              ++cont
            #alert("sale 6")
          cx = x
          cy = y
          j = 0
          while j < len
            #alert("entra7")
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

    #Inicio de Juego!
    $scope.empezarJuego = ->
      alert("empezando...")
      precargaImagen()
      jugador_1 = configurarJugador(false)
      alert("pasa 11111111")
      jugador_2 = configurarJugador(true)
      alert("pasa 22222222")
      document.write '<center><table><tr><td align="center"><p class="heading">JUGADOR 2</p></td>' + '<td align="center"><p class="heading">JUGADOR 1</p></td></tr>' + '<tr><td><div>'
      mostrarCelda true
      document.write '</div></td><td><div>'
      mostrarCelda false
      document.write '</div></td></tr><tr>' + '<td align="center">Campo Contrincante</td><td align="center">Su Campo</td></tr></table></center>'
      actualizarEstado()
      setInterval 'setStatus();', 5000

  ]