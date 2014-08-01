'use strict'

define ['services'], (services) ->
  services.factory 'resourceExample', ['$resource', ($resource) ->
    $resource 'http://localhost:3000/people', {} , {}
  ]

  services.factory 'specificResourceExample', ['$resource', ($resource) ->
    $resource 'http://localhost:3000/people/:person_id', { person_id: '@person_id'} ,
      update:
        method: 'PUT'
  ]
