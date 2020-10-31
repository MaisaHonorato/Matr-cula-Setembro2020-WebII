<%@page import="projeto.barbearia.colecao.DaoPessoa"%>
<%@page import="projeto.barbearia.modelo.Pessoa"%>
<%@page import="projeto.barbearia.colecao.DaoEndereco"%>
<%@page import="projeto.barbearia.modelo.Endereco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Pessoa</title>
</head>
<body>

<%
	//int codigo = Integer.parseInt( request.getParameter("in_codigo") ); 		// "2" -> 2 (int)

	// 1. Coletar
	
		
	String nome = request.getParameter("tx_nome");
	String cpf = request.getParameter("tx_nome");
	String email = request.getParameter("tx_nome");
	String celular = request.getParameter("tx_nome");
	
	int codigo = Integer.parseInt( request.getParameter("endereco") );

	Endereco endereco = DaoEndereco.localizarEnderecoPorCodigo( codigo );
	
	// 2. Construir
	Pessoa p = Pessoa.getInstance(nome, cpf, email, celular, endereco);
	
	// 3. Manipular
	DaoPessoa.salvarPessoa( p );
	
	response.sendRedirect("addAluno.jsp");
	
	
%>

<h2><%=nome%></h2>

</body>
</html>