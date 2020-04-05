
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
		function muestranombre($titulo="Sr.")
		{
			print "Estimado $titulo: \n";
		}
		muestranombre();
		muestranombre("Prof.");
	?>
</body>
</html>
