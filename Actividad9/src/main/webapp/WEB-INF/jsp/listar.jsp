<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script type="text/javascript" src="resources/js/script.js"></script>
<style>
body {
	background-color: rgb(226, 209, 138);
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
				<li class="nav-item active"><a class="nav-link"
					href="mostrarCrear">Crear Clientes <span class="sr-only">(current)</span>
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


	<div class="container" style="background-color: rgb(255, 255, 255, 1)">
		<div class="col-md-10 mb-1" style="margin-top: 20px; margin-left: 9%;">

			<h2 Style="text-align: center; margin-top: 50px;">
				<br> Clientes Registrados
			</h2>
			
				<div  style="margin-right: 5%;">	
					<form action="buscar" method="post">
						<input type="text" name="rut"> <input type="submit"
							value="Buscar">
					</form></div>
			
			</div>
			<table class="table table-white">
				<thead>
					<tr>
						<th>Rut</th>
						<th>DV</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Dirección</th>
						<th>Ciudad</th>
						<th></th>
						<th></th>
					</tr>
				</thead>

				<c:forEach items="${listar}" var="m">
					<tr>
						<td id="${m.rut}">${m.rut}</td>
						<td>${m.dv}</td>
						<td>${m.nombre}</td>
						<td>${m.apellido}</td>
						<td>${m.direccion}</td>
						<td>${m.ciudad}</td>
						<%-- <td><a href="modificar?rut=${m.rut}" class="btn btn-info">Modificar</a>
								<a href="eliminar?rut=${m.rut}" class="btn btn-danger">Eliminar</a></td>--%>

						<td>
							<form id="delete" method="post" action="eliminar">
								<input type="hidden" name="rut" value="${m.rut}"> <input
									type="button" value="Eliminar" onclick="eliminar(${m.rut})"
									class="btn btn-danger">
							</form>
						</td>
						<td>
							<form method="post" action="modificar">

								<input type="hidden" name="rut" value="${m.rut}"> <input
									type="submit" value="Modificar" class="btn btn-warning">
							</form>
						</td>
					</tr>
				</c:forEach>
				
				
			</table>
			<div class="row">
						
					<a href="mostrarCrear" class="btn btn-success" style=" margin-left: 40%; magin-bottom: 10%">Agregar nuevo
						cliente</a>
			
		</div>
	</div>

</body>
</html>