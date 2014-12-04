<?PHP
	require_once("/conexion.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css" media="all">
<link rel="shortcut icon" href="images/favicon.ico">
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_italic_400.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jqueryui.js"></script>
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

<title>Aerolinea Universitaria</title>	
</head>
<body>
	<div id="header">
		<div class="wrapper">
			<a href="index.php"><div id="logo"></div></a>
			<div class="navbar">
				<ul id="menu">
					<li id="menu_active"><a href="index.php">Home</a></li>
					<li><a href="flota.html">Nuestra Flota</a></li>
					<li><a href="destinos.html">Destinos</a></li>
					<li><a href="checkinn.php">Check inn</a></li>
					<li><a href="contacto.html">Contacto</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper">
		<div id="formlista">
			<form name="seleccionvuelo" action="ingreso_datos.php" method="post" id="seleccionvuelo" onSubmit="return validar_vuelos()">
				<?php
					$origen = $_POST['origen'];
					$destino = $_POST['destino'];
					$idaovuelta = $_POST['idaovuelta'];
					$fechaida = $_POST['fechaida'];
					$fechavuelta = $_POST['fechavuelta'];
					$categoria = $_POST['categoria'];
					$diafechaida = substr($fechaida, 0, 2);
					$query="SELECT a.ciudad as origen, aer.ciudad as destino, v.precio_economy, v.precio_primera, av.modelo, vd.dia as diadevuelo
							FROM vuelos as v join aeropuertos as a on v.id_origen=a.id join aviones as av on v.id_avion=av.id join vuelo_dia as vd on v.id=vd.id_vuelo join aeropuertos as aer on v.id_destino=aer.id
							WHERE a.ciudad='$origen' and aer.ciudad='$destino' and vd.dia like '$diafechaida'";
					$result=mysqli_query($link, $query);
					
					//if (mysqli_fetch_object($result)==null){
					//	echo'<p>No hay vuelos disponibles</p>';
					//} else{
						while($row = mysqli_fetch_object($result))
						{
							echo'<input type="radio" value="seleccion" name="selectvuelo" id="selectvuelo" class="selectvuelo" value="1"/>';
							echo'<ul>'; 
							if($idaovuelta=="soloida"){
							echo'<li>Desde: <span class="spanlista">' . $row->origen . ' </span></li>';
							echo'<li>Hacia: <span class="spanlista">' . $row->destino . ' </span></li>';
								if($categoria=="pri"){
									echo'<li>Precio: <span class="spanlista">$' . $row->precio_primera . ' </span></li>';
								} else {
									echo'<li>Precio: <span class="spanlista">$' . $row->precio_economy . ' </span></li>';
								}
							echo'<li>Avion: <span class="spanlista">' . $row->modelo . ' </span></li>';
							echo'<li>Fecha: <span class="spanlista">' . $fechaida . '</span></li>';
							echo'</ul>';
							echo'<br/>';
							} else {
							echo'<p class="plista">Ida</p>';
							echo'<li>Desde: <span class="spanlista">' . $row->origen . '</span></li>';
							echo'<li>Hacia: <span class="spanlista">' . $row->destino . '</span></li>';
							echo'<li>Fecha: <span class="spanlista">' . $fechaida . '</span></li>';
							echo'<br/><br/>';
							echo'<p class="plista">Vuelta</p>';
							echo'<li>Desde: <span class="spanlista">' . $row->destino . '</span></li>';
							echo'<li>Hacia: <span class="spanlista">' . $row->origen . '</span></li>';
							echo'<li>Fecha: <span class="spanlista">' . $fechavuelta . '</span></li>';
								if($categoria=="pri"){
									echo'<li>Precio final: <span class="spanlista">$' . $row->precio_primera . '</span></li>';
								} else {
									echo'<li>Precio final: <span class="spanlista">$' . $row->precio_economy . '</span></li>';
								}
							echo'<br/><br/>';
							echo'</ul>'; 
							}
						echo'<br/>';
						echo'<input type="submit" value="Continuar" id="botoncont" />';
						}
					
				//}
				?>
			</form>
		</div>
	</div>
</body>
</html>