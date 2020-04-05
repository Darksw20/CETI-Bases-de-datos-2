<html>
<header>
	<style type="text/css">
		
	table, th, td
	{
		text-align: center;
		border:1px solid black;


	}

			body{
			
				background-color: #d0e1e1;
			background-size: 30%; 
		}
	
	tr:hover{background-color: #e6f7ff}





	</style>

</header>
<body>
	<table>

								<thead>
										<th colspan="9"> Staffs </th>
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



	<table>

								<thead>
										<th colspan="9"> Equipos </th>
								</thead>
								<TBODY>
									<tr>
											<td>Codigo de equipo</td>
											<td>Suerte</td>
											<td>Numero de integrantes</td>
											<td>Nombre</td>
											<td>Seccion</td>
									</tr>
										<?php
											$conexion = new mysqli("localhost", "root","","huaro")
											or die ("No se puede conectar con el servidor");
											$query="SELECT * FROM equipos";
											$Resultado=$conexion->query($query);

											while($row=$Resultado->fetch_assoc())
											{
										?> 
											<tr>
													
													<td> <?php echo $row['Cod_Equipo']; ?> </td>
													<td> <?php echo $row["Suerte"]; ?> </td>
													<td> <?php echo $row["N_integrantes"]; ?> </td>
													<td> <?php echo $row["Nombre"]; ?> </td>
													<td> <?php echo $row["Seccion"]; ?> </td>
												</td>

											</tr>
										<?php
											}
										?>
							</TBODY>
	</table>



<table>

								<thead>
										<th colspan="9"> Partidos </th>
								</thead>
								<TBODY>
									<tr>
											<td>Partido</td>
											<td>Puntos</td>
											<td>Ronda</td>
											<td>Hora</td>
											<td>Equipo</td>
											<td>Cancha</td>

									</tr>
										<?php
											$conexion = new mysqli("localhost", "root","","huaro")
											or die ("No se puede conectar con el servidor");
											$query="SELECT * FROM partidos";
											$Resultado=$conexion->query($query);

											while($row=$Resultado->fetch_assoc())
											{
										?> 
											<tr>
													
													<td> <?php echo $row['Codigo']; ?> </td>
													<td> <?php echo $row["Puntos"]; ?> </td>
													<td> <?php echo $row["Ronda"]; ?> </td>
													<td> <?php echo $row["Hora"]; ?> </td>
													<td> <?php echo $row["FK_Equipos"]; ?> </td>
													<td> <?php echo $row["FK_Cancha"]; ?> </td>

												</td>

											</tr>
										<?php
											}
										?>
							</TBODY>
	</table>







</body>
<h1>Agregar participante</h1>



<form action="Invitado.php" method="POST">

	<CENTER>
	<input required="" type="text" name="CUM" placeholder="Cum..">
	<input required type="text" name="Nombre" placeholder="Nombre..">
	<input required type="text" name="F_naci" placeholder="????-??-?? nacieminto..">
	<br></br>
	<input required type="text" name="Sexo" placeholder="sexo..">
	<input required type="text" name="seccion" placeholder="seccion..">
	<input required type="text" name="Grupo_s" placeholder="Grupo_s..">	
	<br></br>
	<input required type="text" name="Vigencia" placeholder="Vigencia..">
	<input required type="text" name="A_Pat" placeholder="Apellido paterno..">
	<input required type="text" name="A_Mat" placeholder="Apellido materno..">
	<br></br>
	<input required type="text" name="Password" placeholder="Contraseña..">	
	<input required type="text" name="Equipo" placeholder="Equipo..">	
	<br></br>
	
	<br></br>
	<input type="submit" name="Agregar" value="Agregar">
	</CENTER>

</form>


<form action="Login.php">
	<input type="submit" name="Login" value="Login">

</form>




<?PHP
			if(isset($_POST['Agregar']))
			{
						$cUM= $_POST["CUM"];
						$nombre= $_REQUEST['Nombre'];
						$f_naci= $_REQUEST['F_naci'];
						$sexo= $_REQUEST['Sexo'];
						$Seccion= $_REQUEST['seccion'];
						$grupo_s= $_REQUEST['Grupo_s'];
						$vigencia = $_REQUEST['Vigencia'];
						$a_Pat= $_REQUEST['A_Pat'];
						$a_Mat= $_REQUEST['A_Mat'];
						$password= $_REQUEST['Password'];
						$equipo = $_REQUEST['Equipo'];
						
					$connection = mysqli_connect('localhost', 'root', '', 'huaro');


		   		if($connection) 
		   		{

					$sqlQuery="INSERT INTO participante VALUES('$cUM','$nombre','$f_naci','$sexo','$Seccion','$grupo_s','$vigencia','$a_Pat','$a_Mat','$password','$equipo','$cUM')";
						$result = mysqli_query($connection,$sqlQuery);
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