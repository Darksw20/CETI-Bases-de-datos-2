<?php
  include("../config.php");

  $imagen = addslashes(file_get_contents($_FILES['imagen']['tmp_name']));

  $query = "INSERT INTO registro(imagen) VALUES ('$imagen')";
  $res = $con->query($query);

  if ($res) {
    //header("Location: ../index.html");
    echo "Se guardo";
  }else{
    echo "<p style='font-size:16px;'>No se pudo guardar la foto, verifica que sea una imagen igual o menor a 1024 bites de tamaño.</p>";
  }
?>
