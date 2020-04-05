<?php
	include('config.php');
	$consulta = "SELECT * FROM prueba_2";
	$resultado = $con->query($consulta);

	while($usuarios = $resultado->fetch_assoc()){
		echo "{$usuarios['ID']} ";
		echo "{$usuarios['nombres']} ";
		echo "{$usuarios['apellidos']} ";
		echo "{$usuarios['email']} ";
		echo "{$usuarios['pass']} ";
		echo "{$usuarios['rpass']} ";
		echo "{$usuarios['sexo']} "."<br />";
	}
?>
