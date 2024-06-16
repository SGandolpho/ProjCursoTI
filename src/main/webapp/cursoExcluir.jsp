<%@page import="javax.swing.JOptionPane"%>
<%@ page import="Controller.cursoController" %>
<jsp:useBean id="cur" class="Modal.Curso"></jsp:useBean>
<jsp:setProperty property="*" name="cur"/>

<%
	int i = cursoController.excluirCurso(cur);
	if (i > 0){
		response.sendRedirect("cursos.jsp");
	}else{
		response.sendRedirect("cursos.jsp");
	}
%> 
