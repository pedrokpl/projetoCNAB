'use strict';

app.controller('BancoController',['$scope', '$rootScope', '$http', '$location', function($scope, $rootScope, $http, $location){
	this.banco = {};
	$scope.bancos = [];
	
	$http.get('/banco/').success(function(resp){
		$scope.bancos = resp;
	});

	this.remover = function(id){
		$http.delete('/banco/' + id).success(function (resp){
			console.log('apagado');
			$scope.bancos.splice($scope.bancos.indexOf(resp), 1);
		});
	};
}]);

app.controller('BancoInsertController', ['$http', '$location', function($http, $location){
	this.banco = {};
	this.criar = function(){
		$http.post('/banco/create', this.banco).success(function(resp){
			console.log('Criado!');
			$location.path('/listabancos');
		});
	};
}]);

app.controller('BancoEditaController', ['$http', '$routeParams', '$scope', '$location', function($http, $routeParams, $scope, $location){
	$scope.banco = {};
	
	$http.get('/banco/'+ $routeParams.id).success(function(resp){
		$scope.banco = resp;
	}).error(function(erro){
		console.log(erro);
	});

	this.editar = function(id){
		$http.put('/banco/' + id, $scope.banco).success(function(resp){
			console.log('Editado!');
			$location.path('/listabancos');
		});
	};
}]);
