(async () => {
    const database = require('./db');
    const Produto = require('./models/produto');
    const Fabricante = require('./models/fabricante');

    try{
        Produto.belongsTo(Fabricante, {
            constraint: true,
            foreignKey: 'idFabricante'
        });

        const resultado = await database.sync({force: true});
        // console.log(resultado);

    }catch (error){
        console.log(error);
    }

    const resultadoCreate = await Fabricante.create({
        nome: 'Apple'
    })
    const idFabricante = resultadoCreate.id;

    const resultadoCreate2 = await Produto.create({
        nome: 'iPhone',
        preco: 5000,
        descricao: 'Smartphone da maçã',
        idFabricante: idFabricante
    })

    const produto = await Produto.findByPk(resultadoCreate2.id);
    //console.log(produto);
    const fabricante = await produto.getFabricante();
    console.log(fabricante);

    Fabricante.hasMany(Produto, {

    })
})();