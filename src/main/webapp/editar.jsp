<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">

<title>Cadastro de Produtos</title>
</head>
<body>
	<div
		class="container d-flex justify-content-center align-items-center min-vh-100">
		<section class="card shadow-sm p-4 w-100">
			<div class="text-center">

				<h1 class="text-primary mb-4">Editar Produto</h1>

				<form id="form_produto" name="frmProduto" action="update">

					<div class="form-group">
						<label>ID</label> <input type="text" class="form-control"
							name="id" readonly
							value="<%out.print(request.getAttribute("id"));%>">

					</div>

					<div class="form-group">
						<label for="nomeproduto">Nome do Produto</label> <input
							type="text" class="form-control" id="nomeproduto"
							name="nome_produto" placeholder="Digite o nome do produto"
							required aria-required="true"
							value="<%out.print(request.getAttribute("nome"));%>">

					</div>
					<div class="form-group">
						<label for="qtde">Quantidade</label> <input type="number"
							class="form-control" name="qtde" id="qtde"
							placeholder="Digite a Quantidade" required aria-required="true"
							value="<%out.print(request.getAttribute("qtde"));%>">
					</div>

					<div class="form-group">
						<label for="valor_unit">Valor Unitário</label> <input type="text"
							class="form-control" id="valor_unit" name="valorunit"
							placeholder="Ex: 12,99" required pattern="^\d+(,\d{1,2})?$"
							title="Digite o valor com vírgula, exemplo: 12,99" required
							aria-required="true"
							value="<%out.print(request.getAttribute("valorunit"));%>">

					</div>
					<div class="form-group">
						<label for="data_cad">Data de Cadastro</label> <input type="date"
							class="form-control" id="data_cad" name="data_cad" required
							aria-required="true"
							value="<%out.print(request.getAttribute("data_cadastro"));%>">

					</div>
					<button type="submit" class="btn btn-primary">Salvar</button>
				</form>

			</div>
		</section>

	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>
