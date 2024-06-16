<%@page import="javax.swing.JOptionPane"%>
<%@ page import="Controller.cursoController" %>
<jsp:useBean id="cur" class="Modal.Curso"></jsp:useBean>
<jsp:setProperty property="*" name="cur"/>
<%
	int i = cursoController.salvarCurso(cur);
	if (i > 0){
//		JOptionPane.showMessageDialog(null, "Aluno inserido com sucesso");
		response.sendRedirect("cursos.jsp");
	}else{
		JOptionPane.showMessageDialog(null, "Erro ao incluir o aluno");
		response.sendRedirect("cursos.jsp");
	}
%>
