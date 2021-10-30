public class AppZoo {
    public static void main(String[] args){
        Mamifero animal = new Mamifero();
        animal.setNome("Macaco");
        

        System.out.println(animal.getNome()+ " " + animal.comer());
    }
}
