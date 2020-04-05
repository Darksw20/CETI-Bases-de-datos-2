<html>

<header>
	<style type="text/css">
		
	table, th, td
	{

		width: auto;
		vertical-align: top;	 
		text-align: center;
		border:1px solid black;

	}

	tr:hover{background-color: #e6f7ff}





	</style>

</header>
	<body>
			<center>

				
<h4>Agregar un staaff</h4>
<form action="Staff.php" method="POST">

	<CENTER>
	<input  type="text" name="CUM" placeholder="Cum..">
	<input required type="text" name="Asistencia" placeholder="asistencia..">
	<br></br>
	<input required type="text" name="Nombre" placeholder="Nombre..">
	<input required type="text" name="Vigencia" placeholder="Vigencia..">
	<br></br>
	<input required type="text" name="A_Pat" placeholder="Apellido paterno..">
	<input required type="text" name="A_Mat" placeholder="Apellido materno..">
	<br></br>
	<input required type="text" name="Password" placeholder="Contraseña..">
	<input required type="text" name="FK_TablaS" placeholder="Tabla_s..">	
	<br></br>
	<input type="submit" name="Agregar" value="Agregar">
	</CENTER>

</form>





<?PHP
			if(isset($_POST['Agregar']))
			{
						$cUM= $_POST["CUM"];
						$asistencia= $_REQUEST['Asistencia'];
						$nombre= $_REQUEST['Nombre'];
						$vigencia= $_REQUEST['Vigencia'];
						$a_Pat= $_REQUEST['A_Pat'];
						$a_Mat= $_REQUEST['A_Mat'];
						$password= $_REQUEST['Password'];
						$fK_TablaS= $_REQUEST['FK_TablaS'];
						
					$connection = mysqli_connect('localhost', 'root', '', 'huaro');


		   		if($connection) 
		   		{

					$sqlQuery="INSERT INTO staff VALUES('$cUM','$asistencia','$nombre','$vigencia','$a_Pat','$a_Mat','$password','$fK_TablaS')";
					$result = mysqli_query($connection,$sqlQuery);
					header("location: Staff.php");
				}
			}
?>


	<table>
							<thead>
								<tr>
									<th colspan="9"> Staffs </th>
								</tr>
							</thead>
							<TBODY>
								<tr>
										<td>CUM</td>
										<td>Asistencia</td>
										<td>Nombre</td>
										<td>vigencia   </td>
										<td>Apellido paterno</td>
										<td>Apellido materno</td>
										<td>Contraseña</td>
										<td>Eliminar</td>
										<td>Editar</td>
								</tr>
									<?php
										$conexion = new mysqli("localhost", "root","","huaro")
										or die ("No se puede conectar con el servidor");

										if(isset($_POST['loquesea']))
										{
											$sql="DELETE FROM staff WHERE CUM = '".$_POST['loquesea']."'";
											$Resultado=$conexion->query($sql);
										}

										if(isset($_POST['edit']))
										{
											$NAsistencia= $_POST['Uno'];
											$Nnombre= $_POST['Dos'];

											$NVigencia= $_POST['Tres'];
											$Napp= $_POST['Cuatro'];

											$Napm= $_POST['Cinco'];
											$Ncontra= $_POST['Seis'];

											$sqld="UPDATE staff SET Asistencia='$NAsistencia', Nombre='$Nnombre' , Vigencia='$NVigencia', A_Pat='$Napp', A_Mat='$Napm', Password='$Ncontra' WHERE CUM = '".$_POST['loquesea']."'";
											$Resultado=$conexion->query($sqld);
										}


										$query="SELECT * FROM staff";
										$Resultado=$conexion->query($query);





										while($row=$Resultado->fetch_assoc())
										{
									?> 
										<tr>
												<form action="Staff.php" method="POST">
												<td> <?php echo $row['CUM']; ?> </td>
												<td> <?php echo $row["Asistencia"]; ?> </td>
												<td> <?php echo $row["Nombre"]; ?> </td>
												<td> <?php echo $row['Vigencia']; ?> </td>
												<td> <?php echo $row["A_Pat"]; ?> </td>
												<td> <?php echo $row["A_Mat"]; ?> </td>
												<td> <?php echo $row['Password']; ?> </td>
												<td> <input type="hidden" name="loquesea" value="<?php echo $row['CUM']; ?>">
														<input type="submit" name=" x " value="     x     ">
												</td>

												<td> 
													<input type="text" name="Uno" placeholder="asistencia..." size="10">
													<input type="text" name="Dos" placeholder="Nuevo nombre..." size="10">
													<input type="text" name="Tres" placeholder="nueva vigencia..." size="10">
													<input type="text" name="Cuatro" placeholder="Nuevo apellido paterno..." size="10">
													<input type="text" name="Cinco" placeholder="Nuevo apellido materno..." size="10">
													<input type="text" name="Seis" placeholder="nueva contraseña..." size="10">
													<input type="hidden" name="edit" value="<?php echo $row['CUM']; ?>">
													<input type="submit" name="O" value="O">
												</td>
												</form>
										</tr>
									<?php
										}

									?>
						</TBODY>
</table>

									<h3>Buscar staff</h3>
									<td>
										<form action="Staff.php" method="POST"> 

											<input type="text" required name="Buscador" placeholder="Buscar staff...">
											<input type="submit" name="Buscar" value="Buscar">
										 </form>
									</td>


<table>
							<thead>
								<tr>
									<th colspan="8">Staff</th>
								</tr>
							</thead>
							<TBODY>
								<tr>
										<td>CUM</td>
										<td>Asistencia</td>
										<td>Nombre</td>
										<td>vigencia</td>
										<td>Apellido paterno</td>
										<td>Apellido materno</td>
										<td>Contraseña</td>
								</tr>
									<?php
									if(isset($_POST['Buscar']))
									{
										$buscador= $_POST['Buscador'];
										$conexion = new mysqli("localhost", "root","","huaro")
										or die ("No se puede conectar con el servidor");
										$query="SELECT * FROM staff where CUM= '$buscador'";
										$Resultado=$conexion->query($query);
									}

										while($row=$Resultado->fetch_assoc())
										{
									?> 
										<form action="Staff.php" method="POST">
												<td> <?php echo $row['CUM']; ?> </td>
												<td> <?php echo $row["Asistencia"]; ?> </td>
												<td> <?php echo $row["Nombre"]; ?> </td>
												<td> <?php echo $row['Vigencia']; ?> </td>
												<td> <?php echo $row["A_Pat"]; ?> </td>
												<td> <?php echo $row["A_Mat"]; ?> </td>
												<td> <?php echo $row['Password']; ?> </td>
												<td>
														<input type="hidden" name="loquesea" value="<?php echo $row['CUM']; ?>">
														<input type="submit" name="x" value="x">
												</form>
									<?php
										}
									?>
						</TBODY>
</table>

</html>	
	

			</center>

	</body>







<form action="index_Logeado.php "> <input type="submit" name="Menu" value="Menu"> </form>