<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="header.jsp"%>

</head>
<body>
	<%@include file="menu.jsp"%>
	<%@ page import="Controller.cursoController, Modal.Curso, java.util.*"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h2 style="text-align: center;">Cursos</h2>
	<hr>
	<button style="width: 150px">
		<a href="novoCurso.jsp">NOVO CURSO</a>
	</button>
	<hr>
	<br>

	<%
		List<Curso> list = cursoController.getAllCurso();
		request.setAttribute("list", list);
	%>

	<form
		style="height: 400px; width: 1100px; margin: 0 auto; border: 1px solid;">
		<table class="table table-sm" >
			<thead class="thead-light">
				<tr>
					<th scope="col" style="width: 10px; text-align: center;">Código</th>
					<th scope="col" style="text-align: center;">Curso</th>
					<th scope="col" style="width: 30px; text-align: center;">Horas</th>
					<th scope="col" style="width: 200px; text-align: center;">Valor</th>
					<th scope="col" style="width: 20px; text-align: center;">EDITAR</th>
					<th scope="col" style="width: 20px; text-align: center;">EXCLUIR</th>
				</tr>
			</thead>
			
			<c:forEach items="${list}" var="cur">
				<tr>
					<td style="text-align: center;">${cur.getId()}</td>
					<td>${cur.getDescricao()}</td>
					<td style="text-align: center;">${cur.getHoras()}</td>
					<td>${cur.getValor()}</td>
					<td style="text-align: center;"><a href="cursoAlterar.jsp?id=${cur.getId()}">EDT</a></td>
					<td style="text-align: center;"><a href="cursoExcluir.jsp?id=${cur.getId()}">EXC</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>
