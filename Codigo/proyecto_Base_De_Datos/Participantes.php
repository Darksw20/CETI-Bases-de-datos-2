<?php
var_dump($_POST)

?>

<html>

<header>
	<style type="text/css">
		
	table, th, td
	{
		width: auto;
		vertical-align: top;	 
		text-align left;
		border:1px solid black;

	}

	tr:hover{background-color: #e6f7ff}





	</style>

</header>
	<body>
			<center>


	<table>
							<thead>
								<tr>
									<th colspan="13"> Participantes </th>
								</tr>
							</thead>
							<TBODY>
								<tr>
										<td>CUM</td>
										<td>Nombre</td>
										<td>Fecha de nacimiento</td>
										<td>Sexo</td>
										<td>sesion</td>	
										<td>Grupo</td>
										<td>vigencia   </td>
										<td>Apellido paterno</td>
										<td>Apellido materno</td>
										<td>Contraseña</td>
										<td>Equipo</td>
										<td>Eliminar</td>
										<td>Editar</td>
								</tr>
									<?php
										$conexion = new mysqli("localhost", "root","","huaro")
										or die ("No se puede conectar con el servidor");

										if(isset($_POST['loquesea']))
										{
											$sql="DELETE FROM participante WHERE CUM = '".$_POST['loquesea']."'";
											$Resultado=$conexion->query($sql);
										}
										else
											{

													if(isset($_POST['edit']))
													{
														$Nnombre= $_POST['Uno'];
														$Fecha= $_POST['Dos'];
														$Sexo= $_POST['Tres'];
														$Seccion= $_POST['Cuatro'];
														$Grupo= $_POST['Cinco'];
														$Vigencia= $_POST['Seis'];
														$App= $_POST['Siete'];
														$APM= $_POST['Ocho'];
														$Contra= $_POST['Nueve'];
														$Equipo= $_POST['Diez'];


														$sql="UPDATE participante SET Nombre='$Nnombre' , F_naci='$Fecha' , Sexo='$Sexo' , Seccion='$Seccion' , Grupo_s='$Grupo' , vigencia='$Vigencia' , A_Pat='$App', A_Mat='$APM' , Password='Contra' ,FK_Equipos='Equipo'  WHERE CUM = '".$_POST['pos']."'";
														$Resultado=$conexion->query($sql);
													}
											}


										$query="SELECT * FROM participante";
										$Resultado=$conexion->query($query);





										while($row=$Resultado->fetch_assoc())
										{
									?> 
										<tr>
												<form action="Participantes.php" method="POST">
												<td> <?php echo $row['CUM']; ?> </td>
												<td> <?php echo $row["Nombre"]; ?> </td>
												<td> <?php echo $row["F_naci"]; ?> </td>
												<td> <?php echo $row['Sexo']; ?> </td>
												<td> <?php echo $row["Seccion"]; ?> </td>
												<td> <?php echo $row["Grupo_S"]; ?> </td>
												<td> <?php echo $row['vigencia']; ?> </td>
												<td> <?php echo $row["A_Pat"]; ?> </td>
												<td> <?php echo $row["A_Mat"]; ?> </td>
												<td> <?php echo $row['Password']; ?> </td>
												<td> <?php echo $row['FK_Equipos']; ?> </td>
												<td> <input type="hidden" name="loquesea" value="<?php echo $row['CUM']; ?>">
														<input type="submit" name=" x " value="     x     ">
												</td>
							
												<td> 
													<input type="text" name="Uno" placeholder="Nombre..." size="10">
													<input type="text" name="Dos" placeholder="Fecha de nacimiento..." size="10">
													<input type="text" name="Tres" placeholder="Sexo..." size="10">
													<input type="text" name="Cuatro" placeholder="Seccion..." size="10">
													<input type="text" name="Cinco" placeholder="Grupo..." size="10">
													<input type="text" name="Seis" placeholder="Vigencia..." size="10">
													<input type="text" name="Siete" placeholder="Apellido paterno..." size="10">
													<input type="text" name="Ocho" placeholder="Apellido materno..." size="10">
													<input type="text" name="Nueve" placeholder="Contraseña..." size="10">
													<input type="text" name="Diez" placeholder="Equipo..." size="10">
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

									<h3>Buscar Participante</h3>
									<td>
										<form action="Participantes.php" method="POST"> 

											<input type="text" required name="Buscador" placeholder="Buscar staff...">
											<input type="submit" name="Buscar" value="Buscar">
										 </form>
									</td>


<table>
							<thead>
								<tr>
									<th colspan="12">Participante</th>
								</tr>
							</thead>
							<TBODY>
								<tr>
										<td>CUM</td>
										<td>Nombre</td>
										<td>Fecha de nacimiento</td>
										<td>Sexo</td>
										<td>sesion</td>	
										<td>Grupo</td>
										<td>vigencia   </td>
										<td>Apellido paterno</td>
										<td>Apellido materno</td>
										<td>Contraseña</td>
										<td>Equipo</td>
										<td>Eliminar</td>
								</tr>
									<?php
									if(isset($_POST['Buscar']))
									{
										$buscador= $_POST['Buscador'];
										$conexion = new mysqli("localhost", "root","","huaro")
										or die ("No se puede conectar con el servidor");
										$query="SELECT * FROM participante where CUM= '$buscador'";
										$Resultado=$conexion->query($query);
									}

										while($row=$Resultado->fetch_assoc())
										{
									?> 
										<form action="Participantes.php" method="POST">
												<td> <?php echo $row['CUM']; ?> </td>
												<td> <?php echo $row["Nombre"]; ?> </td>
												<td> <?php echo $row["F_naci"]; ?> </td>
												<td> <?php echo $row['Sexo']; ?> </td>
												<td> <?php echo $row["Seccion"]; ?> </td>
												<td> <?php echo $row["Grupo_S"]; ?> </td>
												<td> <?php echo $row['vigencia']; ?> </td>
												<td> <?php echo $row["A_Pat"]; ?> </td>
												<td> <?php echo $row["A_Mat"]; ?> </td>
												<td> <?php echo $row['Password']; ?> </td>
												<td> <?php echo $row['FK_Equipos']; ?> </td>
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