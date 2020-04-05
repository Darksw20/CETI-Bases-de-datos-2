
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
		$a=1;
		$b=2;
		$c=suma ($a, $b);
		print $c;

		function suma ($x,$y)
		{
			$s=$x+$y;
			return $s;
		}
	?>
</body>
</html>
