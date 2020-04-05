<?php
	require('config.php');

	$email = !empty($_REQUEST['email'])?$_REQUEST['email']:'';
	$pass = !empty($_REQUEST['pass'])?$_REQUEST['pass']:'';

	$consulta = "SELECT * FROM prueba_2 WHERE email = '$email' and pass = '$pass'";
		echo $consulta."<br /><br />";
	$resultado = $con->query($consulta);

 	if($resultado->num_rows > 0){

 		$fila = $resultado->fetch_row();

		session_start();
		$_SESSION['email'] = $email;
		$_SESSION['nombres'] = $fila[1];
		header("Location: principal.php");

	}else{
		header("Location: index.php");
	}
?>
