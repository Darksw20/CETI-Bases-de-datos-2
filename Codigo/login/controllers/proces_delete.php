<?php
  include("../config.php");

  $id = $_REQUEST['id'];

  $query = "DELETE FROM imagenes WHERE id = '$id'";
  $res = $con->query($query);

  if ($res) {
    echo "Se elimino";
    //header("Location: ../principal.php");
  }else{
    echo "No se elimino";
  }
?>
