var error="";
var expRegularEmail=/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/;

function validar_formindex(){
	if(document.getElementById('origen').value==document.getElementById('destino').value){
		alert("Lugar de origen no puede ser el mismo que el de destino");
		return false;
   	}
	else if(document.getElementById('categoria').value==0){
   			alert("Debe seleccionar una categoria");
   			return false;
   		} 
   		else
    	return true;
}

function validar_vuelos(){
  if(!$("input[name=selectvuelo]:checked").val()) {
  alert("Debe elegir al menos un vuelo");
  return false;
  }
  else
  return true;
} 

function validar_datos(){
  if(document.getElementById('nombre').value==0){
    error+="Ingrese su nombre completo\n";
  }

  if(document.getElementById('nombre').value==0){
    error+="Ingrese su numero de documento\n";
  }

  if(document.getElementById('fechanac').value==0){
    error+="Ingrese su fecha de nacimiento\n";
  }

  if(document.getElementById('email').value==0){
    error+="El email no puede estar vacio\n";
  } else if(document.getElementById('email').value.match(expRegularEmail)){
    } else {error+="Email no valido\n";}

  if(error!=""){
    alert(error);
    error="";
    return false;
  } else alert("Reserva exitosa");
      return true;
}
