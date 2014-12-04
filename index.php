<?php
	$admin = "admin";
	$clave = "admin";
	if(isset($_POST['usuario']) && isset($_POST['pass'])){
		if(($_POST['usuario'] == $admin) && ($_POST['pass'] == $clave)){
		session_start();
		$_SESSION['log'] = true;
		header('location:pag/admin.php');
		}
	}
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

<script>
$.datepicker.regional['es'] = {
monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sabado'],
};
$.datepicker.setDefaults($.datepicker.regional['es']);
$(function() {
$( ".datepicker" ).datepicker({ dateFormat: "DD, d MM, yy" });
});
</script>

<script>
$(function() {
var availableTags = [
"Alto Rio Senguer",
"Azul",
"Bahia Blanca",
"Bariloche",
"Bolivar",
"Buenos Aires",
"Campo de Mayo",
"Caviahue",
"Ceres",
"Chamical",
"Chepes",
"Chilecito",
"Clorinda",
"Comodoro Rivadavia",
"Cordoba",
"Concordia",
"Coronel Suarez",
"Corrientes",
"Curuzu Cuatia",
"Cutral Co",
"Dolores",
"Don Torcuato",
"El Bolson",
"El Calafate",
"El Palomar",
"Esquel",
"Ezeiza",
"Formosa",
"General Alvear",
"General Pico",
"General Roca",
"Ingeniero Jacobacci",
"Isla Martin Garcia",
"Jose C Paz",
"Junin",
"Laboulaye",
"La Cumbre",
"La Plata",
"La Rioja",
"Las Heras",
"Las Lomitas",
"Malargue",
"Mar del Plata",
"Mendoza",
"Merlo",
"Miramar",
"Monte Caseros",
"Moron",
"Necochea",
"Neuquen",
"Olavarria",
"Parana",
"Paso de los Libres",
"Pehuajo",
"Perico",
"Perito Moreno",
"Posadas",
"Puerto Deseado",
"Puerto Iguazu",
"Puerto Madryn",
"Puerto San Julian",
"Puerto Santa Cruz",
"Presidencia Roque Saenz Pena",
"Reconquista",
"Resistencia",
"Rio Cuarto",
"RIo Gallegos",
"Rio Grande",
"Rio Turbio",
"Rosario",
"Salta",
"San Fernando",
"San Fernando del Valle de Catamarca",
"San Juan",
"San Luis",
"San Rafael",
"San Ramon de la Nueva Oran",
"San Justo",
"San Miguel de Tucuman",
"Santa Rosa",
"Santa Teresita",
"Santiago del Estero",
"San Martin de los Andes",
"Sauce Viejo",
"Sunchales",
"Tandil",
"Tartagal",
"Termas de Rio Hondo",
"Trelew",
"Tres Arroyos",
"Ushuaia",
"Viedma",
"Villa Dolores",
"Villa Gesell",
"Villa Reynolds",
"Villaguay",
"Zapala"
];
$( ".inputdestinos" ).autocomplete({
source: availableTags
});
});
</script>

<title>Aerolinea Universitaria</title>	
</head>
<body>
	<div id="header">
		<div class="wrapper">
			<div id="login">
				<form action="index.php" method="post">
				<label>Usuario:</label>
				<input class="loginp" type="text" name="usuario"/>
				<label>Contrase&ntilde;a:</label>
				<input class="loginp" type="text" name="pass"/>
				<input type="button" value="Ingresar" id="botonlogin" />
		        </form>
	    	</div>
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
		<div id="formulario">
			<form name="reservas" action="consulta.php" method="post" id="reservas" onSubmit="return validar_formindex()">
				<div class="cajasform">
					<h4><span class="numeros">01</span> Vuelo</h4>
					<br/>
					<input type="radio" value="soloida" name="idaovuelta" id="idaovuelta" class="radios" checked/>
					<label>Ida</label>
					<input type="radio" value="idavuelta" name="idaovuelta" id="idaovuelta" class="radios"/>
					<br/>
					<label>Ida+Vuelta</label>
					<br/>
					<label>Categoria:</label>
					<select class="selectcat" name="categoria" id="categoria">
						<option value="0"></option>
						<option value="econ">Economy</option>
						<option value="pri">Primera</option>
					</select>
				</div>
				<div class="separador">
				</div>
				<div class="cajasform">
					<h4><span class="numeros">02</span> Destinos</h4>
					<br/>
					<label>Origen</label>
					<input type="text" placeholder="" class="inputdestinos" id="origen" name="origen" />
					<br/>
					<label>Destino</label>
					<input type="text" placeholder="" class="inputdestinos" id="destino" name="destino" />
				</div>
				<div class="separador">
				</div>
				<div class="cajasform">
					<h4><span class="numeros">03</span> Fecha</h4>
					<br/>
					<label>Desde</label>
					<input type="text" class="datepicker" name="fechaida" class="fechaida" id="fechaida" />
					<label>Hasta</label>
					<input type="text" class="datepicker" name="fechavuelta" class="fechavuelta" id="fechavuelta"/>
				</div>
				<div class="separador">
				</div>
				<div class="cajasform">
					<h4><span class="numeros">04</span> Pasajeros</h4>
					<br/>
					<div class="cajanumeros">
						<label class="labelnum">Adulto(s)</label>
						<select class="selectnum" name="">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
						</select>
					</div>
					<div class="cajanumeros">
						<label class="labelnum">Niño(s)</label>
						<select class="selectnum" name="">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
						</select>
					</div>
					<div class="cajanumeros">
						<label class="labelnum">Bebe(s)</label>
						<select class="selectnum" name="">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
						</select>
					</div>
				</div>
				<br/>
				<input type="submit" value="Buscar" id="boton" />
			</form>
		</div>
	</div>

</body>
</html>