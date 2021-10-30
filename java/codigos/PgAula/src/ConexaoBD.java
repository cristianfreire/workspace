import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoBD {
	private String drivePostgres;
	private String url;
	private String user;
	private String password;
	private Connection con;

	public ConexaoBD() {

		drivePostgres = "org.postgresql.";
		url = "jdbc:postgresql://localhost:5432/wwc";
		user = "postgres";
		password = "123456";
		
		try {
			Class.forName(drivePostgres);
			con = DriverManager.getConnection(url, user, password);
			System.out.print("Conectado ao banco");
		} catch (ClassNotFoundException e) {
			// Erro caso o driver JDBC n�o esteja instalado
			System.out.println("JDBC para Postgres n�o instalado");
			// e.printStackTrace

		} catch (SQLException e) {
			// Erro caso haja problema de conexao com o banco
			// e.printStackTrace();
			System.out.println("Erro de conex�o com o banco");
		}
	}

}
