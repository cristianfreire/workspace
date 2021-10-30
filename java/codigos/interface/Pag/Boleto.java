public class Boleto implements Pagamento{

   public void pagar(){
       String itemComprado = "Pendrive";
       int quantidade = 10;
       double preco  = 50.0;
       double valorTotal;
       valorTotal = preco * quantidade;
       System.out.println("Tipo Pagamento: Pagamento com boleto");
       System.out.println("Item Comprado: " + itemComprado);
       System.out.println("Quantidade: " + quantidade);
       System.out.println("preco: " + preco);
       System.out.println("Valor Total: " + valorTotal);

   }

}