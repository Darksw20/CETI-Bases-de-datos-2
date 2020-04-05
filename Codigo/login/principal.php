<?php/*
	session_start();

	if (empty($_SESSION['email'])) {
		session_start();
		session_destroy();
		header("Location: index.php");
	}

	if (isset($_POST['cerrar_sesion'])) {
		session_start();
		session_destroy();
		header("Location: index.php");
	}*/
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title></title>
  <link rel="stylesheet" href="style.css">
	<style type="text/css">
		*{
			margin:0px;
			padding:0px;
		}
		body{
			background-color:#454545;
			font-family:Century Gothic;
		}
		#contenedor{
			width:90%;
			margin:0px auto;
		}
		input{
			width:20%;
			margin:5px;
			padding:5px;
			color:#fff;
			border-radius:15px;
			background-color:rgba(80,80,80,.6);
			font-size:14px;
			border:none;
		}
		input:hover, input:focus{
			background-color:rgba(107,107,107,.9);
			-webkit-transition: all 1.5s;
			-moz-transition: all 1.5s;
			-ms-transition: all 1.5s;
			-o-transition: all 1.5s;
			transition: all 1.5s;
			outline:none;
		}
		.enter{
			width:110px;
			-webkit-transition: all .5s;
			-moz-transition: all .5s;
			-ms-transition: all .5s;
			-o-transition: all .5s;
			transition: all .5s;
			cursor:pointer;
		}
		.f{
			width:95%;
			margin:0px auto;
			padding:5px;
			background:#920D00;
			border-radius:20px;
			box-shadow:0px 1px 1px rgba(0, 0, 0, 0.5);
		}
		.p-name{
			width:200px;
			top:-50px;
	    padding:5px;
	    padding-left:0px;
			font-size:20px;
			color:#000;
			position:relative;
			background-color:rgba(255, 255, 255, 0.6);
			box-shadow:0px 4px 4px rgba(0, 0, 0, 0.5);
			transition:all .5s;
		}
		.p-name:hover{
			background-color:rgba(255, 255, 255, 0.8);
			cursor:default;
			transition:all .5s;
		}
		.img-back{
			width:70%;
			height:30%;
			position:absolute;
			box-shadow:0px 4px 4px black;
		}
		.a-modify{
			color: rgba(255,255,255,0.6);
			position:relative;
			top:-70px;
			left:920px;
			font-size:20px;
			text-decoration:none;
			background-color:transparent;
			transition:all .5s;
		}
		.a-modify:hover{
			color: rgba(255,255,255,0.8);
			transition:all .5s;
		}
		span{
			background-color:transparent;
		}
		img{
			width:100%;
			height:100%;
		}
		header{
			width:100%;
			color:#fff;
			margin-bottom:10px;
		}
	</style>
</head>
<body>
	<header>
		<div class="f">
			<form style="float:right;" action="principal.php" method="post" />
				<input type="hidden" name="cerrar_sesion">
				<input type="submit" class="enter" value="Cerrar Sesión" />
			</form>
			<!--SUBIR IMAGEN-->
			<form action="controllers/proces_save.php" method="POST" enctype="multipart/form-data">
				<label>Imagen:</label>
				<input type="file" name="imagen" id="imagen" />
				<input type="submit" class="enter" name="subir" value="Subir"/>
			</form>
			<!--SUBIR IMAGEN-->
		</div>
	</header>
	<div id="contenedor">
		<!--MOSTRAR IMAGEN-->
		<div class="img-back">
			<?php
				include("config.php");

				$query = "SELECT * FROM imagenes";
				$res = $con->query($query);
				$row = $res->fetch_assoc();
			?>
			<img src="data:imgae/jpg;base64,<?php echo base64_encode($row['imagen']); ?>"/>
			<?php echo "<p class='p-name'>".$_SESSION['nombres']."</p>" ?>
			<a class="a-modify" href="modificar.php?id=<?php echo $row['id']; ?>"><span class="icon-camera"></span></a>
			<!--MOSTRAR IMAGEN-->
		</div>
	</div>
</body>
</html>
