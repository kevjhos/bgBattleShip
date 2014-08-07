'use strict'
define ['directives'], (directives) ->
  directives.directive 'clickdisparo', () ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
        element.bind "click", ->
          scope.boolChangeClass = not scope.boolChangeClass
          scope.$apply()