module.exports = {

	formataArquivo: function (options){
		var retorno = [];
		var formatacao = options.formatacao;
		var arquivo = options.arquivo;
		for(var i = 0; i < formatacao.dadosCabecalho.length; i++){
			var inicio = formatacao.dadosCabecalho[i].caracterInicial;
			var fim = formatacao.dadosCabecalho[i].caracterFinal;
			console.log(inicio);
			console.log(fim);
			retorno[i] = arquivo.substring(inicio, fim);
		}
		return retorno;
	}
};
