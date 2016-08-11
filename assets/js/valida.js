'use strict';

app.controller('ValidaController',['$scope', '$rootScope', '$http', '$location', '$routeParams', function($scope, $rootScope, $http, $location, $routeParams){
	$scope.bancos = [];
	$scope.formatacoes = [];

	$http.get('/banco/').success(function(resp){
		$scope.bancos = resp;
	});
}]);
