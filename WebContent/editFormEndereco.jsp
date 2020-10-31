<%@page import="projeto.matricula.colecao.DaoEndereco"%>
<%@page import="projeto.matricula.modelo.Endereco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Endereço</title>
</head>
<body>

<%
	//Coletou o ID do serviço
	int codigo = Integer.parseInt( request.getParameter("codigo") );
	
	// Localizou o Serviço representado pelo ID
	Endereco end = DaoEndereco.localizarEnderecoPorCodigo( codigo );
%>

<form action="editServico.jsp">
	<input name="id" type="hidden" value="<%=end.getCodigo()%>"/>
	<label> CEP: </label> <input name="tx_nome" type="text" value="<%=end.getCep()%>"/> <br/>
	<label> Rua: </label> <input name="tx_nome" type="text" value="<%=end.getRua()%>"/> <br/>
	<label> Numero: </label> <input name="tx_valor" type="text" value="<%=end.getNumero()%>"/> <br/>
	<label> Bairro: </label> <input name="tx_nome" type="text" value="<%=end.getBairro()%>"/> <br/>
	<label> Cidade: </label> <input name="tx_valor" type="text" value="<%=end.getCidade()%>"/> <br/>
	<label> Estado: </label> <input name="tx_nome" type="text" value="<%=end.getEstado()%>"/> <br/>
	
	<button type="submit"> Salvar </button>
</form>


</body>
</html>