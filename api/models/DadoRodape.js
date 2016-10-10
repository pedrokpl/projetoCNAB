/**
 * DadoRodape.js
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
	nome:{
		type: 'text'
	},

	linha: {
		type: 'integer'
	},

	caracterInicial: {
		type: 'integer'
	},

	caracterFinal: {
		type: 'integer'
	},

	tipoDoDado: {
		type: 'text'
	},

	//Referencia a formatacao
	formatacao: {
		model: 'formatacao'
	}
  },

  autoPK: false,
  autoCreatedAt: false,
  autoUpdatedAt: false
};
