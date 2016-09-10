module.exports = {

	formataArquivo: function (options){
		var retorno = new Array(2);
		var formatacao = options.formatacao;
		//var arquivo = options.arquivo;
		var linhas = [];
		linhas = options.arquivo.split("\n");
		console.log(linhas);
		//Montar o cabeçalho
		for(var l = 0; l < formatacao.quantidadeLinhasCabecalho; l++){ //Ler todas as linhas que formam o cabecalho do arquivo
			console.log(formatacao.dadosCabecalho.length);
			for(var i = 0; i < formatacao.dadosCabecalho.length; i++){
				var inicio = formatacao.dadosCabecalho[i].caracterInicial - 1;
				var fim = formatacao.dadosCabecalho[i].caracterFinal;
				var campo = new Object();
				campo.nome = formatacao.dadosCabecalho[i].nome;
				campo.valor = linhas[l].substring(inicio, fim);
				campo.valido = true;
				campo.caracteres = (inicio + 1) + " ao " + fim;
				retorno[l,i] = campo;
			}
		} 
		console.log(retorno);
		return retorno;
	}
};
