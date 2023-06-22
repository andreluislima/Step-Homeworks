
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>

<%@page import="services.VendaProdutoServiceImplamentation"%>
<%@page import="model.VendaProduto"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="model.Venda"%>
<%@ page import="services.VendaServiceImplementation"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String p = request.getParameter("idVenda");
int idVenda;



if (p == null) {

	VendaServiceImplementation.insert(new Venda());
	idVenda = VendaServiceImplementation.getUltimaVenda();

} else {
	idVenda = Integer.parseInt(p);
}

Venda v = VendaServiceImplementation.getId(idVenda);
ArrayList<VendaProduto> lista = VendaProdutoServiceImplamentation.getByVenda(idVenda);

//Formatação Data e Hora
SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
String dataHoraFormatada = formato.format(v.getDataHora());


String linhas = "";

if (lista.isEmpty()) {
	linhas += "<tr>" + "<td> Não há produtos vendidos</td>" + "</tr>";
} else {

	for (VendaProduto produtos : lista) {

		linhas += "<tr>" 					    +
	
					"<td class='produtosVendidos'>" + produtos.getNomeProduto()	 + "</td>"  + 
					"<td class='produtosVendidos'>" + produtos.getQuantidade() 	 + "</td>"  + 
					"<td class='produtosVendidos'>" + produtos.getPreco() 		 + "</td>"  +

				"</tr>";
	}

}
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">

<link rel="stylesheet" href="./static/css/style.css">

<title>Venda</title>
</head>
<body>


	<!-- NAVBAR -->

	<header>
		<nav class="navbar navbar-expand-lg" id="navbar">
			<div class="container-fluid">

				<a class="navbar-brand" href="index.html">Lima Lanches</a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
					aria-controls="navbarNavDropdown" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarNavDropdown">
					<ul class="navbar-nav">

						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.html">Home</a></li>

						<li class="nav-item"><a class="nav-link" href="#">Clientes</a></li>

						<li class="nav-item"><a class="nav-link" href="venda.jsp">Venda
								de Balcão</a></li>

						<li class="nav-item"><a class="nav-link" href="#">Entrega</a></li>

					</ul>
				</div>

			</div>
		</nav>
	</header>

	<main class="main-default">

		<section class="box-produtos">

			<h1>Venda de Produtos</h1>
			<hr>

			<a href="cadastro.html" class="btn btn-outline-info"
				title="Cadastrar novo aluno">Novo</a> <a href="consulta.jsp"
				class="btn btn-outline-light" title="Consulta de alunos">Exportar</a>


			<table class="box-produtos" id="tabelaProduto">
				<section class="table" id="table">

					<div class="row">

						<div>
							id da venda:
							<%=v.getId()%>
						</div>
						<div>
							Data:
							<%=dataHoraFormatada%>
						</div>

					</div>

					<table id="tableVendaProduto">
						<thead>
							<tr>
								<th>Produto</th>
								<th>Quantidade</th>
								<th>Preço R$</th>
							</tr>
						</thead>
						<tbody><%=linhas%></tbody>
					</table>


				<form name="formVendaProduto" action="insertVendaProduto" id="formProduto">
						<div class=row>
							<div class="col-md-3">
								<label for="inputIdProduto">ID do Produto</label> <input
									type="text" class="form-control" name="inputIdProduto"
									id="inputIdProduto" placeholder="Id do produto" maxlength="45">

							</div>


							<div class="col-md-3">
								<label for="inputNome">Quantidade</label> <input type="text"
									class="form-control" name="inputQuantidade"
									id="inputQuantidade" placeholder="Quantidade" maxlength="45">

							</div>

						</div>

						<input type="hidden" class="form-control" name="idVenda"
							value="<%=v.getId()%>">

						<div class="row">
							<div class="col-md-2">
								<input class='btn btn-success'
									type="button" value="Cadastrar" onclick="validaVenda()">
							</div>
						</div>
					</form>

				</section>

			</table>

		</section>

	</main>



	<!-- SCRIPTS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<script src="./static/js/js.js"></script>

</body>
</html>