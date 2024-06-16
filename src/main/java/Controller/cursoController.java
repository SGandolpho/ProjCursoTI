package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLEditorKit.Parser;

import Conexao.Conexao;
import Modal.Curso;

public class cursoController {

	public static int salvarCurso(Curso cur){
		int status = 0;
		try {
				Connection conn = Conexao.conectar();
				String sql = "INSERT INTO CURSO (DESCRICAO, HORAS, VALOR) VALUES (?, ?, ?)";
					PreparedStatement ps = conn.prepareStatement(sql);
					ps.setString(1, cur.getDescricao());
					ps.setInt(2, cur.getHoras());
					ps.setDouble(3, cur.getValor());
					status = ps.executeUpdate();
				} catch (Exception e) {
					System.out.println("Erro ao incluir Curso2");
					e.getMessage();
				}
				return status;
			}
			
	public static int alterarCurso(Curso cur){
		int status = 0;
		try {
				Connection conn = Conexao.conectar();
				PreparedStatement ps = conn.prepareStatement("UPDATE CURSO SET DESCRICAO = ?, HORAS = ?, VALOR = ? WHERE ID = ?");
				String aux1 = cur.getDescricao();
				ps.setString(1, cur.getDescricao());
				
				String aux2 = String.valueOf(cur.getHoras());
				ps.setInt(2, cur.getHoras());
				
				String aux3 = String.valueOf(cur.getValor());
				ps.setDouble(3, cur.getValor());
				
				String aux4 = String.valueOf(cur.getId());
				ps.setInt(4, cur.getId());
				
				ps.executeUpdate();
				status = 1;			
			} catch (Exception e) {
				System.out.println("Erro ao alterar curso");
				e.getMessage();
			}
			return status;
		}
			
	public static int excluirCurso(Curso cur){
		int status = 0;
		try {
				Connection conn = Conexao.conectar();
				String sql = "DELETE FROM CURSO WHERE ID = ?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, cur.getId());
				Integer aux = cur.getId();
				status = ps.executeUpdate();
			} catch (Exception e) {
				System.out.println("Erro");
					e.getMessage();
				}
			return status;
		}

	public static List<Curso> getAllCurso() {
		List<Curso> list = new ArrayList<Curso>();
		try {
				Connection conn = Conexao.conectar();
				String sql = "SELECT * FROM CURSO ORDER BY DESCRICAO";
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					Curso cur = new Curso();
					cur.setId(rs.getInt("id"));
					cur.setDescricao(rs.getString("descricao"));
					cur.setHoras(rs.getInt("horas"));
					cur.setValor(rs.getDouble("valor"));
					list.add(cur);
				}
			} catch (Exception e) {
				e.getMessage();
			}
			return list;
		}

	public static Curso getRegistroById(int id)  {
		Curso cur = null;
		try {
				Connection con = Conexao.conectar();
				PreparedStatement ps = con.prepareStatement("SELECT * FROM CURSO WHERE ID = ?");
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					cur = new Curso();
					cur.setId(rs.getInt("id"));
					cur.setDescricao(rs.getString("descricao"));
					cur.setHoras(rs.getInt("horas"));
					cur.setValor(rs.getDouble("valor"));
				}
			} catch (Exception e) {
				System.out.println("Erro");
				e.getMessage();
			}
			return cur;
		}
}
