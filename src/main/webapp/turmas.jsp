<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="header.jsp"%>

</head>
<body>
	<%@include file="menu.jsp"%>
	<%@ page import="Controller.turmaController, Modal.NovaTurma, java.util.*"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<h2 style="text-align: center;">Turmas</h2>
	<hr>
	<button style="width: 150px">
		<a href="novaTurma.jsp">NOVA TURMA</a>
	</button>
	<hr>
	<br>

	<%
		List<NovaTurma> list = turmaController.getAllNovaTurma();
		request.setAttribute("list", list);
	%>

	<form style="height: 400px; width: 1100px; margin: 0 auto; border: 1px solid;">
		<table class="table table-sm" >
			<thead class="thead-light">
				<tr>
					<th scope="col" style="width: 400px; text-align: center;">Aluno</th>
					<th scope="col" style="width: 400px; text-align: center;">Descrição</th>
					<th scope="col" style="width: 200px; text-align: center;">Data Cadastro</th>
					<th scope="col" style="width: 50px; text-align: center;">EDITAR</th>
					<th scope="col" style="width: 50px; text-align: center;">EXCLUIR</th>
				</tr>
			</thead>
			
			<c:forEach items="${list}" var="li">
    	    	<tr>
    	    		<td style="text-align: left;">${li.getNome()}</td>
    	    		<td style="text-align: left;">${li.getDescricao()}</td>
    	    		<td style="text-align: center;">${li.getData()}</td>
					<td style="text-align: center;"><a href="alunoAlterar.jsp?id=${alu.getId()}">EDT</a></td>
					<td style="text-align: center;"><a href="alunoExcluir.jsp?id=${alu.getId()}">EXC</a></td>
    	    	</tr>
			</c:forEach>			
		</table>
	</form>
</body>
</html>
