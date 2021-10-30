/**
 * 
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author Cristian
 *
 */
public class Conexao {

	private String drivePostgres;
	private String url;
	private String usuario;
	private String senha;
	private Connection con;

	// metodo construtor
	public Conexao() {
		drivePostgres = "org.postgresql.Driver";
		url = "jdbc:postgresql://localhost:5432/wwc";
		usuario = "postgres";
		senha = "123456";
		try {
			Class.forName(drivePostgres);
			con = DriverManager.getConnection(url, usuario, senha);
			System.out.println("Conectado ao Banco com sucesso");
		} catch (Exception e) {
			// TODO: handle exception
		} // fim conexao

	}// fim metodo construtor

	public ResultSet busca(String sql) {
		try {
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			con.close();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}//
	
	public int cadastro(String sql) {
		try {
			Statement stm = con.createStatement();
			int res = stm.executeUpdate(sql);
			con.close();// fecha a conexao
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

	}//
	

}// fim classe
