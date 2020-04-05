	<?php
		$server='localhost';
		$user='root';
		$pass='';
		$bd='ejemplo';

		$con=new mysqli($server,$user,$pass,$bd);
		if ($con->connect_errno) {
			echo "Error al conectar {$con->connect_errno}";
		}
	?>
