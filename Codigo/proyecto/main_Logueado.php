<?php
		
   		$Cum= $_POST['codigo'];
        $Contraseña= $_POST['nombre'];

   			$connection = mysqli_connect('localhost', 'root', '', 'huaro');

   			if($connection) {
   				$sqlQuery = "SELECT * FROM staff WHERE CUM = '$Cum' ";
   				$sqlQuery = "SELECT * FROM staff WHERE Password = '$Contraseña' ";
   				$result = mysqli_query($connection,$sqlQuery);
   				$result2 =mysqli_query($connection,$sqlQuery);

   				if(mysqli_num_rows($result) >0 && mysqli_num_rows($result2) >0) 
   				{
   					while($row = mysqli_fetch_assoc($result))
   					    {
   						  if ($row["CUM"] == $Cum && $row["Password"] == $Contraseña)
   						    {
   							  header("location: index_Logeado.php");
   							}
   						}

   				}
   				else
   					if(mysqli_num_rows($result) ==0)
   					{
   						header("location: Login.php");
   					}
   			}

 

   							
   		?>