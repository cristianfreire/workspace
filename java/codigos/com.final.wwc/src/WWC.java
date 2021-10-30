import java.io.IOException;
import java.util.Random;
import java.util.Scanner;

public class WWC {
	public static void main(String[] args) throws InterruptedException, IOException {
        Scanner scan = new Scanner(System.in);
        int a = -1;
        
        do {
        	System.out.println("-----ESCOLHA UMA OPÇÃO-----");
            System.out.println("1 - FormaPagamento");
            System.out.println("2 - Venda");
            System.out.println("3 - Produto");
            System.out.println("4 - Fornecedor");
            System.out.println("5 - User");
            System.out.println("0 - Sair");
            a = scan.nextInt();

           if(a == 2) {
        	   //Limpa a tela no windows, no linux e no MacOS
               if (System.getProperty("os.name").contains("Windows"))
                   new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
               else
                   Runtime.getRuntime().exec("clear");
               
               int b = -1;
               do {
            	   System.out.println("-----ESCOLHA UMA OPÇÃO-----");
                   System.out.println("1 - Cadastrar");
                   System.out.println("2 - Mostrar");
                   System.out.println("0 - voltar");
                   b = scan.nextInt();
                   Random ran = new Random();
                   int id = ran.nextInt(100);
                   if(b == 1) {
                	   Venda v = new Venda();
                	   System.out.println("Status (true ou false): ");
                	   String status = scan.next();
                	   
                	   System.out.println("Valor total: ");
                	   Float valorTotal = scan.nextFloat();
                	   
                	   String sqlVenda = "insert into venda (idvenda, iduser, status, valorTotal)" + "values("+id+","+1+",'" + status + "', "+ valorTotal+")" ;
                	   v.cadastraVenda(sqlVenda);
                   }else if (b == 2) {
                	   Venda v = new Venda();
                	   String buscaVenda = "select *from venda";
                	   v.buscaVenda(buscaVenda);
                   }
               }while(b != 0);
               
              
           }
        }while (a != 0);

        

    }
}
