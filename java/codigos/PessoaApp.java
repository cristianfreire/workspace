public class PessoaApp {
    public static void main(String[] args){
        // primeira pessoa
        Pessoa pessoa1 = new Pessoa();
        pessoa1.nome = "Cristian";
        pessoa1.telefone = "991474781";
        pessoa1.idade  = 21;
        pessoa1.entra();

        System.out.println();

        // segunda pessoa
        Pessoa pessoa2 = new Pessoa();
        pessoa2.nome = "João";
        pessoa2.telefone = "4877888";
        pessoa2.idade = 15;
        pessoa2.entra();

    }
}
