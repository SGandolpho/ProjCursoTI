<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Altera Aluno</title>
</head>
<body>
	<%@ page import="Controller.cursoController, Modal.Curso" %>
	<% 
		String id = request.getParameter("id");
		Curso cur = cursoController.getRegistroById(Integer.parseInt(id));
	%>
	
	<h1 style="text-align: center;">Alteração Curso</h1>
	<hr>
	<form action="confirmaAlteraCurso.jsp" method="post" style="height: 270px; width: 550px; background-color:buttonface; margin: 0 auto; border: 1px solid;">
		<table style="border-spacing: 0 8px; margin-left: 10px">
			<tr>
				<td>Id:</td>
				<td><input type="text" name="id" style="width: 50px; height: 20px" value="<%=cur.getId() %>" /></td>
			</tr>
			<tr>
				<td>Descrição:</td>
				<td><input type="text" name="descricao" style="width: 450px; height: 20px" value="<%=cur.getDescricao()%>" /></td>
			</tr>
			<tr>
				<td>Horas:</td>
				<td><input type="text" name="horas" style="width: 150px; height: 20px" value="<%=cur.getHoras()%>" /></td>
			</tr>
			<tr>
				<td>Valor:</td>
				<td><input type="text" name="valor" style="width: 350px; height: 20px" value="<%=cur.getValor()%>" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<hr>
					<input style="width: 100px" type="submit" value="Alterar"></input>
					<button style="width: 100px"><a href="cursos.jsp">Voltar</a></button>					
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
