<%@page import="projeto.matricula.colecao.DaoSAluno"%>
<%@page import="projeto.matricula.modelo.Aluno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aluno</title>
</head>
<body>

<%
	//Coletou o ID do Aluno
	int id = Integer.parseInt( request.getParameter("id") );
	
	// Localizou o Aluno representado pelo RG
	Aluno al = DaoAluno.localizarAlunoPorRg( rg );
%>

<form action="editAluno.jsp">
	<input name="id" type="hidden" value="<%=al.getId()%>"/>
	<input type="date" name="exData">
	<label> Rg: </label> <input name="tx_rg" type="text" value="<%=al.getRg()%>"/> <br/>
	<label> Data de Nascimento: </label> <input name="exData" type="date" value="<%=al.getDatanasc()%>"/> <br/>
	
	<button type="submit"> Salvar </button>
</form>


</body>
</html>