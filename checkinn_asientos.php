<?php
	require_once("/conexion.php");

function dameFecha($fecha,$dia)
{   list($year,$mon,$day) = explode('-',$fecha);
    return date('Y-m-d',mktime(0,0,0,$mon,$day+$dia,$year));        
}
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
					<li><a href="pagos.php">Pagos</a></li>
					<li id="menu_active"><a href="checkinn.php">Check inn</a></li>
					<li><a href="contacto.html">Contacto</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="wrapper">
		<div id="formulariopagos">
			<div id="formpagarreserva">
				<form action="guardar_asiento.php" method="post" onSubmit="return validar_pagarreserva()">
					<?php
					$codigo = $_POST['codigo'];
					$fechaactual=strftime( "%Y-%m-%d", time() );
					$query="SELECT fecha as fechavuelo, id_vuelo as vuelo, id_categorias as categoria, id_reserva
							FROM pasajes
							WHERE id_reserva='$codigo'";

					$result=mysqli_query($link, $query);
					$row = mysqli_fetch_object($result);
					$numero_filas = mysqli_num_rows($result);

					$fechacheck2=dameFecha($row->fechavuelo,-2);
					$fechacheck1=dameFecha($row->fechavuelo,-1);
					$fechacheck0=dameFecha($row->fechavuelo,0);

					if ($numero_filas==null){
					echo'<p>Usted todavia no ha pagado su reserva, por favor realice su pago <a href="pagos.php">aqui</a></p>';
					} else if($fechaactual==$fechacheck2||$fechaactual==$fechacheck1||$fechaactual==$fechacheck0){
						echo'<p>Seleccione su asiento</p>';
						echo'<table>';
						echo'<tr>';
						  echo'<td>1<input type="radio" value="1" name="asiento"/></td>';
						  echo'<td>2<input type="radio" value="2" name="asiento"/></td>';
						  echo'<td>3<input type="radio" value="3" name="asiento"/></td>';
						echo'</tr>';
						echo'<tr>';
						  echo'<td>4<input type="radio" value="4" id="4" name="asiento"/></td>';
						  echo'<td>5<input type="radio" value="5" id="5" name="asiento"/></td>';
						  echo'<td>6<input type="radio" value="6" id="6" name="asiento"/></td>';
						echo'</tr>';
						echo'<tr>';
						  echo'<td>7<input type="radio" value="7" id="7" name="asiento"/></td>';
						  echo'<td>8<input type="radio" value="8" id="8" name="asiento"/></td>';
						  echo'<td>9<input type="radio" value="9" id="9" name="asiento"/></td>';
						echo'</tr>';
						echo'<tr>';
						  echo'<td>10<input type="radio" value="10" id="10" name="asiento"/></td>';
						  echo'<td>11<input type="radio" value="11" id="11" name="asiento"/></td>';
						  echo'<td>12<input type="radio" value="12" id="12" name="asiento"/></td>';
						echo'</tr>';
						echo'</table>';
					}
						else {
							echo'<p>El checkinn solo puede realizarse 48 antes del despegue</p>';
							exit;
						}
						echo'<input type="hidden" id="codigo" name="codigo" value="' . $codigo . '" />';
						echo'<input type="hidden" id="fechavuelo" name="fechavuelo" value="' . $row->fechavuelo . '" />';
						echo'<input type="hidden" id="vuelo" name="vuelo" value="' . $row->vuelo . '" />';
						echo'<input type="hidden" id="categoria" name="categoria" value="' . $row->categoria . '" />';
					?>
					<input type="submit" value="reservar" id="botonverif" />

				</form>
			</div>
		</div>
	</div>
</body>
</html>