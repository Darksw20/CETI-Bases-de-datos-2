
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

		$color=array ('rojo'=>101, 'verde'=>51, 'azul'=>255);
		$medidas= array (10,25,15);
		foreach ($color as $valor)
		{
			print "Valor: $valor<BR>\n";
		}
		foreach($color as $clave => $valor)
		{
			print "Clave: $clave; Valor: $valor<BR>\n";
		}
	?>
</body>
</html>