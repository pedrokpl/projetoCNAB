module.exports = {

	formataArquivo: function (options){
		var retorno = new Object();
		retorno.cabecalho = [];
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
				campo.valido = ValidadorService.validaCampo(campo.valor, formatacao.dadosCabecalho[i].tipoDoDado);
				console.log(campo.valor, formatacao.dadosCabecalho[i].tipoDoDado, campo.valido);
				campo.caracteres = (inicio + 1) + " ao " + fim;
				arrayLinha[i] = campo;
			}
			var linhaRetornada = new Object();
			linhaRetornada.linha = l;
			linhaRetornada.campos = arrayLinha;
			retorno.cabecalho[l] = linhaRetornada;
		}
		//Montar o corpo do documento

		//Montar o rodape

		return retorno;
	},

	validaCampo: function(campo, tipo){
		switch(tipo){
			case 'Numérico':
				return (!isNaN(campo));
			break;
			case 'Alfanumérico':
				return true;
			break;
			default:
			return false
		}
		return false;
	}
};
