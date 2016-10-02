/**
 * ValidadorController
 *
 * @description :: Server-side logic for managing validadors
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

 module.exports = {
	validar: function(req, res){
		return res.send(ValidadorService.formataArquivo({
			arquivo: req.param('arquivo'),
			formatacao: req.param('formatacao')
		}));
	}
 };

