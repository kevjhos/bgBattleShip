'use strict'
define ['directives'], (directives) ->
  directives.directive 'clickdisparo', () ->
    restrict: 'AEC'
    link: (scope, element, attrs) ->
      scope.toggleBold = () ->
      scope.element(document).find 'tr'.toggleClass 'bold'