public class Fornecedor {
	private String nome;
	private String sexo;
	private String rg;
	private String email;
	private String endereco;
	private String senha;
	private int idade;
	private long telefone;
	
	public String GetnNome () {
		return nome;
	}
	
	public void SetNome (String nome) {
		this.nome = nome;
	}
	
	public String GetSexo () {
		return sexo;
	}
	
	public void SetSexo (String sexo) {
		this.sexo = sexo;
	}
	
	public String GetRg () {
		return rg;
	}
	
	public void SetRg (String rg) {
		this.rg = rg;
	}
	
	public String GetEmail () {
		return email;
	}
	
	public void SetEmail (String email) {
		this.email = email;
	}
	
	public String GetEndereco () {
		return endereco;
	}
	
	public void SetEndereco (String endereco) {
		this.endereco = endereco;
	}
	
	public String GetSenha () {
		return senha;
	}
	
	public void SetSenha (String senha) {
		this.senha = senha;
	}
	
	public int GetIdade () {
		return idade;
	}
	
	public int SetIdade () {
		return idade;
	}
	
	public long GetTelefone () {
		return telefone;
	}
	
	public long SetTelefone () {
		return telefone;
	}
	
	void vender (int idProduto, int quantidade, int valor) {
		
	}
}