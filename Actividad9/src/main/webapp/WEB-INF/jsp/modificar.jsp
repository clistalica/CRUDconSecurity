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
		

		<div class="container" >
			<div class="col-md-10 mb-1"
				style="margin-top: 20px; margin-left: 9%;">

				<h3 Style="text-align: center; margin-top: 30px;">Modificar Cliente Registrado</h3>
				<br> <br>
				<form:form action="modificarC" modelAttribute="cliente" method="POST" role="form">

					<div class="form-row" style="background-color: rgb(180, 180, 180, 0.5)">

						<div class="col-md-6 mb-1" style="margin-top: 30px">
							<div class="form-group">
								<label>Rut: ${cl.rut}</label>
								<form:hidden path="rut" value = "${cl.rut}"
									class="form-control" maxlength="8"/>
								<form:errors path="rut" style="color:red"/> 
							</div>
						</div>
						
						<div class="col-md-6 mb-1" style="margin-top: 30px">
							<div class="form-group">
								<label>Digito Verificador: ${cl.dv}</label>
								<form:hidden path="dv" value = "${cl.dv}"
									class="form-control" maxlength="1"/>
								<form:errors path="dv" style="color:red"/>
							</div>
						</div>
						
						<div class="col-md-6 mb-1" style="margin-top: 5px">
							<div class="form-group">
								<label>Nombre: ${cl.nombre}</label>
								
								<form:hidden path="nombre" value = "${cl.nombre}"
									class="form-control" maxlength="20"/>
								<form:errors path="nombre" style="color:red"/>
							</div>
						</div>
						
						<div class="col-md-6 mb-1" style="margin-top: 5px">
							<div class="form-group">
								<label>Apellido: ${cl.apellido}</label>
								<form:hidden path="apellido" value = "${cl.apellido}"
									class="form-control" maxlength="20"/>
								<form:errors path="apellido" style="color:red"/>
							</div>
						</div>
					<br>
					
					
						
							<div class="col-md-6 mb-1" style="margin-top: 5px">
							<div class="form-group">
								<form:label path="direccion">Direccion: </form:label>
								<form:input path="direccion" placeholder="Ingrese Direccion: " value = "${cl.direccion}"
									class="form-control" maxlength="50"/>
								<form:errors path="direccion" style="color:red"/>
							</div>
						</div>

							<div class="col-md-6 mb-1" style="margin-top: 5px">
							<div class="form-group">
								<form:label path="ciudad">Ciudad: </form:label>
								<form:input path="ciudad" placeholder="Ingrese Ciudad: " value = "${cl.ciudad}"
									class="form-control" maxlength="30" />
								<form:errors path="ciudad" style="color:red"/>
							</div>
						</div>
						<form:button class="btn btn-success" style=" margin-left: 88%; magin-bottom: 10%">Modificar</form:button>
						<br>
				</form:form>
			</div></div>
		</div>
	</div>
</body>
</html>