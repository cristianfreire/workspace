package edu.ufam.sobreConstrutores;

public class Casa {
	
	public int portas;
	public int janelas;
	public String comodo;
	
	/*public Casa() {
		
	}*/
	
	public Casa() {
		System.out.println("Classe Casa foi instanciada");
		portas = 2;
	}
	
	//Casa completa
	public Casa(int portas, int janelas, String comodo) {
		this.portas = portas;
		this.janelas = janelas;
		this.comodo = comodo;
	}
	
	public Casa(int janelas, String comodo) {
		this(2,3, "teste"); // não é muito usual
	}
	

}
