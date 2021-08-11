<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

	<div class="container">
		

		<div class="container" style="background-color: rgb(226, 209, 138)">
			<div class="col-md-10 mb-1"
				style="margin-top: 20px; margin-left: 9%;">

				<h3 Style="text-align: center; margin-top: 60px;"> Complete los
					datos del formulario</h3>
				<br> <br>
				<form:form action="agregar" modelAttribute="cliente" method="POST" role="form">

					<div class="form-row" style="background-color: rgb(180, 180, 180)">

						<div class="col-md-12 mb-1" style="margin-top: 20px">
							<div class="form-group">
								<form:label path="rut">Rut:</form:label>
								<form:input path="rut" placeholder="Ingrese Rut: "
									class="form-control" />
								<form:errors path="rut" style="color:red" />
							</div>
						</div>
						
						<div class="col-md-12 mb-1" style="margin-top: 15px">
							<div class="form-group">
								<form:label path="dv">Digito Verificador</form:label>
								<form:input path="dv" placeholder="Ingrese Digito Verificador: "
									class="form-control" />
								<form:errors path="dv" style="color:red" />
							</div>
						</div>
						
						<div class="col-md-12 mb-1" style="margin-top: 15px">
							<div class="form-group">
								<form:label path="nombre">Nombre: </form:label>
								<form:input path="nombre" placeholder="Ingrese Nombre: "
									class="form-control" />
								<form:errors path="nombre" style="color:red" />
							</div>
						</div>
						
						<div class="col-md-12 mb-1" style="margin-top: 15px">
							<div class="form-group">
								<form:label path="apellido">Apellido: </form:label>
								<form:input path="apellido" placeholder="Ingrese Apellido: "
									class="form-control" />
								<form:errors path="apellido" style="color:red" />
							</div>
						</div>
						
							<div class="col-md-12 mb-1" style="margin-top: 15px">
							<div class="form-group">
								<form:label path="direccion">Direccion: </form:label>
								<form:input path="direccion" placeholder="Ingrese Direccion: "
									class="form-control" />
								<form:errors path="direccion" style="color:red" />
							</div>
						</div>
						
							<div class="col-md-12 mb-1" style="margin-top: 15px">
							<div class="form-group">
								<form:label path="ciudad">Ciudad: </form:label>
								<form:input path="ciudad" placeholder="Ingrese Ciudad: "
									class="form-control" />
								<form:errors path="ciudad" style="color:red" />
							</div>
						</div>

						<form:button Class="btn btn-success">Agregar</form:button>
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>