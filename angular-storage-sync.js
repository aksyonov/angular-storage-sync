angular.module('storageSync', [])
  .factory('storageSync', function($rootScope) {
    'use strict';

    function StorageSync(name, valFn, def) {
      if (def === undefined) {
        def = {};
      }
      listeners[name] = $rootScope.$watch(valFn, function(value) {
        if (value !== undefined) {
          localStorage[name] = JSON.stringify(value);
        } else {
          delete localStorage[name];
        }
      }, true);

      return localStorage[name] !== undefined ?
        JSON.parse(localStorage[name]) : def;
    }

    var listeners = {};

    StorageSync.stop = function(name) {
      listeners[name]();
    };

    StorageSync.remove = function(name) {
      delete localStorage[name];
    };

    return StorageSync;
  });
