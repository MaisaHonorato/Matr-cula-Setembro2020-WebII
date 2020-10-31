<%@page import="projeto.matricula.colecao.DaoAluno"%>
<%@page import="projeto.matricula.modelo.Aluno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Atualizar Aluno</title>
</head>
<body>

<%
	//Coletou o ID do serviço
	int id = Integer.parseInt( request.getParameter("id") );
	String rg = request.getParameter("rg_aluno");
	String datanasc = requestParameter("data_nascimento");
	
	// Localizou o Serviço representado pelo ID
	Aluno al = DaoAluno.localizarAlunoPorId( id );
	al.setRg(rg);
	al.setdatanasc(datanasc);
	
	DaoServico.updateAluno(aluno);
	
	// Voltar para a listagem
	response.sendRedirect("listarAluno.jsp");
%>

</body>
</html>