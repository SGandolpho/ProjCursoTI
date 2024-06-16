<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="Controller.alunoController, Modal.Aluno, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1 style="text-align: center;">Novo Aluno</h1>
<hr>
<br></br>

	<%
		List<Aluno> list = alunoController.getAllAluno();
		request.setAttribute("list", list);
	%>


<form action="inserirAluno.jsp" method="post" 
	style="height: 280px; width: 700px; background-color:buttonface; margin: 0 auto; border: 1px solid;">
	<br>
	<table style="border-spacing: 0 8px; margin-left: 10px">
		<tr>
			<td>Nome:</td>
			<td><input type="text" name="nome" style="width: 600px; height: 25px"/></td>
		</tr>
		<tr>	
			<td>CPF:</td>
			<td><input type="text" name="cpf" style="width: 150px; height: 25px"/></td>
		</tr>
		<tr>
			<td>Endereço:</td>
			<td><input type="text" name="endereco" style="width: 350px; height: 25px"/></td>
		</tr>
		<tr>
			<td>EMail:</td>
			<td><input type="email" name="email" style="width: 250px; height: 25px"/></td>
		</tr>
		<tr>
			<td>Celular:</td>
			<td><input type="text" name="celular" style="width: 150px; height: 25px"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<hr>
				<br>				
				<input style="width: 100px;" type="submit" value="Salvar" />
				<button style="width: 100px"><a href="alunos.jsp">Voltar</a></button>
			</td>
		</tr>
	</table>
</form>
