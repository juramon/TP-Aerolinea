<?php
require_once("/conexion.php");
require('/fpdf/fpdf.php');

//$codigo = $_POST['codigo'];
$codigo = '35';

$query="SELECT r.id as id, r.id_pasajero as id_pasajero, r.id_vuelo as id_vuelo, r.id_categorias as id_categorias, r.fecha as fecha, p.nombre as nombre_pas, a.nombre as aer_origen, aer.nombre as aer_destino, r.id_categorias as categ, v.precio_economy as economy, v.precio_primera as primera
		FROM reservas as r join pasajeros as p on r.id_pasajero=p.id join vuelos as v on r.id_vuelo=v.id join aeropuertos as a on a.id=v.id_origen join aeropuertos as aer on aer.id=v.id_destino join categorias as c on c.id=r.id_categorias
		WHERE r.id='$codigo'";
$result=mysqli_query($link, $query);
$numero_filas = mysqli_num_rows($result);

	$pdf = new FPDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();
	$pdf->SetFont('Arial', '', 22);
	$pdf->Cell("40", "10", "RESERVA", null, 2);
	$pdf->Cell("40", "10", "Codigo: {$reserva->codigo}", null, 2);
	$pdf->Cell("40", "10", "PASAJERO", null, 2);
	$pdf->Cell("40", "10", "Nombre: {$pasaje->pasajero->nombre}", null, 2);
	$pdf->Cell("40", "10", "Dni: {$pasaje->pasajero->dni}", null, 2);
	$pdf->Cell("40", "10", "VUELO", null, 2);
	$pdf->Cell("40", "10", "Origen: {$pasaje->vuelo->origen->ciudad->nombre}", null, 2);
	$pdf->Cell("40", "10", "Destino: {$pasaje->vuelo->destino->ciudad->nombre}", null, 2);
	$pdf->Cell("40", "10", "FECHA", null, 2);
	$pdf->Cell("40", "10", $reserva->fechaVuelo->format('d/m/Y h:i:s'), null, 2);
	//$pdf->Cell("40", "10", "Numero asiento: {$pasaje->asiento}", null, 2);
	$pdf->Cell("40", "10", "AVION", null, 2);
	$pdf->Cell("40", "10", "Marca: {$pasaje->vuelo->avion->marca}", null, 2);
	$pdf->Cell("40", "10", "Modelo: {$pasaje->vuelo->avion->modelo}", null, 2);
	$pdf->Cell("40", "10", "Categoria: {$pasaje->categoria->nombre}", null, 2);

	$pdf->Output();

?>