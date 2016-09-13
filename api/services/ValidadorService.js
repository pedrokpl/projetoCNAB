module.exports = {

	formataArquivo: function (options){
		var retorno = [];
		var formatacao = options.formatacao;
		var linhas = options.arquivo.split("\n");

		//Montar o cabeçalho
		for(var l = 0; l < formatacao.quantidadeLinhasCabecalho; l++){ //Iterar sobre as linhas que formam o cabecalho do arquivo
			var arrayLinha = [];
			for(var i = 0; i < formatacao.dadosCabecalho.length; i++){//Iterar sobre os dados presentes em cada linha
				var inicio = formatacao.dadosCabecalho[i].caracterInicial - 1;
				var fim = formatacao.dadosCabecalho[i].caracterFinal;
				var campo = new Object();//Armazena os dados de cada campo
				campo.nome = formatacao.dadosCabecalho[i].nome;
				campo.valor = linhas[l].substring(inicio, fim);
				campo.valido = true;
				campo.caracteres = (inicio + 1) + " ao " + fim;
				arrayLinha[i] = campo;
			}
			var linhaRetornada = new Object();
			linhaRetornada.linha = l;
			linhaRetornada.campos = arrayLinha;
			retorno[l] = linhaRetornada;
		} 
		return retorno;
	}
};
