'use strict';

app.controller('ValidaController',['$scope', '$rootScope', '$http', '$location', '$routeParams', function($scope, $rootScope, $http, $location, $routeParams){
	$scope.this = this;
	$scope.bancos = [];
	$scope.banco = {};
	$scope.formatacoes = [];
	$scope.valida = {};
	$scope.valida.formatacao = {};
	$scope.valida.arquivo = {};
	$scope.retorno = [];

	$http.get('/banco/').success(function(resp){
		$scope.bancos = resp;
	});

	this.carregaFormatacoes = function(){
		if($scope.this.banco != null){
			$scope.formatacoes = $scope.this.banco.formatacoes;
		}
	}

	this.validar = function(){
		$http.get('/formatacao/' + $scope.this.valida.formatacao.id).success(function(resp){
			$scope.this.valida.formatacao = resp;
		});
		$http.post('/validador/validar', this.valida).success(function(resp){
			console.log('Enviado!');
			$scope.retorno = resp;
		});
	};
}]);
