package Modal;

import java.sql.Date;

public class Turma {
	private int id;
	private Date datacadastro;
	private Double valortotal;
	private Aluno aluno;
	private Curso curso;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public Date getDatacadastro() {
		return datacadastro;
	}
	
	public void setDatacadastro(Date datacadastro) {
		this.datacadastro = datacadastro;
	}
	
	public Double getValortotal() {
		return valortotal;
	}
	
	public void setValortotal(Double valortotal) {
		this.valortotal = valortotal;
	}
	
	public Aluno getAluno() {
		return aluno;
	}
	
	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}
	
	public Curso getCurso() {
		return curso;
	}
	
	public void setCurso(Curso curso) {
		this.curso = curso;
	}


	
	
	
}
