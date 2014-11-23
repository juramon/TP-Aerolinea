<?php
class DataBase {
private $localhost;
private $usuario;
private $password;
private $base;
private $conexion;
private $array_ini;
public function __construct(){
$this->array_ini = parse_ini_file("configuracion.ini");
$this->localhhost=$this->array_ini["localhost"];
$this->usuario= $this->array_ini["usuario"];
$this->password= $this->array_ini["password"];
$this->base = $this->array_ini["database"];
$this->conexionConBaseDatos();
}
private function conexionConBaseDatos(){
$this->conexion = mysql_connect($this->localhost,$this->usuario,$this->password,"") or die ("no se pudo realizar conexion");
}
public function consulta($sql){
$db = mysql_select_db($this->base,$this->conexion) or die ("no se pudo seleccionar base de datos");
$consulta = mysql_query($sql,$this->conexion) or die ("no se pudo hacer insercion");
return $consulta;
}
 public function resultToArray($resultado) {
        $lista = array();
        // Recorro el resultado
        while ($fila = mysql_fetch_assoc($resultado)) {
            // Agrego el array resultante a la lista
            $lista[] = $fila;
        }
        return $lista;
    }
public function cerrar(){
mysql_close($this->conexion);
}
}
?>