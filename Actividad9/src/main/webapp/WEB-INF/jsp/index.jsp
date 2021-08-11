<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banco de China</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<style>

body {
	background-color: white;
}

img {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 65%;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Banco de China</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="index">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="mostrarCrear">Crear
						Clientes <span class="sr-only">(current)</span>
				</a></li>
				</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="listar">Listar
						Clientes<span class="sr-only">(current)</span>
				</a></li>
				</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0" action="/logout" method="post">
		      <input type="hidden" value="${_csrf.token}" name="${_csrf.parameterName}">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Cerrar Sesión</button>
		    </form>
		</div>
	</nav>


	<div class="container"
		style="text-align: center; background-color: rgb(255, 255, 255, 0.8);">
		<h1 style="margin-top: 25px">Módulo de Gestión de Clientes</h1>

	</div>

	<img alt="Banco de China"
		src="http://fujicasystem.com/UploadFiles/FCK/2014-12/11f.jpg">
</body>
</html>