<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>

<%@ page import="java.util.Locale"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.text.NumberFormat"%>

<%
@SuppressWarnings("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("produtos");

NumberFormat moeda = NumberFormat.getCurrencyInstance(Locale.of("pt", "BR"));
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Sistema de cadastro de produtos com Java e Bootstrap.">
<meta name="keywords"
	content="cadastro, produtos, sistema, Java, Bootstrap">
<title>Cadastro de Produtos</title>
<link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div
		class="container d-flex justify-content-center align-items-center min-vh-100">
		<section class="card shadow-sm p-4 w-100">
			<div class="text-center">
				<h1 class="text-dark mb-4">Cadastro de Produtos</h1>
				<a href="novo.html" class="btn btn-success">Novo produto</a> <a
					href="report" class="btn btn-secondary">Relatório</a>
			</div>

			<div class="table-responsive pt-3">
				<table class="table table-bordered table-striped text-center">
					<thead class="bg-warning text-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Nome Produto</th>
							<th scope="col">Quantidade</th>
							<th scope="col">Valor Unitário</th>
							<th scope="col">Data Cadastro</th>
							<th scope="col">Opções</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (int i = 0; i < lista.size(); i++) {
						%>
						<tr>
							<td><%=lista.get(i).getId()%></td>
							<td class="text-left"><%=lista.get(i).getNome()%></td>
							<td><%=lista.get(i).getQtde()%></td>

							<td><%=moeda.format(lista.get(i).getValor_unit())%></td>

							<td><%=lista.get(i).getData_cad().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))%></td>

							<td><a href="select?id=<%=lista.get(i).getId()%>"
								class="btn btn-sm btn-primary">Editar</a> <a
								href="javascript:confirmar(<%=lista.get(i).getId()%>)"
								class="btn btn-sm btn-danger">Excluir</a></td>
						</tr>

						<%
						}
						%>

					</tbody>
				</table>
			</div>
		</section>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="confirmar.js"></script>
</body>
</html>
