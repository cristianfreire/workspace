public class Artista extends Funcionario{
    @Override
    public double getBonus(){
        return this.salario * 0.12;
    }

}