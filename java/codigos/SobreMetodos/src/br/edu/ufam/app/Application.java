/**
 * 
 */
package br.edu.ufam.app;

import br.edu.ufam.app.sobrecarga.Calc;
import br.edu.ufam.classes.automoveis.Carro;

/**
 * @author cristian
 *
 */
public class Application {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		/*Carro c = new Carro();
		c.setCor("Preto");
		c.setMarca("Fiat");
		c.setPlaca("AJL8990");
		c.setChassi(114543);
		System.out.println("Cor: " +c.getCor());
		System.out.println("Marca: "+ c.getMarca());
		System.out.println("Placa: " +c.getPlaca());
		System.out.println("Chassi: "+c.getChassi());*/
		
		Calc c = new Calc();
		int[] vetorInt = {1,2,3,4};
		
		System.out.println("soma int: " + c.soma(3, 2));
		System.out.println("soma double: " + c.soma(2, 1));
		System.out.println("Soma vetor: "+ c.soma(vetorInt));
	}

}
