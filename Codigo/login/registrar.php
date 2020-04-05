<?php
	include('config.php');
	$nombres = $_POST['nombres'];
	$apellidos = $_POST['apellidos'];
	$email = $_POST['email'];
	$pass = $_POST['pass'];
	$rpass = $_POST['rpass'];
	$sexo = $_POST['sexo'];

	$int_db = mysqli_query($con,"INSERT INTO prueba_2 VALUES ('','$nombres','$apellidos','$email','$pass','$rpass','$sexo')");

	if ($int_db == true) {
		header('location: reg_cptl.php');
	}

?>
