'use strict';

var CnabApp = angular.module('CnabApp', ['ngRoute', 'ui.bootstrap']);
CnabApp.config(['routerProvider',
	function($routerProvider){
		$routerProvider.when('/', {
			templateURL: 'templates/index.html',
			controller: 'CnabAppController'
		}).otherwise({
			redirectTo: '/',
			caseInsensitiveMatch: true
		})
]});

CnabApp.controller('CnabAppController', ['$scope', '$rootScope', 'CnabAppService', function($scope, $rootScope, CnabAppService){}
