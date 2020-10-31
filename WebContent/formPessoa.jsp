<%@page import="projeto.matricula.colecao.DaoPessoa"%>
<%@page import="projeto.matricula.modelo.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Pessoa</title>
</head>
<body>

<form action="addPessoa.jsp" method="get">
	Nome: 	<input type="text" name="tx_nome"/> <br/>
	Nota:	<input type="number" name="in_nota"/> <br/>
	
	Serviço:
	<select name="aluno">
		<%for( Aluno a : DaoAluno.listarAluno() ){%>
			<option value="<%=a.getRg()%>"> <%=s.getDatanasc()%> </option>
		<%}%>
	</select> <br/>

	<input type="submit" value="Enviar (input)">
</form>

<a href="addPessoa.jsp?tx_nome=Maisa&in_nota=5&nm_servico=1"> Exemplo </a>

</body>
</html>