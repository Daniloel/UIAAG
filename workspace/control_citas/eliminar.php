<?php

#echo "<pre>"; print_r($_POST);
#echo "</pre>";


$conexion = new mysqli('localhost', 'root', '','aulambiente');

$id = $_GET['id'];


    $sql_eliminar =  "DELETE FROM citas WHERE id = '$id'";
    $result_data = $conexion->query($sql_eliminar);
        
    echo "<script> alert('Reserva eliminada de la base de datos'); </script>";
        
    echo '<META HTTP-EQUIV="REFRESH" CONTENT="1;URL=/control_citas/ver_citas.php">';
    
?>