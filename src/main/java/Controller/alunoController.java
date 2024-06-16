package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Conexao.Conexao;
import Modal.Aluno;

public class alunoController {
	public static int salvarAluno(Aluno alu){
		int status = 0;
		try {
			Connection conn = Conexao.conectar();
			String sql = "INSERT INTO ALUNO (nome, cpf, endereco, email, celular) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, alu.getNome());
			ps.setString(2, alu.getCpf());
			ps.setString(3, alu.getEndereco());
			ps.setString(4, alu.getEmail());
			ps.setString(5, alu.getCelular());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("Erro");
			e.getMessage();
		}
		return status;
	}
	
	public static int alterarAluno(Aluno alu){
		int status = 0;
		try {
			Connection conn = Conexao.conectar();
			PreparedStatement ps = conn.prepareStatement("UPDATE ALUNO SET NOME = ?, CPF = ?, ENDERECO = ?, EMAIL = ?, CELULAR = ? WHERE ID = ?");
			ps.setString(1, alu.getNome());
			ps.setString(2, alu.getCpf());
			ps.setString(3, alu.getEndereco());
			ps.setString(4, alu.getEmail());
			ps.setString(5, alu.getCelular());
			ps.setInt(6, alu.getId());
			ps.executeUpdate();
			status = 1;			
		} catch (Exception e) {
			System.out.println("Erro ao alterar aluno");
			e.getMessage();
		}
		return status;
	}
	
	public static int excluirAluno(Aluno alu){
		int status = 0;
		try {
			Connection conn = Conexao.conectar();
			String sql = "DELETE FROM ALUNO WHERE ID = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, alu.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("Erro");
			e.getMessage();
		}
		return status;
	}

	public static List<Aluno> getAllAluno() {
		List<Aluno> list = new ArrayList<Aluno>();
		try {
			Connection conn = Conexao.conectar();
			String sql = "SELECT ID, NOME, CPF, ENDERECO, EMAIL, CELULAR FROM ALUNO ORDER BY 2";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Aluno alu = new Aluno();
				alu.setId(rs.getInt("id"));
				alu.setNome(rs.getString("nome"));
				alu.setCpf(rs.getString("cpf"));
				alu.setEndereco(rs.getString("endereco"));
				alu.setEmail(rs.getString("email"));
				alu.setCelular(rs.getString("celular"));
				list.add(alu);
			}
		} catch (Exception e) {
			e.getMessage();
		}
		return list;
	}

	public static Aluno getRegistroById(int id)  {
		Aluno alu = null;
		try {
			Connection con = Conexao.conectar();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM ALUNO WHERE ID = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				alu = new Aluno();
				alu.setId(rs.getInt("id"));
				alu.setNome(rs.getString("nome"));
				alu.setCpf(rs.getString("cpf"));
				alu.setEndereco(rs.getString("endereco"));
				alu.setEmail(rs.getString("email"));						
				alu.setCelular(rs.getString("celular"));
			}
		} catch (Exception e) {
			System.out.println("Erro");
			e.getMessage();
		}
		return alu;
	}
	

}
