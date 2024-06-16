<%@page import="java.sql.Date"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page import="Controller.turmaController" %>
<jsp:useBean id="tur" class="Modal.Turma"></jsp:useBean>
<jsp:setProperty property="*" name="tur"/>
<%
	String data = request.getParameter("data");
	String valor = request.getParameter("valor");
	String idalu = (request.getParameter("idalu").substring(0, 2));
	String idcur = (request.getParameter("idcur").substring(0, 2));
	
	int i = turmaController.salvarTurma(data, valor, idalu, idcur);
	if (i > 0){
		//JOptionPane.showMessageDialog(null, "Aluno inserido com sucesso");
		response.sendRedirect("turmas.jsp");
	}else{
		JOptionPane.showMessageDialog(null, "Erro ao incluir o aluno");
		//response.sendRedirect("Alunos.jsp");
	}
%>
