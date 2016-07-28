'use strict';

app.controller('DadoCabecalhoController',['$scope', '$rootScope', '$http', '$location', '$routeParams', function($scope, $rootScope, $http, $location, $routeParams){
	$scope.thisDadoCabecalho = this;
	this.dadoCabecalho = {};
	this.dadoCabecalho.formatacao = $routeParams.id;
	$scope.dadosCabecalho = [];

	$http.get('/formatacao/' + $routeParams.id).success(function(resp){
		$scope.dadosCabecalho = resp.dadosCabecalho;
	});

	this.criar = function(){
		if($scope.thisDadoCabecalho.dadoCabecalho.id == null){
			$http.post('/dadoCabecalho/create', this.dadoCabecalho).success(function(resp){
				console.log('Criado!');
				$scope.dadosCabecalho.push(resp);
			});
		}else{
			$http.put('/dadoCabecalho/' + this.dadoCabecalho.id, this.dadoCabecalho).success(function(resp){
				console.log('Editado!');
			});
		}
		$scope.thisDadoCabecalho.dadoCabecalho = {};
		this.dadoCabecalho.formatacao = $routeParams.id;
	};

	this.editar = function(id){
		$http.put('/dadoCabecalho/' + id, $scope.dadoCabecalho).success(function(resp){
			console.log('Editado!');
			$scope.thisDadoCabecalho.dadoCabecalho = {};
		});
	};

	this.remover = function(id){
		$http.delete('/dadoCabecalho/' + id).success(function (resp){
			console.log('apagado');
			$scope.dadosCabecalho.splice($scope.dadosCabecalho.indexOf(resp), 1);
		});
	};
	
	this.carregar = function (dadoCabecalho){
		$scope.thisDadoCabecalho.dadoCabecalho = dadoCabecalho;
	}
}]);
