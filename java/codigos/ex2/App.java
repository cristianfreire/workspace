public class App extends Funcionario{
    public static void main(String[] args) {

        // Artista
        Artista artista = new Artista();
        artista.setNome("Jão");
        artista.setCpf("254234");
        artista.setSalario(100);

        System.out.println("---------Artista-------");
        System.out.println("Nome: " + artista.getNome());
        System.out.println("CPF: " + artista.getCpf());
        System.out.println("Salario R$: " + artista.getSalario());
        System.out.println("Bonus 12%: " + artista.getBonus());
      

        /////////////////////////



        // Programador
        Programador programador = new Programador();
        programador.setNome("Cristian");
        programador.setCpf("1234");
        programador.setSalario(100.0);
        

        System.out.println("---------Programador-------");
        System.out.println("Nome: " + programador.getNome());
        System.out.println("CPF: " + programador.getCpf());
        System.out.println("Salario R$: " + programador.getSalario());
        System.out.println("Bonus 10%: " + programador.getBonus());
        System.out.println("Bonus extra: " + programador.getBonusExtra(10));
        
        

        ///////////////////////////
            
    }
}
