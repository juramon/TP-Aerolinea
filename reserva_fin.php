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
		<div id="formulario">
			<div id="formpago">
				<?php
					$nombre = $_POST['nombre'];
					$dni = $_POST['dni'];
					$fecha = $_POST['fecha'];
					$correo = $_POST['correo'];
					$id_vuelo = $_POST['id_vuelo'];
					$id_categorias = $_POST['id_categorias'];
					$idaovuelta = $_POST['idaovuelta'];
					$fechaida = $_POST['fechaida'];
					$fechavuelta = $_POST['fechavuelta'];
					$fechaida = date("Y-m-d");
					$fechavuelta = date("Y-m-d");
					
					$query="Insert Into pasajeros (nombre, dni, fecha, correo) Values ('$nombre','$dni','$fecha','$correo')";
					mysqli_query($link, $query);

					$query="SELECT p.id
							FROM pasajeros as p
							WHERE dni='$dni'";

					$result=mysqli_query($link, $query);
					$row = mysqli_fetch_object($result);
					$id_pasajero=$row->id;

					if($idaovuelta=="soloida"){
					$query="Insert Into reservas (id_pasajero, id_vuelo, id_categorias, fecha_vuelo) Values ('$id_pasajero','$id_vuelo','$id_categorias', '$fechaida')";
					} else {
					$query="Insert Into reservas (id_pasajero, id_vuelo, id_categorias, fecha_vuelo) Values ('$id_pasajero','$id_vuelo','$id_categorias', '$fechaida'), ('$id_pasajero','$id_vuelo','$id_categorias', '$fechavuelta')";
					}
					mysqli_query($link, $query);

// ver tema del numero de reserva
					$query="SELECT MAX(id) as id_reserva
							FROM reservas";
					$result=mysqli_query($link, $query);
					$row = mysqli_fetch_object($result);
					$id_de_reserva = $row->id_reserva;

					echo'<p>Reserva realizada con exito</p>';
					echo'<p>Su numero de reserva es: ' . $id_de_reserva . '</p>';
				?>
			</div>
		</div>
	</div>
</body>
</html>