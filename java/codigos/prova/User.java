public class User {
    private int idUser;
    private String nome;
    private int idade;
    private String sexo;
    private String rg;
    private String email;
    private String endereco;
    private Long telefone;
    private String senha;


    //idUser
    public void setUSerId(int idUser){
        this.idUser = idUser;
    }

    public int getUser(){
        return idUser;
    }

    //nome
    public void setNome(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return nome;
    }
    //idade

    public void setIdade(int idade){
        this.idade = idade;
    }

    public int getIdade(){
        return idade;
    }

    //sexo
    public void setSexo(String sexo){
        this.sexo = sexo;
    }

    public String getSexo(){
        return sexo;
    }

    //rg
    public void setRg(String rg){
        this.rg = rg;
    }

    public String getRg(){
        return rg;
    }

    //email
    public void setEmail(String email){
        this.email = email;
    }

    public String getEmail(){
        return email;
    }

    //endereço
    public void setEndereco(String endereco){
        this.endereco = endereco;
    }

    public String getEndereco(){
        return endereco;
    }

    //telefone
    public void setTelefone(Long telefone){
        this.telefone = telefone;
    }

    public Long getTelefone(){
        return telefone;
    }
    //senha
    public void setSenha(String senha){
        this.senha = senha;
    }

    public String getSenha(){
        return senha;
    }



    //metodos padrões
    public void logar(){

    }

    public void cadastrar(){

    }

    public void editar(){

    }

    public void excluir(){

    }

    public void comprar(){

    }

    public void vender(){

    }
    //fim métodos
}
