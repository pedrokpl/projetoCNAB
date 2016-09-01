'use strict';

app.controller('ValidaController',['$scope', '$rootScope', '$http', '$location', '$routeParams', function($scope, $rootScope, $http, $location, $routeParams){
	$scope.this = this;
	$scope.bancos = [];
	$scope.banco = {};
	$scope.formatacoes = [];
	$scope.formatacao = {};
	$scope.valida = {};

	$http.get('/banco/').success(function(resp){
		$scope.bancos = resp;
	});

	this.carregaFormatacoes = function(){
		if($scope.this.banco != null){
			$scope.this.formatacoes = $scope.this.banco.formatacoes;
			console.log($scope.this.formatacoes);
		}
	}

	this.validar = function(){
		$http.post('/validador/validar', this.valida).success(function(resp){
			console.log('Enviado!');
			for (var i = 0; i < resp.length; i++) {
				console.log(resp[i]);
			}
		});
	};
}]);
