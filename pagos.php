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
			<a href="index.html"><div id="logo"></div></a>
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
				<p>Pagar</p>
				<br/>
					<form action="pagar_reserva.php" method="post" onSubmit="return validar_formpagos()">
						<label>Ingrese código de reserva</label>
						<input type="text" id="codigo" name="codigo" class="codigo" />
						<br/><br/>
						<input type="submit" value="Verificar" id="botonverif" />
					</form>
			</div>
		</div>
	</div>
</body>
</html>