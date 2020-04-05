<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <?php
      include("config.php");

      $id = $_REQUEST['id'];

      $query = "SELECT * FROM prueba_2 WHERE id = '$id'";
      $res = $con->query($query);
      $row = $res->fetch_assoc();

      $query = "SELECT * FROM imagenes WHERE id = '$id'";
      $res = $con->query($query);
      $row = $res->fetch_assoc();
    ?>
    <form action="controllers/proces_modify.php?id=<?php echo $row['id']; ?>" method="POST" enctype="multipart/form-data">
			<label>Imagen:</label>
      <img width="300px" height="150px" src="data:image/jpg;base64,<?php echo base64_encode($row['imagen']); ?>"/>
			<input type="file" name="imagen" id="imagen" />
			<input type="submit" class="enter" name="subir" value="Cambiar"/>
		</form>
    <form action="controllers/proces_delete.php?id=<?php echo $row['id']; ?>" method="POST" enctype="multipart/form-data">
      <img width="300px" height="150px" src="data:image/jpg;base64,<?php echo base64_encode($row['imagen']); ?>"/>
			<input type="submit" class="enter" name="subir" value="Eliminar"/>
		</form>
  </body>
</html>
