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
<script type="text/javascript" src="js/validaciones.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />

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

<script>
$(function() {
var availableTags = [
"Alto Río Senguer",
"Azul",
"Bahía Blanca",
"Bariloche",
"Bolívar",
"Buenos Aires",
"Campo de Mayo",
"Caviahue",
"Ceres",
"Chamical",
"Chepes",
"Chilecito",
"Clorinda",
"Comodoro Rivadavia",
"Córdoba",
"Concordia",
"Coronel Suárez",
"Corrientes",
"Curuzú Cuatiá",
"Cutral-Co",
"Dolores",
"Don Torcuato",
"El Bolsón",
"El Calafate",
"El Palomar",
"Esquel",
"Ezeiza",
"Formosa",
"General Alvear",
"General Pico",
"General Roca",
"Ingeniero Jacobacci",
"Isla Martín García",
"José C. Paz",
"Junín",
"Laboulaye",
"La Cumbre",
"La Plata",
"La Rioja",
"Las Heras",
"Las Lomitas",
"Malargüe",
"Mar del Plata",
"Mendoza",
"Merlo",
"Miramar",
"Monte Caseros",
"Morón",
"Necochea",
"Neuquén",
"Olavarría",
"Paraná",
"Paso de los Libres",
"Pehuajó",
"Perico",
"Perito Moreno",
"Posadas",
"Puerto Deseado",
"Puerto Iguazú",
"Puerto Madryn",
"Puerto San Julián",
"Puerto Santa Cruz",
"Presidencia Roque Saenz Peña",
"Reconquista",
"Resistencia",
"Río Cuarto",
"Río Gallegos",
"Río Grande",
"Río Turbio",
"Rosario",
"Salta",
"San Fernando",
"San Fernando del Valle de Catamarca",
"San Juan",
"San Luis",
"San Rafael",
"San Ramón de la Nueva Orán",
"San Justo",
"San Miguel de Tucumán",
"Santa Rosa",
"Santa Teresita",
"Santiago del Estero",
"San Martín de los Andes",
"Sauce Viejo",
"Sunchales",
"Tandil",
"Tartagal",
"Termas de Río Hondo",
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
			<a href="index.html"><div id="logo"></div></a>
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
					<input type="radio" value="vuelo" name="ida" id="ida" class="radios"/>
					<label>Ida</label>
					<input type="radio" value="vuelo" name="ida" id="idavuelta" class="radios"/>
					<br/>
					<label>Ida+Vuelta</label>
					<br/>
					<label>Categoria:</label>
					<select class="selectcat" name="">
						<option value="pri">Primera</option>
						<option value="econ">Economy</option>
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
					<input type="text" class="datepicker" />
					<label>Hasta</label>
					<input type="text" class="datepicker"/>
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
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
						</select>
					</div>
					<div class="cajanumeros">
						<label class="labelnum">Niño(s)</label>
						<select class="selectnum" name="">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
						</select>
					</div>
					<div class="cajanumeros">
						<label class="labelnum">Bebe(s)</label>
						<select class="selectnum" name="">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
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