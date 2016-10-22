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
		while(array.length > 0){
			if(array[0][key] != ultimo){
				ultimo = array[0][key];
				retorno.push(aux);
				aux = [];
				i = 0
			}
			aux.push(array.shift());
		};
		retorno.push(aux);
		return retorno;
	},

	validaData: function(dia, mes, ano){
		if(mes < 1 || mes > 12){
			return false;
		}else if(mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12){
			if(dia < 1 || dia > 31){
				return false
			}
		}else{
			if(dia < 1 || dia > 30){
				return false
			}
		}
		return true;
	},

	validaLista: function(valor, lista){
		return (lista.search(valor) > -1);
	}
}