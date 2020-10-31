<%@page import="projeto.barbearia.colecao.DaoEndereco"%>
<%@page import="projeto.barbearia.modelo.Endereco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Endereco</title>
</head>
<body>

<%
	// 1. Coletar
	String nome = request.getParameter("tx_nome");
	double valor = 0;
	
	try{
		valor = Double.parseDouble( request.getParameter("tx_valor") );
	}catch(Exception e){
		
	}
	
	// 2. Construir
	Endereco Endereco = new Endereco(nome, valor);
	
	// 3. Manipular
	new DaoEndereco().inserirEndereco(Endereco);
	
	response.sendRedirect("listarEndereco.jsp");
%>

</body>
</html>