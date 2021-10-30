public class Produto {
    private int idProduto;
    private double peso;
    private int quantidade;
    private String nome;
    private double valor;
    private String descricao;

    //Tratamento do campo idProduto
    public void setIdProduto(int idProduto){
        this.idProduto = idProduto;
    }
    public int getIdProduto(){
        return idProduto;
    }

    //Tratamento do campo peso
    public void setPeso(double peso){
        this.peso = peso;
    }
    public double getPeso(){
        return peso;
    }

    //Tratamento do campo quantidade
    public void setQuantidade(int quantidade){
        this.quantidade = quantidade;
    }
    public int getQuantidade(){
        return quantidade;
    }

    //Tratamento do campo nome
    public void setNome(String nome){
        this.nome = nome;
    }
    public String getNome(){
        return nome;
    }

    //Tratamento do campo valor
    public void setValor(double valor){
        this.valor = valor;
    }
    public double getValor(){
        return valor;
    }

    //Tratamento do campo descrição
    public void setDescricao(String descricao){
        this.descricao = descricao;
    }
    public String getDescricao(){
        return descricao;
    }

    //metodos da classe
    public void cadastraProduto() {
        
    }
    
    public void removeProduto(int idProduto) {
        
    }
    public void alteraProduto(int idProduto) {
       
    }
}
