jQuery(document).on('submit','#formlg',function(event){
	event.preventDefault();

	jQuery.ajax({
		url: 'proyecto_Base_De_Datos/Login.php',
		type: 'POST'
		dataType 'jason',
		data: $(this),serialize(),
		beforeSend function(){

		}

	})

	.done(function(respuesta){
		console.log(respuesta);
	})

	.fail(function(resp){
		console.log(resp.responseText);
	})
	.always(function(){
		console.log("complete");
	});


});