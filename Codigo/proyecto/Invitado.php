<html>
<body>
	<table>

								<thead>
									<tr>
										<td>
									 		<h4>Staffs  </h4>
										</td>
									</tr>
								</thead>
								<TBODY>
									<tr>
											<td>CUM</td>
											<td>Nombre</td>
											<td>Apellido paterno</td>
											<td>Apellido materno</td>
									</tr>
										<?php
											$conexion = new mysqli("localhost", "root","","huaro")
											or die ("No se puede conectar con el servidor");
											if(isset($_POST['loquesea']))
											{
												$sql="DELETE FROM staff WHERE CUM = '".$_POST['loquesea']."'";
												$Resultado=$conexion->query($sql);
											}
											$query="SELECT * FROM staff";
											$Resultado=$conexion->query($query);

											while($row=$Resultado->fetch_assoc())
											{
										?> 
											<tr>
													
													<td> <?php echo $row['CUM']; ?> </td>
													<td> <?php echo $row["Nombre"]; ?> </td>
													<td> <?php echo $row["A_Pat"]; ?> </td>
													<td> <?php echo $row["A_Mat"]; ?> </td>
												</td>

											</tr>
										<?php
											}
										?>
							</TBODY>
	</table>
</body>
<h1>Agregar participante</h1>



<form action="Staff.php" method="POST">

	<CENTER>
	<input required="" type="text" name="CUM" placeholder="Cum..">
	<input required type="text" name="F_naci" placeholder="????-??-?? nacieminto..">
	<br></br>
	<input required type="text" name="Nombre" placeholder="Nombre..">
	<input required type="text" name="Sexo" placeholder="sexo..">
	<br></br>
	<input required type="text" name="A_Pat" placeholder="Apellido paterno..">
	<input required type="text" name="A_Mat" placeholder="Apellido materno..">
	<br></br>
	<input required type="text" name="seccion" placeholder="seccion..">
	<input required type="text" name="Grupo_s" placeholder="Tabla_s..">	
	<br></br>
	<input required type="text" name="Vigencia" placeholder="seccion..">
	<input required type="text" name="Grupo_s" placeholder="Tabla_s..">	
	<br></br>
	<input type="submit" name="Agregar" value="Agregar">
	</CENTER>

</form>




<?PHP
			if(isset($_POST['Agregar']))
			{
						$cUM= $_POST["CUM"];
						$nombre= $_REQUEST['Nombre'];
						$f_naci= $_REQUEST['F_naci'];
						$sexo= $_REQUEST['Sexo'];
						$seccion= $_REQUEST['Seccion'];
						$grupo_s= $_REQUEST['Grupo_s'];
						$vigencia = $_REQUEST['Vigenia'];
						$a_Pat= $_REQUEST['A_Pat'];
						$a_Mat= $_REQUEST['A_Mat'];
						$password= $_REQUEST['Password'];
						$fK_TablaS= $_REQUEST['FK_TablaS'];
						
					$connection = mysqli_connect('localhost', 'root', '', 'huaro');


		   		if($connection) 
		   		{

					$sqlQuery="INSERT INTO participante VALUES('$cUM','$nombre','$f_naci','$sexo','$seccion','$grupo_s','$vigencia','$a_Pat','$a_Mat','$password','$fK_TablaS')";
					$result = mysqli_query($connection,$sqlQuery);
					header("location: Staff.php");
				}
			}
?>
<H1>Scouts</H1>
<?php
											$conexion = new mysqli("localhost", "root","","huaro")
											or die ("No se puede conectar con el servidor");
											$todos="SELECT * FROM tabla_s";
											$Coso=$conexion->query($todos);

											while($row=$Coso->fetch_assoc())
											{
										?> 
											<tr>
													<td> <?php echo $row['CUM']; ?> </td>
													<td> <?php echo $row["Nombre"]; ?> </td>
													<td> <?php echo $row["A_Pat"]; ?> </td>
													<td> <?php echo $row["A_Mat"]; ?> </td>
													<td> <?php echo $row['vigencia']; ?> </td>
													<br></br>
												
												</td>

											</tr>
										<?php
											}
										?>


<html>