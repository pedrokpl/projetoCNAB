'use strict';

var app = angular.module('cnabApp', ['ngRoute']);

app.config(['$routeProvider', '$locationProvider',
  function($routeProvider, $locationProvider) {
    $routeProvider
      .when('/listabancos', {
        templateUrl: '/templates/listabancos.html'
      })
      	.when('/novobanco', {
      		templateUrl: '/templates/novobanco.html'
      	})
        .when('/editabanco/:id', {
          templateUrl: '/templates/editabanco.html'
        })
        .otherwise({
          redirectTo: '/'
        })

    $locationProvider.html5Mode(true);
}])

app.controller('CnabAppController', ['$scope', '$rootScope', function($scope, $rootScope){
	console.log("CnabAppController");
}]);