const Produto = require('./produto');

(async () => {
    const database = require('./db');

    try {
        const resultado = await database.sync();
        console.log(resultado);
    } catch(error){
        console.log(error);
    }

    // insert
    /*const resultadoCreate = await Produto.create({
        nome: 'cristian',
        preco: 0.25,
        descricao: 'chato'
    })
    console.log(resultadoCreate);*/

    // read
    const produtos = await Produto.findAll();
    console.log("Todos os produtos: ", produtos);
    
    // read pegando o id
    /*const produto = await Produto.findByPk(1);
    console.log("Produto 1", produto);
    */

    // update 
    /*const produto = await Produto.findByPk(1);
    produto.nome = "Mouse Top";

    const resultadoSave = await produto.save();
    console.log(resultadoSave);
    */

    // delete 1
    /*Produto.destroy({ where: { id: 1}});*/

    // delete 2
    /*const produto = await Produto.findByPk(1);
    produto.destroy();*/



})();

