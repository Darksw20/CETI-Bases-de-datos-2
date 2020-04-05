<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Registro completado</title>
	<style type="text/css">
	*{
		color:#fff;
		font-size:12px;
		font-family:Century Gothic;
	}
	body{
		background:#454545;
	}
	.contenedor{
		width:90%;
	}
	.ingresar_bar{
		margin-left:10%;
		background:#920D00;
		border-radius:20px;
	}
	.ingresar{
		width:100%;
		text-align:left;
	}
	.ingresar input{
		background-color:rgb(56,56,56);
	}
	h1{
		margin:15%;
		text-align:center;
		font-size:1.6rem;
	}
	input{
		width:150px;
		margin:5px;
		padding:5px;
		border-radius:15px;
		background-color:rgba(80,80,80,.6);
		font-size:1.2rem;
		border:none;
		-webkit-transition: all 1s;
		-moz-transition: all 1s;
		-ms-transition: all 1s;
		-o-transition: all 1s;
		transition: all 1s;
	}
	label{
		font-size:1.5rem;
	}
	input:hover, input:focus{
		background-color:rgba(107,107,107,.9);
		-webkit-transition: all 1s;
		-moz-transition: all 1s;
		-ms-transition: all 1s;
		-o-transition: all 1s;
		transition: all 1s;
		outline:none;
	}
	</style>
</head>
<body>
	<h1>El registro ha sido completado exitosamente!</h1>

	<div class="contenedor">
		<div class="ingresar">
			<div class="ingresar_bar">
				<form action="procesaLogin.php" method="post" />
					<input type="text" placeholder="Correo electrónico" name="email" />
					<input type="password" placeholder="Contraseña" name="pass" />
					<input type="hidden" name="login">
					<input type="submit" id="iniciar" value="Iniciar sesión" />
					<input type="submit" value="Inicio" style="margin-left:39%;;" />
				</form>
			</div>
		</div>

</body>
</html>
