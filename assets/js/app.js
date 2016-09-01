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
    .when('/listaformatacoes', {
      templateUrl: '/templates/listaformatacoes.html'
    })
    .when('/novaformatacao', {
      templateUrl: '/templates/novaformatacao.html'
    })
    .when('/editaformatacao/:id', {
      templateUrl: '/templates/editaformatacao.html'
    })
    .when('/configuraFormatacao/:id', {
      templateUrl: '/templates/configuraFormatacao.html'
    })
    .when('/valida', {
      templateUrl: '/templates/valida.html'
    })
    .otherwise({
      redirectTo: '/'
    })

    $locationProvider.html5Mode(true);
  }])

app.controller('CnabAppController', ['$scope', '$rootScope', function($scope, $rootScope){
	console.log("CnabAppController");
}]);
