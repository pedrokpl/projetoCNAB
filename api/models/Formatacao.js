/**
 * Formatacao.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

 module.exports = {

 	attributes: {
 		id: {
 			type: 'integer',
 			primaryKey: true
 		},
 		nome: {
 			type: 'text'
 		},

 		quantidadeCaracteres: {
 			type: 'integer'
 		},

 		quantidadeLinhasCabecalho: {
 			type: 'integer'
 		},

 		quantidadeLinhasRodape: {
 			type: 'integer'
 		},

	//Referencia ao banco
	banco: {
		model: 'banco'
	},

	//Referencia ao cabecalho
	dadosCabecalho: {
		collection: 'dadoCabecalho',
		via: 'formatacao'
	},

	//Referencia ao rodape
	dadosRodape: {
		collection: 'dadoRodape',
		via: 'formatacao'
	},

	//Referencia ao documento
	dadosDocumento: {
		collection: 'dadoDocumento',
		via: 'formatacao'
	}
},

autoPK: true,
autoCreatedAt: false,
autoUpdatedAt: false
};

