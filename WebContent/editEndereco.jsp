<%@page import="projeto.matricula.colecao.DaoEndereco"%>
<%@page import="projeto.matricula.modelo.Endereco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Atualizar Endereco</title>
</head>
<body>

<%
	//Coletou o ID do serviço
	int id = Integer.parseInt( request.getParameter("id") );
	String nome = request.getParameter("tx_nome");
	
	
	// Localizou o Serviço representado pelo ID
	Endereco end = DaoEndereco.localizarEnderecoPorCodigo( codigo );
	end.setRua(rua);
	end.setNumero(numero);
	end.setBairro(bairro);
	end
	
	DaoServico.editarServico(servico);
	
	// Voltar para a listagem
	response.sendRedirect("listarServico.jsp");
%>

</body>
</html>