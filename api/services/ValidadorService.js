module.exports = {

	formataArquivo: function (options){
		var retorno = new Object();
		retorno.cabecalho = [];
		retorno.documento = [];
		retorno.rodape = [];
		var formatacao = options.formatacao;
		var linhas = options.arquivo.split("\n");

		//Montar o cabeçalho
		retorno.cabecalho = ValidadorService.lerCampos(
			formatacao.dadosCabecalho,
			linhas,
			"linha",
			0,
			formatacao.quantidadeLinhasCabecalho
			);
		
		//Montar o corpo do documento
		retorno.documento = ValidadorService.lerCampos(
			formatacao.dadosDocumento,
			linhas,
			"linha",
			formatacao.quantidadeLinhasCabecalho,
			(linhas.length - (formatacao.quantidadeLinhasCabecalho + formatacao.quantidadeLinhasRodape)));

		//Montar o rodape
		retorno.rodape = ValidadorService.lerCampos(
			formatacao.dadosRodape,
			linhas,
			"linha",
			formatacao.quantidadeLinhasCabecalho + (linhas.length - (formatacao.quantidadeLinhasCabecalho + formatacao.quantidadeLinhasRodape)),
			formatacao.quantidadeLinhasRodape);

		return retorno;
	},

	lerCampos: function(campos, conteudo, chave, linhaInicial, quantidadeLinhas){
		var retorno = [];
		UtilsService.sortByKey(campos, chave);
		dadosLinha = UtilsService.sliceByKey(campos, chave);

		for(var i = 0; i < dadosLinha.length; i++){
			UtilsService.sortByKey(dadosLinha[i], "caracterInicial");
		}

		for(var l = linhaInicial, aux = 0; l < (quantidadeLinhas + linhaInicial); l++, aux++){
			var arrayLinha = [];
			var indice = aux % dadosLinha.length;
			for(var i = 0; i < dadosLinha[indice].length; i++){
				var inicio = dadosLinha[indice][i].caracterInicial - 1;
				var fim = dadosLinha[indice][i].caracterFinal;
				var campo = new Object();//Armazena os dados de cada campo
				campo.nome = dadosLinha[indice][i].nome;
				campo.valor = conteudo[l].substring(inicio, fim);
				campo.tipo = dadosLinha[indice][i].tipoDoDado;
				campo.valido = (ValidadorService.validaTipoCampo(campo.valor, dadosLinha[indice][i].tipoDoDado) && ValidadorService.validaObrigatoriedadeCampo(campo.valor, dadosLinha[indice][i].obrigatorio));
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

	validaTipoCampo: function(campo, tipo){
		switch(tipo){
			case 'Numérico':
			return (!isNaN(campo));
			break;
			case 'Alfanumérico':
			return true;
			break;
			case 'Data':
			return UtilsService.validaData(campo.substring(0,2), campo.substring(2,4), campo.substring(4,8));
			break;
			default:
			return false
		}
		return false;
	},

	validaObrigatoriedadeCampo: function(campo, obrigatorio){
		if(obrigatorio){
			return (campo.trim().length > 0);
		}
		return true;
	}
};
