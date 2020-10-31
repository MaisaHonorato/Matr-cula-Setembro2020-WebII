<%@page import="projeto.matricula.colecao.DaoAluno"%>
<%@page import="projeto.matricula.modelo.Aluno"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Aluno</title>
</head>
<body>

<%
	// 1. Coletar
	String rg = request.getParameter("rg_aluno");

	String dataForm = request.getParameter("exData");
	SimpleDateFormat formatoData = new SimpleDateFormat("dd-MM-yyyy");
	Date dataN = formatoData.parse(dataForm);

	
	
	// 2. Construir
	Aluno Aluno = new Aluno(rg, datanasc);
	
	// 3. Manipular
	new DaoAluno().inserirAluno(Aluno);
	
	response.sendRedirect("listarAluno.jsp");
%>

</body>
</html>