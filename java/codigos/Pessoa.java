public class Pessoa {
    String nome;
    String telefone;

    int idade; // declaração do tipo int
    boolean entra = false; // declaração do tipo boolean

    void entra() {
        if (idade >= 18) {
            System.out.println("Nome: " + nome);
            System.out.println("Telefone: " + telefone);
            System.out.println("Idade: " + idade);
            entra = true;
            System.out.println("Entrada: " + entra);
        }else{
            System.out.println("Nome: " + nome);
            System.out.println("Telefone: " + telefone);
            System.out.println("Idade: " + idade);
            entra = false;
            System.out.println("Entrada: " + entra);
        }
    }

}