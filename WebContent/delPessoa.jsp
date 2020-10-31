<%@page import="org.hibernate.exception.ConstraintViolationException"%>
<%@page import="projeto.matricula.colecao.DaoPessoa"%>
<%@page import="projeto.matricula.modelo.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remover Pessoa</title>
</head>
<body>

<%
	// Coletou o ID do serviço
	int id = Integer.parseInt( request.getParameter("id") );
	
	// Localizou o Serviço representado pelo ID
	Pessoa pessoa = DaoServico.localizarPessoaPorId( id );
	
	// Removeu o Serviço do BD
	try{
		DaoPessoa.DeletarPessoa( pessoa );
		
		// Voltar para a listagem
		response.sendRedirect("listarAluno.jsp");
	}catch(ConstraintViolationException fk){
		out.println("Pessoa não pode ser removido, verifique se já está em uso!");
	}catch(Exception e){
		out.print(e.getMessage());
	}
%>

</body>
</html>