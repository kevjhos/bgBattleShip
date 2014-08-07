define ['services'], (services) ->
  services.factory 'serviceClassBarco', ['$resource', ($resource) ->
   class Barco
	  constructor: (id, size) ->
	   @id= id
	   @size = size
	   @modePos = true #true para horizontal por default y false para vertical
	  getId: ->
	   @id
	  getMode: ->
	   @mode
	  getSize: ->
	   @mode  
	  setSize: (nsize) ->
	   @size = nsize_value
	  setModePos: (nmode) ->
       @modePos = nmode
   ]