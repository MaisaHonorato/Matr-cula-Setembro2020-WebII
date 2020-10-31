<%@page import="projeto.matricula.colecao.DaoPessoa"%>
<%@page import="projeto.matricula.modelo.Pessoa"%>
<%@page import="projeto.matricula.colecao.DaoAluno"%>
<%@page import="projeto.matricula.modelo.Aluno"%>
<%@page import="projeto.matricula.colecao.DaoEndereco"%>
<%@page import="projeto.matricula.modelo.Endereco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Matrícula</title>
</head>
<body>

<h3> Lista de Alunos </h3>
<hr/>

<table border="1">
	<thead>
		<tr>
			<th>Matricula:</th>
			<th>Rg:</th>
			<th>Data de Nascimento:</th>
			<th>Nome:</th>
			<th>CPF:</th>
			<th>Email:</th>
			<th>Celular:</th>
			<th>CEP:</th>
			<th>Rua:</th>
			<th>Numero:</th>
			<th>Bairro:</th>
			<th>Cidade:</th>
			<th>Estado:</th>
			
		</tr>
	</thead>
	
	<tbody>
		<%for(Pessoa p : DaoPessoa.listarPessoas()){
			out.println("<tr>");
				out.println("<td>"+ p.getAluno().getId() +"</td>");
				out.println("<td>"+ p.getAluno().getRg() +"</td>");
				out.println("<td>"+ p.getAluno().getDatanasc() +"</td>");
				out.println("<td>"+ p.getInstance(). +"</td>");
				out.println("<td>"+ p.getCpf() +"</td>");
				out.println("<td>"+ p.getEmail() +"</td>");
				out.println("<td>"+ p.getCelular() +"</td>");
				out.println("<td>"+ p.getEndereco().getCep() +"</td>");
				out.println("<td>"+ p.getEndereco().getRua() +"</td>");
				out.println("<td>"+ p.getEndereco().getNumero() +"</td>");
				out.println("<td>"+ p.getEndereco().getBairro() +"</td>");
				out.println("<td>"+ p.getEndereco().getCidade() +"</td>");
				out.println("<td>"+ p.getEndereco().getEstado() +"</td>");
				
			out.println("</tr>");
		}%>
	</tbody>
	
</table>

</body>
</html>