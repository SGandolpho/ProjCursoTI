<h1 style="text-align: center;">Novo Curso</h1>
<hr>
<br></br>

<form action="inserirCurso.jsp" method="post" 
	style="height: 220px; width: 700px; background-color:buttonface; margin: 0 auto; border: 1px solid;">
	<br>
	<table style="border-spacing: 0 8px; margin-left: 10px">
		<tr>
			<td>Descrição:</td>
			<td><input type="text" name="descricao" style="width: 600px; height: 25px"/></td>
		</tr>
		<tr>	
			<td>Horas:</td>
			<td><input type="text" name="horas" style="width: 150px; height: 25px"/></td>
		</tr>
		<tr>
			<td>Valor:</td>
			<td><input type="text" name="valor" style="width: 350px; height: 25px"/></td>
		</tr>
		<tr>
			
			<td colspan="2">
				<hr>
				<br>				
				<input style="width: 100px;" type="submit" value="Salvar" />
				<button style="width: 100px"><a href="cursos.jsp">Voltar</a></button>
			</td>
		</tr>
	</table>
</form>
