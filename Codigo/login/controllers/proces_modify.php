<?php
  include("../config.php");

  $id = $_REQUEST['id'];
  $imagen = addslashes(file_get_contents($_FILES['imagen']['tmp_name']));

  $query = "UPDATE imagenes SET imagen = '$imagen' WHERE id = '$id'";
  $res = $con->query($query);

  if ($res) {
    header("Location: ../principal.php");
  }else{
    echo "No se modifico";
  }
?>
