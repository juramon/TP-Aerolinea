function validar_formindex(){
	if(document.getElementById('origen').value==document.getElementById('destino').value){
		alert("Lugar de origen no puede ser el mismo que el de destino");
	return false;
   }
   else{
    return true;
   }
}