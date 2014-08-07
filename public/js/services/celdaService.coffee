define ['services'], (services) ->
  services.factory 'serviceClassCelda', ['$resource', ($resource) ->
    class Celda
    	@libre = true
    	@disparada = false

    	constructor: (x,y) ->
        	@posx=x
        	@posy=y
        	@libre
        	@disparada
        	@vecinas = []

      	getEstado: () ->
        	@libre
        addVecinoOcupada: (sizeBarco) ->
        	switch sizeBarco
        	 when '4'
        	  for i in [2..4]
        	  	vecinas.push(@posx+'i')
        	 when '3'
        	  for i in [2..3]
        	  	vecinas.push(@posx+'i')
        	 when '2'
        	  	vecinas.push(@posx+''+@posx+1)
        	 else 
        	   console.log('sin vecinas')
      	setLibre: (status) ->
      		@libre = status



  ]