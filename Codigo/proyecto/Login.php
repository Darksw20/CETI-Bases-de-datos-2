<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Login-Organizador</title>
	<style type="text/css">
		body{
			background-image: url("DSC_01653.jpg");
			background-size: 100%; 
		}
		form{
			height: 25%;
			width: 400px;
			background-color: MediumSeaGreen;
			margin: auto;
			padding: 20px;
			border-radius: 10px;
			margin-top: 20%;
			display: block;
		}
		img{

		}
		
		.mini{
			margin-top: 10px; 
		}

	</style>
</head>
<body>
	
	<form id="main"  action="main_Logueado.php" method="POST"> 
		<center>
				<img src="guia_estilos-08.png">
				<INPUT type="text" Required name="codigo" placeholder="CUM...">
				<br><br>
				<INPUT type="password" Required name="nombre" placeholder="Contraseña...">
				<br><br>
				<INPUT TYPE="submit" VALUE="Iniciar sesion">
		</center>
	</form>

	<form class="mini" action="Invitado.php" method="POST">
		<input type="submit" name="Invitado" value="Invitado">
	</form>

</body>
</html>
