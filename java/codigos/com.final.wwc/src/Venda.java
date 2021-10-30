import java.sql.ResultSet;

public class Venda {

	private int idVenda;
	private int idUser;
	private String status;
	private float valorTotal;
	
	Conexao con = new Conexao();

	public void buscaVenda(String sql) {
		ResultSet rs = con.busca(sql);

		try {
			while (rs.next()) {
				idVenda = rs.getInt("idvenda");
				idUser = rs.getInt("iduser");
				status = rs.getString("status");
				valorTotal = rs.getFloat("valortotal");
				System.out.println(idVenda + " " + idUser + " " + status + " " + valorTotal);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void cadastraVenda(String sql) {
		int teste = con.cadastro(sql);
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public int getIdVenda() {
		return idVenda;
	}

	public void setIdVenda(int idVenda) {
		this.idVenda = idVenda;
	}

	public String isStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(float valorTotal) {
		this.valorTotal = valorTotal;
	}

}