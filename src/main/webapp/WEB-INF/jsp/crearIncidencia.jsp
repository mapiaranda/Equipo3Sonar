<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Crear incidencia</title>
<script src=" https://code.jquery.com/jquery.js">	
</script>
<script
	src=" https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js">
	
</script>
<link rel="stylesheet"
	href=" https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta http-equiv="content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/estilos.css">

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script>
	$.datepicker.regional['es'] = {
		closeText : 'Cerrar',
		prevText : '< Ant',
 		nextText: 'Sig >',
		currentText : 'Hoy',
		monthNames : [ 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
				'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre',
				'Diciembre' ],
		monthNamesShort : [ 'Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul',
				'Ago', 'Sep', 'Oct', 'Nov', 'Dic' ],
		dayNames : [ 'Domingo', 'Lunes', 'Martes', 'Mi�rcoles', 'Jueves',
				'Viernes', 'S�bado' ],
		dayNamesShort : [ 'Dom', 'Lun', 'Mar', 'Mi�', 'Juv', 'Vie', 'S�b' ],
		dayNamesMin : [ 'Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'S�' ],
		weekHeader : 'Sm',
		dateFormat : 'dd/mm/yy',
		firstDay : 1,
		isRTL : false,
		showMonthAfterYear : false,
		yearSuffix : ''
	};
	$.datepicker.setDefaults($.datepicker.regional['es']);
	$(function() {
		$("#fecha").datepicker();
	});
</script>

<script>
	$(function() {
		$("#fechaInicio").datepicker({
			minDate : 0,
			onClose : function(selectedDate) {
				$("#fechaFin").datepicker("option", "minDate", selectedDate);
			}
		});
		$("#fechaFin").datepicker(
				{	
					onClose : function(selectedDate) {
					$("#fechaInicio").datepicker("option", "maxDate",
								selectedDate);
					}
				});
	});
</script>

<script>
	$(document).ready(function() {
		$("select[name=tipoIncidencia]").change(function() {
			alert($('select[name=tipoIncidencia]').val());
			$('input[name=tipo]').val($(this).val());
		});
	});
</script>

</head>
<style>
body {
	/* Aqu� el origen de la imagen */
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
	/* Damos un color de fondo mientras la imagen est� cargando  */
	background-color: #464646;
	font-family: helvetica;
}
	


.form {width 450px;
	margin: auto;
	baackground: rgba(0, 0, 0, 0.4);
	padding: 10px 20px;
	box-sizing: border-box;
	margin-top: 20px;
	border-radtios: 7px;
}

.h2 {
	color: #31384A;
	text-align: center;
	margin: 0;
	font-size: 40px;
	margin-botton: 20px;
}

.input {
	width: 100%;
	margin-botton: 20px;
	padding: 2px;
	box-sizing: border-box;
	font-size: 17px;
	border: none;
}

.textarea {
	width: 100%;
	margin-botton: 20px;
	padding: 2px;
	box-sizing: border-box;
	font-size: 17px;
	border: outset;
	min-height: 100px;
	max-height: 200px;
	max-width: 100%;
}

.boton {
	width: 100%;
	background: #31384A;
	color: #fff;
	padding: 20px;
	font-size: 17px;
}

.boton:hover {
	cursor: pointer;
}

@media ( max-width :480px) {
	form {
		width: 100%;
	}
}

.caja {
	margin: 20px auto 40px auto;
	border: 1px solid #d9d9d9;
	height: 30px;
	overflow: hidden;
	width: 230px;
	position: relative;
}

.select {
	background: white;
	border: outset;
	font-size: 14px;
	height: 30px;
	padding: 5px;
	width: 250px;
}

.select:focus {
	outline: none;
}

.caja::after {
	content: "\025be";
	display: table-cell;
	padding-top: 7px;
	text-align: center;
	width: 30px;
	height: 30px;
	background-color: #31384A;
	position: absolute;
	top: 0;
	right: 0px;
	pointer-events: none;
}

.fechas {
	background-color: #31384A;
	font-size: 14px;
	border: outset;
	margin: 20px auto 40px auto;
	height: 200px;
	width: 500px;
	overflow: hidden;
	width: 230px;
	position: relative;
	color: white;
	text-align: center;
	padding: 20px;
}

.transparente {
	background-color: transparent;
	border: 1px solid #000000;
	color: transparent;
	border: none;
}
</style>
<jsp:include page="menu.jsp" />
<body>
<div>


		<form action="registrarIncidencia.htm" class="form" method="post">
			<h2 class="h2">INCIDENCIAS</h2>
			<br></br>
			<div class="caja caja::after">
				<select name="tipoIncidencia" class="select select:focus" required>
					<option>--Tipo de incidencia--</option>
					<option value="Vacaciones">Solicitar vacaciones</option>
					<option value="Bajas Medicas">Comunicar bajas m�dicas</option>
					<option value="Ausencias">Justificar ausencias</option>
					<option value="Errores">Comunicar errores en el marcaje</option>
				</select>
			</div>
			<input type="text" name="tipo" size="40" class="transparente"
				value=""> <br></br>

			<div class="fechas">
				<label>Fecha de inicio</label> 
				<input type="text" name="fechaInicio" id="fechaInicio" placeholder="dd/mm/yy" required><br></br> 
				<label>Fecha de fin</label> 
				<input type="text" name="fechaFin" id="fechaFin" placeholder="dd/mm/yy" required>
			</div>
			<br></br>
			<textarea class="textarea" name="comentario"
				placeholder="Observaciones" required></textarea>

			<input type="submit" class="boton boton:hover" value="ENVIAR"
				name="botonEnviar">

		</form>	
			<br></br>
	</div>
</body>

</html>
