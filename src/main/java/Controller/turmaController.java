package Controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Conexao.Conexao;
import Modal.Aluno;
import Modal.Turma;
import Modal.NovaTurma;

public class turmaController {
	public static List<NovaTurma> getAllNovaTurma() {
		List<NovaTurma> list = new ArrayList<NovaTurma>();
		try {
			Connection conn = Conexao.conectar();
			String sql = "SELECT B.NOME, C.DESCRICAO, A.DATACADASTRO FROM TURMA A "
					+ "JOIN ALUNO B ON A.ALUNO_ID = B.ID "
					+ "JOIN CURSO C ON A.CURSO_ID = C.ID ORDER BY 1";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				NovaTurma nvturma = new NovaTurma();

				nvturma.setNome(rs.getString("nome"));
				nvturma.setDescricao(rs.getString("descricao"));
				nvturma.setData(rs.getDate("datacadastro"));
				
				list.add(nvturma);
			}
		} catch (Exception e) {
			e.getMessage();
		}
		return list;
	}
	
	public static int salvarTurma(String data, String valortotal, String idalu, String idcur){
		int status = 0;
		try {
			Connection conn = Conexao.conectar();
			String sql = "INSERT INTO TURMA (datacadastro, valortotal, aluno_id, curso_id) VALUES (?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, data);
			ps.setString(2, valortotal);
			ps.setString(3, idalu);
			ps.setString(4, idcur);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("Erro");
			e.getMessage();
		}
		return status;
	}
}
