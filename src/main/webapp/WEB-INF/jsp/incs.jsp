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

 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>


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

.boton-resolver {
	text-decoration: none;
	font-weight: 600;
	font-size: 20px;
	color: black;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 40px;
	padding-right: 40px;
	background-color: #c0d6e4;
	border-color: #d8d8d8;
	border-width: 3px;
	border-style: solid;
	border-radius: 35px;
}

.boton-cerrar {
	text-decoration: none;
	font-weight: 600;
	font-size: 20px;
	color: white;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 40px;
	padding-right: 40px;
	background-color: red;
	border-color: #d8d8d8;
	border-width: 3px;
	border-style: solid;
	border-radius: 35px;
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
	<form name="fichs" method="post">
		<table align="center" border="1"width: 100% id="tab">
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
		<br></br>
		<input name="fechaFichaje" id="fechaFich" value="" style="display: none">
		<input name="horaEntrada" id="horaEnt" value="" style="display: none">
		<input name="horaCierre" id="horaCierr" value="" style="display: none">
		<input name="estado" id="est" value="" style="display: none">
		<input name="id" id="id" value="${id}" style="display: none">
		<input name="mail" id="mail" value="${mail}" style="display: none">
		<p>
		<input class="btn boton-resolver" type="submit" value="Editar fichaje"
			onclick="gestionarFichajes()">
			</p>

	</form>
	
	</div>
	

	

</body>
<script type="text/javascript">
var seleccionado = null; //tendremos la fila necesaria
function onclickHandler() {
	if (seleccionado == this) {
		this.style.backgroundColor = "transparent";
		seleccionado = null;
	} else {
		if (seleccionado != null)
			seleccionado.style.backgroundColor = "transparent";
		this.style.backgroundColor = "#D5D5D5";
		seleccionado = this;
	}
}
var fil = document.getElementById("tab").getElementsByTagName("tr");
for (var i = 0; i < fil.length; i++) {
	fil[i].onclick = onclickHandler;
}
function gestionarFichajes(){
	
	if (seleccionado == null) {
		alert("Seleccione una fila haciendo click sobre ella");
		document.fichs.action="incis.htm";
	}
	else{
	var f = seleccionado.getElementsByTagName('td');
	
	document.getElementById("fechaFich").value = f[0].textContent;
	document.getElementById("horaEnt").value = f[1].textContent;
	document.getElementById("horaCierr").value = f[2].textContent;
	document.getElementById("est").value = f[3].textContent;
	document.fichs.action ="formFich.htm";
	
	}
}
	

</script>
</html>