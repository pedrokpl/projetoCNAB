CnabApp.service('CnabAppService', function($http, $q){
return{
	'valida': function(){
		var defer = $q.defer;
		$http.get('/validador/valida').success(function(resp){
			defer.resolve(resp);
		}).error(function(err){
			defer.reject(err);
		});
		return defer.promise;
	}
}});