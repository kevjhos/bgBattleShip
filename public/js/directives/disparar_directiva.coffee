
'use strict'
define ['directives'], (directives) ->
  directives.directive 'dispararDirectiva', ()->
    restrict: 'AE'
    link: (scope, element, attrs) ->
      element.bind "click", ->
        scope.boolChangeClass = not scope.boolChangeClass
        scope.$apply()



