function Calc(){
    /* 
    buscar valor 
    criar texto vazio que vai se atualizar com a tabuada
    atualizar ao texto o resultado
    apresentar a tabuada
    */

    var valor = parseInt(document.getElementById('valor').value);

    var texto = ''; 

    for(var i=1; i<=10; i++){
        texto = texto + i.toString() + 
        ' X ' + valor.toString() + 
        ' = ' + (i*valor).toString() +
        '<br> ';
        
    }

    document.getElementById('result').innerHTML = texto;

}