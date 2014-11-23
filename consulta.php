<!doctype html>
<html>
<head>
<title>Listado de artículos</title>
</head>  
<body> 
  <div>
<?php
			$link=mysqli_connect("localhost","root","", "aerolineas");
			if(mysqli_connect_errno()!=0)
			{
			echo mysqli_connect_error();
			die();
			}
			$origen = $_POST['origen'];
			$destino = $_POST['destino'];
			$query="select aerop_origen, aerop_destino, precio_econ, precio_prim from vuelos where aerop_origen='$origen' and aerop_destino='$destino'";
			$result=mysqli_query($link, $query);
			
		
			while($row = mysqli_fetch_object($result))
				{
					echo'<ul>'; 
					echo'<li class="menua">' . $row->aerop_origen . $row->aerop_destino . $row->precio_econ . $row->precio_prim . '</li>';
					echo'</ul>'; 
				}
			
			?>
		</div>
</body> 
</html> 