module.exports = {

	sortByKey: function(array, key) {
		return array.sort(function(a, b) {
			var x = a[key]; var y = b[key];
			return ((x < y) ? -1 : ((x > y) ? 1 : 0));
		});
	},

	sliceByKey: function(array, key) {
		var retorno = [];
		var aux = [];
		var ultimo = array[0][key];
		aux.push(array.shift());
		var i = 0;
		do{
			if(array[0][key] != ultimo){
				ultimo = array[0][key];
				retorno.push(aux);
				aux = [];
				i = 0
			}
			aux.push(array.shift());
		}while(array.length > 0);
		retorno.push(aux);
		return retorno;
	}
}