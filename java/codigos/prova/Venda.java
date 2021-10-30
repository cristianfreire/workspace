public class Venda {
   private int idUser;
   private int idVenda;
   private boolean status;
   private double valorTotal;

   public int getIdUser(){
      return idUser;
   }

   public int getIdVenda(){
      return idVenda;
   }

   public boolean getStatus(){
      return status;
   }

   public double getValorTotal(){
      return valorTotal;
   }

   public void setIdUser(int idUser){
      this.idUser = idUser;
   }

   public void setIdVenda(int idVenda){
      this.idVenda = idVenda;
   }

   public void setStatus(boolean status){
      this.status = status;
   }

   public void setValorTotal(double valorTotal){
      this.valorTotal = valorTotal;
   }

   public void adicionaProduto(int idProduto, int quantidade){

   }

   public void removeProduto(int idProduto, int quantidade){

   }

   public void concluiPedido(int idPedido){

   }


}