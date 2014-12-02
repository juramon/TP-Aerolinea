<?php

class Aeropuertos {
		public $id;
		public $c_oaci;
		public $nombre;
		public $ciudad;
		public $provincia;
		public $nombre;

		public function __construct($array) {
			$this->id = $array["id"];
			$this->c_oaci = $array["c_oaci"];
			$this->nombre = $array["nombre"];
			$this->ciudad = $ciudad["ciudad"];
			$this->provincia = $provincia["provincia"];
			$this->nombre = $nombre["nombre"];
		}
	}

class Aviones {
		public $c_avion;
		public $marca;
		public $modelo;
		public $total_pasajes;
		public $economy;
		public $primera;
		public $filas_prim;
		public $columnas_prim;
		public $filas_eco;
		public $columnas_eco;
	
		public function __construct($array) {
			$this->id = $array["c_avion"];
			$this->marca = $array["marca"];
			$this->modelo = $array["modelo"];
			$this->total_pasajes = intval($array["total_pasajes"]);
			$this->economy = intval($array["economy"]);
			$this->primera = intval($array["primera"]);
			$this->filas_prim = intval($array["filas_prim"]);
			$this->columnas_prim = intval($array["columnas_prim"]);
			$this->filas_eco = intval($array["filas_eco"]);
			$this->columnas_eco = intval($array["columnas_eco"]);
		}
	}

class Categorias {
		public $id;
		public $descripcion;

		public function __construct($array) {
			$this->id = $array["id"];
			$this->descripcion = $array["descripcion"];
		}
	}

class Pasajero {
	public $dni;
	public $nombre;
	public $fecha_nac;
	public $email;

	public function __construct($array) {
		$this->dni = $array["dni"];
		$this->nombre = $array["nombre"];
		$this->fecha_nac = $array["fecha_nac"];
		$this->email = $array["email"];
	}
}

	class Vuelos {
		public $id;
		public $c_oaci_origen;
		public $c_oaci_destino;
		public $origen;
		public $precio_economy;
		public $precio_primera;
		public $origen;
		public $destino;
		public $avion;
		
		public function __construct($array, $origen, $destino, $avion) {
			$this->id = $array["id"];
			$this->precio_economy = $array["precio_economy"];
			$this->precio_primera = $array["precio_primera"];
			$this->origen = $origen;
			$this->destino = $destino;
			$this->avion = $avion;
		}
	}

	class Reservas {
		public $id;
		public $pasajero;
		public $vuelo;
		public $categoria;
		public $fecha;
		public $enEspera;
		public $codigo;
		public $fechaVuelo;

		public function __construct($array, $pasajero, $vuelo, $categoria) {
			$this->id = $array["id"];
			$this->fecha = $array["fecha"];
			$this->enEspera = $array["en_espera"];
			$this->vuelo = $vuelo;
			$this->categoria = $categoria;
			$this->pasajero = $pasajero;
			$this->codigo = md5($array["id"]);
			$this->fechaVuelo = DateTimeImmutable::createFromFormat('Y-m-d h:i:s', $array["fecha_vuelo"]);
		}
	}

	class Pasaje {
		public $id;
		public $categoria;
		public $vuelo;
		public $pasajero;
		public $asiento;
		public $fecha;
		public $id_reserva;

		public function __construct($array, $categoria, $vuelo, $pasajero) {
			$this->id = $array["id"];
			$this->asiento = intval($array["asiento"]);
			$this->fecha = $array["fecha"];
			$this->id_reserva = $array["id_reserva"];
			$this->categoria = $categoria;
			$this->vuelo = $vuelo;
			$this->pasajero = $pasajero;
		}
	}

?>