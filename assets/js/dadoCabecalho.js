'use strict';

app.controller('DadoCabecalhoController',['$scope', '$rootScope', '$http', '$location', function($scope, $rootScope, $http, $location){
	this.dadoCabecalho = {};
	$scope.dadosCabecalho = [];
	
	$http.get('/dadoCabecalho/').success(function(resp){
		$scope.dadosCabecalho = resp;
	});

	this.remover = function(id){
		$http.delete('/dadoCabecalho/' + id).success(function (resp){
			console.log('apagado');
			$scope.dadosCabecalho.splice($scope.dadosCabecalho.indexOf(resp), 1);
		});
	};
}]);

app.controller('DadoCabecalhoInsertController', ['$http', '$location', function($http, $location){
	this.dadoCabecalho = {};
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
