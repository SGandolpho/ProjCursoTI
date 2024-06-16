<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Altera Aluno</title>
</head>
<body>
	<%@ page import="Controller.alunoController, Modal.Aluno" %>
	<% 
		String id = request.getParameter("id");
		Aluno alu = alunoController.getRegistroById(Integer.parseInt(id));
	%>
	
	<h1 style="text-align: center;">Alteração Aluno</h1>
	<hr>
	<form action="confirmaAlteraAluno.jsp" method="post" style="height: 270px; width: 550px; background-color:buttonface; margin: 0 auto; border: 1px solid;">
		<table style="border-spacing: 0 8px; margin-left: 10px">
			<tr>
				<td>Id:</td>
				<td><input type="text" name="id" style="width: 50px; height: 20px" value="<%=alu.getId() %>" /></td>
			</tr>
	
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" style="width: 450px; height: 20px" value="<%=alu.getNome() %>" /></td>
			</tr>
			<tr>
				<td>Login:</td>
				<td><input type="text" name="cpf" style="width: 150px; height: 20px" value="<%=alu.getCpf() %>" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="text" name="wndereco" style="width: 350px; height: 20px" value="<%=alu.getEndereco() %>" /></td>
			</tr>
			<tr>
				<td>EMail:</td>
				<td><input type="email" name="email" style="width: 250px; height: 20px" value="<%=alu.getEmail() %>" /></td>
			</tr>
			<tr>
				<td>Celular:</td>
				<td><input type="text" name="celular" style="width: 150px; height: 20px" value="<%=alu.getCelular() %>" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<hr>
					<input style="width: 100px" type="submit" value="Alterar"></input>
					<button style="width: 100px"><a href="Alunos.jsp">Voltar</a></button>					
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
