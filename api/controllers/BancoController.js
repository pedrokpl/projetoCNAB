/**
 * BancoController
 *
 * @description :: Server-side logic for managing Bancoes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	getBancos: function(req, res){
		BancoService.getBancos(function(bancos){
			res.json(bancos);
		});
	}
};

