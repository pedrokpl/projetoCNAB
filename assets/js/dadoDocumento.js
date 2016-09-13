'use strict';

app.controller('DadoDocumentoController',['$scope', '$rootScope', '$http', '$location', '$routeParams', function($scope, $rootScope, $http, $location, $routeParams){
	$scope.thisDadoDocumento = this;
	this.dadoDocumento = {};
	this.dadoDocumento.formatacao = $routeParams.id;
	$scope.dadosDocumento = [];

	$http.get('/formatacao/' + $routeParams.id).success(function(resp){
		$scope.dadosDocumento = resp.dadosDocumento;
		console.log(resp);
	});

	this.buscar = function(){
		$http.get('/formatacao/' + $routeParams.id).success(function(resp){
			$scope.dadosDocumento = resp.dadosDocumento;
		});
	}

	this.criar = function(){
		if($scope.thisDadoDocumento.dadoDocumento.id == null){
			$http.post('/dadoDocumento/create', this.dadoDocumento).success(function(resp){
				console.log('Criado!');
				$scope.dadosDocumento.push(resp);
			});
		}else{
			$http.put('/dadoDocumento/' + this.dadoDocumento.id, this.dadoDocumento).success(function(resp){
				console.log('Editado!');
			});
		}
		$scope.thisDadoDocumento.dadoDocumento = {};
		this.dadoDocumento.formatacao = $routeParams.id;
	};

	this.editar = function(id){
		$http.put('/dadoDocumento/' + id, $scope.dadoDocumento).success(function(resp){
			console.log('Editado!');
			$scope.thisDadoDocumento.dadoDocumento = {};
			this.dadoDocumento.formatacao = $routeParams.id;
		});
	};

	this.remover = function(id){
		$http.delete('/dadoDocumento/' + id).success(function (resp){
			console.log('apagado');
			$scope.thisDadoDocumento.buscar();
		});
	};
	
	this.carregar = function (dadoDocumento){
		$scope.thisDadoDocumento.dadoDocumento = dadoDocumento;
	}
}]);
