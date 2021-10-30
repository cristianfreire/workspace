public class FormaPagamento{
    private int idFormaPgt;
    private String formaPagt;
    private String descricao;
 
    //Tratamento do campo IdFormaPgt
     public void setidFormaPgt(int idFormaPgt){
         this.idFormaPgt = idFormaPgt;
     }
     public int getidFormaPgt(){
         return idFormaPgt;     
     }
 
     //Tratamento do campo FormaPagt
     public void setformaPagt(String formaPagt){
         this.formaPagt = formaPagt;
     }
     public String getformaPagt(){
         return formaPagt;
     }
 
     //Tratamento do campo descricao
     public void setdescricao(String descricao){
         this.descricao = descricao;
     }
     public String getdescricao(){
         return descricao;
     }
   
     //Metodos da classe
     public void escolheFormaPgt(){
     }
     public void retornaFormaPgt(){
     }
     public void insereFormaPgt(){
     }
     public void enviaValorPedido(){
     }
     public void calculaPedido(){
     }
 }