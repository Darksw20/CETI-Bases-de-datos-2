
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
	$sexo="H";
	$nombre= "Ricardo";

	if($sexo=='M')
	{
		$saludo= "Bienvenida, ";
	}
	else
	{
		$saludo="Bienvenido, ";
	}
	$saludo = $saludo.$nombre;
	print($saludo);
	?>
</body>
</html>