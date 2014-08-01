'use strict';
define(['directives'], function(directives) {
  return directives.directive('myCustomer', function() {
    return {
      restrict: 'AEC',
      template: 'Name: {{customer.name}} Address: {{customer.address}}',
      link: function(scope, element, attrs) {
        return element.click(function() {
          return alert('hello world');
        });
      }
    };
  });
});
