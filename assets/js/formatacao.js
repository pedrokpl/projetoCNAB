'use strict';

app.controller('FormatacaoController',['$scope', '$rootScope', '$http', '$location', function($scope, $rootScope, $http, $location){
	$scope.thisFormatacao = this;
	this.formatacao = {};
	$scope.formatacoes = [];
	
	$http.get('/formatacao/').success(function(resp){
		$scope.formatacoes = resp;
	});

	this.buscar = function(){
		$http.get('/formatacao/').success(function(resp){
			$scope.formatacoes = resp;
		});
	}

	this.remover = function(id){
		$http.delete('/formatacao/' + id).success(function (resp){
			console.log('apagado');
			$scope.thisFormatacao.buscar();
		});
	};
}]);

app.controller('FormatacaoInsertController', ['$http', '$location', function($http, $location){
	this.formatacao = {};
	this.criar = function(){
		$http.post('/formatacao/create', this.formatacao).success(function(resp){
			console.log('Criado!');
			$location.path('/listaformatacoes');
		});
	};
}]);

app.controller('FormatacaoEditaController', ['$http', '$routeParams', '$scope', '$location', function($http, $routeParams, $scope, $location){
	$scope.formatacao = {};
	
	$http.get('/formatacao/'+ $routeParams.id).success(function(resp){
		$scope.formatacao = resp;
	}).error(function(erro){
		console.log(erro);
	});

	this.editar = function(id){
		delete $scope.formatacao.dadosCabecalho;
		delete $scope.formatacao.dadosRodape;
		delete $scope.formatacao.dadosDocumento;
		$http.put('/formatacao/' + id, $scope.formatacao).success(function(resp){
			console.log('Editado!');
			$location.path('/listaformatacoes');
		});
	};

	this.configurar = function(id){
		$location.path('/configuraFormatacao/' + id);
	};
}]);
