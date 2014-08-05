'use strict'

define ['services'], (services) ->
  services.factory 'resourcePeople', ['$resource', ($resource) -> #factory crea un servicio
    $resource 'http://localhost:3000/people', { person_id: '@person_id'} ,  #descargar ngResourse
      update:  #se extiende el metodo update creandolo aqui
        method: 'PUT'
        params:
          person_id: '@person_id'
  ]

  services.factory 'specificResourcePeople', ['$resource', ($resource) ->
    $resource 'http://localhost:3000/people/:person_id', { person_id: '@id'}, {}
  ]