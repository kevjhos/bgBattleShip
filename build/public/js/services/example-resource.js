'use strict';
define(['services'], function(services) {
  services.factory('resourceExample', [
    '$resource', function($resource) {
      return $resource('http://localhost:3000/people', {}, {});
    }
  ]);
  return services.factory('specificResourceExample', [
    '$resource', function($resource) {
      return $resource('http://localhost:3000/people/:person_id', {
        person_id: '@person_id'
      }, {
        update: {
          method: 'PUT'
        }
      });
    }
  ]);
});
