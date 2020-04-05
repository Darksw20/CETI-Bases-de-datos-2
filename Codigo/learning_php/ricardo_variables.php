<!DOCTYPE html>
<html>
<head>
	<title>
		Mi primer programa en PHP
	</title>
	<style type="text/css">
		
	</style>
</head>
<body>
	<?PHP 
	$mensaje_es="Hola";
	$mensaje_en="Hello";
	$idioma="es";
	$mensaje="mensaje_".$idioma;
	print $$mensaje;
	?>
</body>
</html>
