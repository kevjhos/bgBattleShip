'use strict'

define ['directives'], (directives) ->
  directives.directive 'myCustomer', () ->
    restrict: 'AEC'
    template: 'Name: {{customer.name}} Address: {{customer.address}}'
    link: (scope, element, attrs) ->
      element.click ()->
        alert 'hello world'