
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
	print ("<UL>\n");
	$i=1;
	while($i<=5)
	{
		print ("<LI>Elemento $i </LI>\n");
		$i++;
	}
	print ("</UL>\n");
	?>
</body>
</html>
