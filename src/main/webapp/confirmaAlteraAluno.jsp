<%@page import="javax.swing.JOptionPane"%>
<%@ page import="Controller.alunoController" %>
<jsp:useBean id="alu" class="Modal.Aluno"></jsp:useBean>
<jsp:setProperty property="*" name="alu"/>
<%
	String id = request.getParameter("id");
	int i = alunoController.alterarAluno(alu);
	if (i > 0){
//		JOptionPane.showMessageDialog(null, "Aluno alterado com sucesso");
		response.sendRedirect("alunos.jsp");
	}else{
		JOptionPane.showMessageDialog(null, "Erro ao alterar o aluno");
		response.sendRedirect("alunos.jsp");
	}
%> 
