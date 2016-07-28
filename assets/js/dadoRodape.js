'use strict';

app.controller('DadoRodapeController',['$scope', '$rootScope', '$http', '$location', '$routeParams', function($scope, $rootScope, $http, $location, $routeParams){
	$scope.thisDadoRodape = this;
	this.dadoRodape = {};
	this.dadoRodape.formatacao = $routeParams.id;
	$scope.dadosRodape = [];

	$http.get('/formatacao/' + $routeParams.id).success(function(resp){
		$scope.dadosRodape = resp.dadosRodape;
	});

	this.criar = function(){
		if($scope.thisDadoRodape.dadoRodape.id == null){
			$http.post('/dadoRodape/create', this.dadoRodape).success(function(resp){
				console.log('Criado!');
				$scope.dadosRodape.push(resp);
			});
		}else{
			$http.put('/dadoRodape/' + this.dadoRodape.id, this.dadoRodape).success(function(resp){
				console.log('Editado!');
			});
		}
		$scope.thisDadoRodape.dadoRodape = {};
		this.dadoRodape.formatacao = $routeParams.id;
	};

	this.editar = function(id){
		$http.put('/dadoRodape/' + id, $scope.dadoRodape).success(function(resp){
			console.log('Editado!');
			$scope.thisDadoRodape.dadoRodape = {};
			this.dadoRodape.formatacao = $routeParams.id;
		});
	};

	this.remover = function(id){
		$http.delete('/dadoRodape/' + id).success(function (resp){
			console.log('apagado');
			$scope.dadosRodape.splice($scope.dadosRodape.indexOf(resp), 1);
		});
	};
	
	this.carregar = function (dadoRodape){
		$scope.thisDadoRodape.dadoRodape = dadoRodape;
	}
}]);
