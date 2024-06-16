<%@page import="javax.swing.JOptionPane"%>
<%@ page import="Controller.alunoController" %>
<jsp:useBean id="alu" class="Modal.Aluno"></jsp:useBean>
<jsp:setProperty property="*" name="alu"/>
<%
	int i = alunoController.salvarAluno(alu);
	if (i > 0){
//		JOptionPane.showMessageDialog(null, "Aluno inserido com sucesso");
		response.sendRedirect("alunos.jsp");
	}else{
		JOptionPane.showMessageDialog(null, "Erro ao incluir o aluno");
		response.sendRedirect("Alunos.jsp");
	}
%>
