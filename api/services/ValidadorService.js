module.exports = {

	formataArquivo: function (options){
		var retorno = new Object();
		retorno.cabecalho = [];
		retorno.documento = [];
		var formatacao = options.formatacao;
		var linhas = options.arquivo.split("\n");

		//Montar o cabeçalho
		retorno.cabecalho = ValidadorService.lerCampos(formatacao.dadosCabecalho, linhas, "linha", 0, formatacao.quantidadeLinhasCabecalho);
		/*
		for(var l = 0; l < formatacao.quantidadeLinhasCabecalho; l++){ //Iterar sobre as linhas que formam o cabecalho do arquivo
			var arrayLinha = [];
			for(var i = 0; i < formatacao.dadosCabecalho.length; i++){//Iterar sobre os dados presentes em cada linha
				var inicio = formatacao.dadosCabecalho[i].caracterInicial - 1;
				var fim = formatacao.dadosCabecalho[i].caracterFinal;
				var campo = new Object();//Armazena os dados de cada campo
				campo.nome = formatacao.dadosCabecalho[i].nome;
				campo.valor = linhas[l].substring(inicio, fim);
				campo.tipo = formatacao.dadosCabecalho[i].tipoDoDado;
				campo.valido = ValidadorService.validaCampo(campo.valor, formatacao.dadosCabecalho[i].tipoDoDado);
				campo.caracteres = (inicio + 1) + " ao " + fim;
				arrayLinha[i] = campo;
			}
			var linhaRetornada = new Object();
			linhaRetornada.linha = l;
			linhaRetornada.campos = arrayLinha;
			retorno.cabecalho[l] = linhaRetornada;
		}*/

		//Montar o corpo do documento
		retorno.documento = ValidadorService.lerCampos(formatacao.dadosDocumento, linhas, "linha", formatacao.quantidadeLinhasCabecalho, (linhas.length - (formatacao.quantidadeLinhasCabecalho + formatacao.quantidadeLinhasRodape)));
		/*
		UtilsService.sortByKey(formatacao.dadosDocumento, "linha");
		dadosLinha = UtilsService.sliceByKey(formatacao.dadosDocumento, "linha");

		for(var l = formatacao.quantidadeLinhasCabecalho, aux = 0; l < (linhas.length - formatacao.quantidadeLinhasRodape); l++, aux++){
			var arrayLinha = [];
			var indice = aux % dadosLinha.length;
			for(var i = 0; i < dadosLinha[indice].length; i++){
				var inicio = dadosLinha[indice][i].caracterInicial - 1;
				var fim = dadosLinha[indice][i].caracterFinal;
				var campo = new Object();//Armazena os dados de cada campo
				campo.nome = dadosLinha[indice][i].nome;
				campo.valor = linhas[l].substring(inicio, fim);
				campo.tipo = dadosLinha[indice][i].tipoDoDado;
				campo.valido = ValidadorService.validaCampo(campo.valor, dadosLinha[indice][i].tipoDoDado);
				campo.caracteres = (inicio + 1) + " ao " + fim;
				arrayLinha[i] = campo;
			}
			var linhaRetornada = new Object();
			linhaRetornada.linha = l;
			linhaRetornada.campos = arrayLinha;
			retorno.documento[l - formatacao.quantidadeLinhasCabecalho] = linhaRetornada;
		}
		*/
		//Montar o rodape
		return retorno;
	},

	lerCampos: function(campos, conteudo, chave, linhaInicial, quantidadeLinhas){
		var retorno = [];
		UtilsService.sortByKey(campos, chave);
		dadosLinha = UtilsService.sliceByKey(campos, chave);

		for(var l = linhaInicial, aux = 0; l < quantidadeLinhas; l++, aux++){
			var arrayLinha = [];
			var indice = aux % dadosLinha.length;
			for(var i = 0; i < dadosLinha[indice].length; i++){
				var inicio = dadosLinha[indice][i].caracterInicial - 1;
				var fim = dadosLinha[indice][i].caracterFinal;
				var campo = new Object();//Armazena os dados de cada campo
				campo.nome = dadosLinha[indice][i].nome;
				campo.valor = conteudo[l].substring(inicio, fim);
				campo.tipo = dadosLinha[indice][i].tipoDoDado;
				campo.valido = ValidadorService.validaCampo(campo.valor, dadosLinha[indice][i].tipoDoDado);
				campo.caracteres = (inicio + 1) + " ao " + fim;
				arrayLinha[i] = campo;
			}
			var linhaRetornada = new Object();
			linhaRetornada.linha = l;
			linhaRetornada.campos = arrayLinha;
			retorno[l - linhaInicial] = linhaRetornada;
		}
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
