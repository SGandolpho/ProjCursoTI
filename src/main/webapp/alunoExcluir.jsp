<%@page import="javax.swing.JOptionPane"%>
<%@ page import="Controller.alunoController" %>
<jsp:useBean id="alu" class="Modal.Aluno"></jsp:useBean>
<jsp:setProperty property="*" name="alu"/>

<%
	int i = alunoController.excluirAluno(alu);
	if (i > 0){
		response.sendRedirect("alunos.jsp");
	}else{
		JOptionPane.showMessageDialog(null, "Erro ao alterar o aluno");
		response.sendRedirect("alunos.jsp");
	}
%> 
