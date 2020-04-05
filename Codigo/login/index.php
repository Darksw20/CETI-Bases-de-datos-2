<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Login</title>
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
		box-shadow: 0px 1px 1px rgba(0,0,0,.5);
	}
	.ingresar{
		width: 100%;
		margin: 0px auto;
		text-align: right;
	}
	.ingresar input{
		background-color:rgb(56,56,56);
	}
	h3{
		margin:7px;
		float:left;
		font-size:1.4rem;
	}
	.registrar{
		margin-left:50%;
		width:15%;
	}
	h1{
		margin-left:40px;
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
	.reg-input{
		width:20px;
		margin:5px;
		padding:5px;
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
	#enter,#iniciar{
		width:100px;
		-webkit-transition: all .5s;
		-moz-transition: all .5s;
		-ms-transition: all .5s;
		-o-transition: all .5s;
		transition: all .5s;
		cursor:pointer;
	}
	</style>
</head>
<body>
	<div class="contenedor">
		<div class="ingresar">
			<div class="ingresar_bar">
				<h3>Login</h3>
				<form action="procesaLogin.php" method="post" />
					<input type="text" placeholder="Correo electrónico" name="email" />
					<input type="password" placeholder="Contraseña" name="pass" />
					<input type="hidden" name="login">
					<input type="submit" id="iniciar" value="Iniciar sesión" />
				</form>
			</div>
		</div>

		<div class="registrar">
			<h1>Registrate</h1>
			<form action="registrar.php" method="post" />
				<label>Nombre(s)</label><br />
				<input type="text" placeholder="Nombre(s)" name="nombres" /><br />
				<label>Apellidos</label><br />
				<input type="text" placeholder="Apellidos(s)" name="apellidos" /><br />
				<label>Correo electrónico</label><br />
				<input type="text" placeholder="Correo electrónico" name="email" /><br />
				<label>Contraseña</label><br />
				<input type="password" placeholder="Contraseña" name="pass" /><br />
				<label>Repetir Contraseña</label><br />
				<input type="password" placeholder="Repetir Contraseña" name="rpass" /><br />
				<label>Sexo</label><br />
				Mujer<input class="reg-input" type="radio" name="sexo" />
				Hombre<input class="reg-input" type="radio" name="sexo" />
				<br />
				<br />
				<input type="submit" id="enter" value="Registrar" />
			</form>
		</div>
	</div>
</body>
</html>
