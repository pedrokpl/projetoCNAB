module.exports = {

  formataArquivo: function (options){
    var retorno = [];
    var teste = options.arquivo;
    retorno = teste.split('\n');
    return retorno;
  }
};