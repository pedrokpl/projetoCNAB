'use strict';

app.controller('DadoCabecalhoController',['$scope', '$rootScope', '$http', '$location', '$routeParams', function($scope, $rootScope, $http, $location, $routeParams){
	this.dadoCabecalho = {};
	this.dadoCabecalho.formatacao = $routeParams.id;
	$scope.dadosCabecalho = [];

	$http.get('/formatacao/' + $routeParams.id).success(function(resp){
		$scope.dadosCabecalho = resp.dadosCabecalho;
	});

	this.criar = function(){
		$http.post('/dadoCabecalho/create', this.dadoCabecalho).success(function(resp){
			console.log('Criado!');
			$http.get('/formatacao/' + $routeParams.id).success(function(resp){
				$scope.dadosCabecalho = resp.dadosCabecalho;
			});
		});
	};

	this.editar = function(id){
		$http.put('/dadoCabecalho/' + id, $scope.dadoCabecalho).success(function(resp){
			console.log('Editado!');
			$location.path('/listadadoscabecalho');
		});
	};

	this.remover = function(id){
		$http.delete('/dadoCabecalho/' + id).success(function (resp){
			console.log('apagado');
			$scope.dadosCabecalho.splice($scope.dadosCabecalho.indexOf(resp), 1);
		});
	};
}]);

app.controller('DadoCabecalhoInsertController', ['$http', '$location', '$routeParams', function($http, $location, $routeParams){
	this.dadoCabecalho = {};
	this.dadoCabecalho.formatacao = $routeParams.id;
	this.criar = function(){
		$http.post('/dadoCabecalho/create', this.dadoCabecalho).success(function(resp){
			console.log('Criado!');
		});
	};
}]);

app.controller('DadoCabecalhoEditaController', ['$http', '$routeParams', '$scope', '$location', function($http, $routeParams, $scope, $location){
	$scope.dadoCabecalho = {};

	$http.get('/dadoCabecalho/'+ $routeParams.id).success(function(resp){
		$scope.dadoCabecalho = resp;
	}).error(function(erro){
		console.log(erro);
	});

	this.editar = function(id){
		$http.put('/dadoCabecalho/' + id, $scope.dadoCabecalho).success(function(resp){
			console.log('Editado!');
			$location.path('/listadadoscabecalho');
		});
	};
}]);
