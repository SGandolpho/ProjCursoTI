
<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="Controller.alunoController, Modal.Aluno, java.util.*"%>
<%@ page import="Controller.cursoController, Modal.Curso, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1 style="text-align: center;">Nova Turma</h1>
<hr>
<br></br>

<%
	List<Aluno> listalu = alunoController.getAllAluno();
	request.setAttribute("listalu", listalu);

	List<Curso> listcur = cursoController.getAllCurso();
	request.setAttribute("listcur", listcur);
%>

<form action="inserirTurma.jsp" method="post" 
	style="height: 220px; width: 420px; background-color:buttonface; margin: 0 auto; border: 1px solid;">	
	<table style="border-spacing: 0 8px; margin-left: 10px">
		<tr>
			<td>Data:</td>
			<td><input type="date" name="data" value="" style="width: 140px; height: 25px"/></td>
			<td>Valor:</td>
			<td><label>R$</label><input type="number" placeholder="0,00" name="valor" style="width: 120px; height: 25px; text-align: right;" /></td>
		</tr>
		<tr>
			<td>Aluno:</td>
            <td>
            	<select style="width: 140px; height: 25px" name="idalu" >
	           		<c:forEach items="${listalu}" var="lalu" >
              			<option>${lalu.id} - ${lalu.nome}</option>
				   	</c:forEach>
            </td>
            
            
<!--             <script type="text/javascript">
    			function mostraAlerta(elemento){
    				window.alert((elemento));
    			}
    		</script>
 -->            
         </tr>
         <tr>            
			<td>Curso:</td>
            <td> <select style="width: 140px; height: 25px" name="idcur"> 
	           		<c:forEach items="${listcur}" var="lcur">
            			<option >${lcur.id} - ${lcur.descricao}</option>
				   	</c:forEach>
             	</select>
            </td>
		</tr>
		<tr>
			<td colspan="2">
				<hr>
				<br>				
				<input style="width: 100px;" type="submit" value="Salvar" />
				<button style="width: 100px"><a href="turmas.jsp">Voltar</a></button>
			</td>
		</tr>
	</table>
</form>

