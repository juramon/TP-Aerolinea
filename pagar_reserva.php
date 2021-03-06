<?php
	require_once("/conexion.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="shortcut icon" href="images/favicon.ico">
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_italic_400.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jqueryui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script type="text/javascript" src="js/validaciones.js"></script>
<!-- Supersized slider background -->
<link rel="stylesheet" href="css/supersized.css" type="text/css" media="screen" />
<script type="text/javascript" src="js/supersized.3.2.7.min.js"></script>
<script type="text/javascript">
	jQuery(function($){
		$.supersized({
			// Functionality
			slide_interval          :   3000,		// Length between transitions
			transition              :   1, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
			transition_speed		:	700,		// Speed of transition
												   
			// Components							
			slide_links				:	'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
			slides 					:  	[			// Slideshow Images
												{image : 'images/bg_img1.jpg'},  
												{image : 'images/bg_img2.jpg'}, 
												{image : 'images/bg_img3.jpg'},
												{image : 'images/bg_img4.jpg'}, 
												{image : 'images/bg_img5.jpg'}, 
												{image : 'images/bg_img6.jpg'},  
										]
		});
    });
</script>
<!-- END Supersized -->

<script>
$(function() {
$( ".datepicker" ).datepicker();
});
</script>

<title>Aerolinea Universitaria</title>	
</head>
<body>
	<div id="header">
		<div class="wrapper">
			<a href="index.php"><div id="logo"></div></a>
			<div class="navbar">
				<ul id="menu">
					<li><a href="index.php">Home</a></li>
					<li><a href="destinos.html">Destinos</a></li>
					<li id="menu_active"><a href="pagos.php">Pagos</a></li>
					<li><a href="checkinn.php">Check inn</a></li>
					<li><a href="contacto.html">Contacto</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper">
		<div id="formulariopagos">
			<div id="formpagarreserva">
				<form action="pago_fin.php" method="post" onSubmit="return validar_pagarreserva()">
					<?php
					$codigo = $_POST['codigo'];
					$query="SELECT r.id as id, r.id_pasajero as id_pasajero, r.id_vuelo as id_vuelo, r.id_categorias as id_categorias, r.fecha as fecha, p.nombre as nombre_pas, a.nombre as aer_origen, aer.nombre as aer_destino, r.id_categorias as categ, v.precio_economy as economy, v.precio_primera as primera
							FROM reservas as r join pasajeros as p on r.id_pasajero=p.id join vuelos as v on r.id_vuelo=v.id join aeropuertos as a on a.id=v.id_origen join aeropuertos as aer on aer.id=v.id_destino join categorias as c on c.id=r.id_categorias
							WHERE r.id='$codigo'";
					$result=mysqli_query($link, $query);
					$numero_filas = mysqli_num_rows($result);
					if ($numero_filas==null){
					echo'<p>La reserva no existe</p>';
					echo'<a href="pagos.php"><p>Volver</p></a>';
					echo exit;
					} else{
					$row = mysqli_fetch_object($result);
							echo '<input type="hidden" name="id" value="' . $row->id . '" />';
							echo '<input type="hidden" name="id_pasajero" value="' . $row->id_pasajero . '" />';
							echo '<input type="hidden" name="id_vuelo" value="' . $row->id_vuelo . '" />';
							echo '<input type="hidden" name="id_categorias" value="' . $row->id_categorias . '" />';
							echo '<input type="hidden" name="fecha" value="' . $row->fecha . '" />';
							echo '<input type="hidden" name="codigo" value="' . $codigo . '" />';
					}
					?>
					<p>Pago pendiente</p>
					<br/>
					<?php
					echo'<ul>'; 
					echo'<li>Nombre: <span class="spanlista">' . $row->nombre_pas . ' </span></li>';
					echo'<li>Origen: <span class="spanlista">' . $row->aer_origen . ' </span></li>';
					echo'<li>Destino: <span class="spanlista">' . $row->aer_destino . ' </span></li>';
						if($row->categ=1){
							echo'<li>Precio: <span class="spanlista">' . $row->economy . ' </span></li>';
						} else {
								echo'<li>Precio: <span class="spanlista">' . $row->primera . ' </span></li>';
							}
					echo'</ul>';
					?>
					<br/>
					<p>Ingrese los datos de su tarjeta de credito</p>
					<br/>
					<label>Nombre y Apellido</label>
					<input type="text" id="nombre" name="nombre" />
					<br/><br/>
					<label>Tipo de Tarjeta</label>
					<select id="tipotarjeta" name="tipotarjeta">
						<option value="">Seleccione...</option>
						<option value="Visa">Visa</option>
						<option value="Amex">Amex</option>
						<option value="MasterCard">Mastercard</option>
					</select>
					<br/><br/>
					<label>Número de tarjeta</label>
					<input type="text" id="numtarjeta" name="numtarjeta" />
					<br/><br/>
					<label>Código de seguridad</label>
					<input type="text" id="codseguridad" name="codseguridad" />
					<br/><br/>
					<input type="submit" value="Pagar" id="botonverif" />

				</form>
			</div>
		</div>
	</div>
</body>
</html>