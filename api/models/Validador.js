/**
 * Validador.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
  	arquivo: {
  		'type': 'string'
  	},
  	//Referencia ao banco
	banco: {
		collection: 'banco',
		via: 'banco'
	},
	//Referencia à formatacao
	formatacao: {
		collection: 'formatacao',
		via: 'formatacao'
	}
  }
};
