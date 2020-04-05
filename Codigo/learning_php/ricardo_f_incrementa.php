
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
	function incrementa(&$a)
	{
		$a=$a+1;
	}

		$a=1;
		incrementa($a);
		print $a;
	?>
</body>
</html>
