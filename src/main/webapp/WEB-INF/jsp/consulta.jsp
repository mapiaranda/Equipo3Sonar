<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script src=" https://code.jquery.com/jquery.js">	
</script>
<script
	src=" https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
	
</script>
<link rel="stylesheet"
	href=" https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta http-equiv="content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/estilos.css">
<title>Consulta Fichajes</title>
</head>
<style>
html, body {
	/* Aquí el origen de la imagen */
	background-image:
		url(https://i2.wp.com/plagi.es/wp-content/uploads/2016/01/FONDO-Web-2016-OK-1.jpg);
	/* Fijar la imagen de fondo este vertical y
    horizontalmente y centrado */
	background-position: center center;
	/* Esta imagen no debe de repetirse */
	background-repeat: no-repeat;
	/* COn esta regla fijamos la imagen en la pantalla. */
	background-attachment: fixed;
	/* La imagen ocupa el 100% y se reescala */
	background-size: cover;
	/* Damos un color de fondo mientras la imagen está cargando  */
	background-color: #464646;
}


tr:hover {
	background-color: #D5D5D5;
}

table {
	font-size: 15px;
	width: 50%;
	height: 150px;
	text-align: center;
	border: 3px solid black;
}


.centerTable{
        text-align: center;
}

 

.centerTable table {
       margin: 0 auto;
       text-align: left;
}

</style>
<jsp:include page="menu.jsp" />
<body>
	<p>
	<h2 align="center">Listado de fichajes</h2>
	</p>
	<p>
	
	<div class="centerTable">
	<form action="consulta.htm" method="post">
		<table>
			<thead bgcolor="#c0d6e4">
				<tr>
					<th>Fecha</th>
					<th>Apertura</th>
					<th>Cierre</th>
					<th>Estado</th>
				</tr>
			</thead>
			<tbody bgcolor="#f5f5f5">
				<c:forEach var="fich" items="${fichajes}">
					<tr>
						<td>${fich.fechaFichaje}</td>
						<td>${fich.horaEntrada}</td>
						<td>${fich.horaCierre}</td>
						<td>${fich.estado}</td>
				</c:forEach>
			</tbody>
		</table>
	</form>
	</p>
	</div>

</body>

</html>