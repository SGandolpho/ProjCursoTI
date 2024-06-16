<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="header.jsp"%>

</head>
<body>
	<%@include file="menu.jsp"%>
	<%@ page import="Controller.alunoController, Modal.Aluno, java.util.*"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h2 style="text-align: center;">Alunos</h2>
	<hr>
	<button style="width: 150px">
		<a href="novoAluno.jsp">NOVO ALUNO</a>
	</button>
	<hr>
	<br>

	<%
		List<Aluno> list = alunoController.getAllAluno();
		request.setAttribute("list", list);
	%>

	<form
		style="height: 400px; width: 1200px; margin: 0 auto; border: 1px solid;">
		<table class="table table-sm" >
			<thead class="thead-light">
				<tr>
					<th scope="col" style="width: 10px; text-align: center;">Código</th>
					<th scope="col" style="text-align: center;">Aluno</th>
					<th scope="col" style="width: 150px; text-align: center;">CPF</th>
					<th scope="col" style="width: 150px; text-align: center;">Endereço</th>
					<th scope="col" style="width: 30px; text-align: center;">EMail</th>
					<th scope="col" style="width: 15px; text-align: center;">Celular</th>
					<th scope="col" style="width: 20px; text-align: center;">EDITAR</th>
					<th scope="col" style="width: 20px; text-align: center;">EXCLUIR</th>
				</tr>
			</thead>

			<c:forEach items="${list}" var="alu">
				<tr>
					<td style="text-align: center;">${alu.getId()}</td>
					<td>${alu.getNome()}</td>
					<td style="text-align: center;">${alu.getCpf()}</td>
					<td>${alu.getEndereco()}</td>
					<td style="text-align: center;">${alu.getEmail()}</td>
					<td style="text-align: center;">${alu.getCelular()}</td>
					<td style="text-align: center;"><a href="alunoAlterar.jsp?id=${alu.getId()}">EDT</a></td>
					<td style="text-align: center;"><a href="alunoExcluir.jsp?id=${alu.getId()}">EXC</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>
