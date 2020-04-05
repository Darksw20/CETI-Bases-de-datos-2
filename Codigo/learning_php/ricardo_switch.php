
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
	$extension="ai";
	switch ($extension)
	{
		case 'PDF':
			$tipo="Documento Adobe PDF";
			break;
		case ("TXT"):
			$tipo ="Documento de Texto";
		break;
		case 'HTML':
		case ("HTM"):
			$tipo="Documento HTML";
		break;
		default:
			$tipo="Archivo ".$extension;
			break;
	}
	print($tipo);
	?>
</body>
</html>
