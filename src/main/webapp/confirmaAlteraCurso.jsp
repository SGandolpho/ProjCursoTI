<%@page import="javax.swing.JOptionPane"%>
<%@ page import="Controller.cursoController" %>
<jsp:useBean id="cur" class="Modal.Curso"></jsp:useBean>
<jsp:setProperty property="*" name="cur"/>
<%
	String id = request.getParameter("id");
	int i = cursoController.alterarCurso(cur);
	if (i > 0){
		response.sendRedirect("cursos.jsp");
	}else{
		JOptionPane.showMessageDialog(null, "Erro ao alterar o aluno");
		response.sendRedirect("cursos.jsp");
	}
%> 
