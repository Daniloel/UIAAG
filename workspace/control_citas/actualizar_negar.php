<?php

#echo "<pre>"; print_r($_POST);
#echo "</pre>";


$conexion = new mysqli('localhost', 'root', '','aulambiente');

$id = $_GET['id'];

    $sql_update =  "UPDATE citas SET estatus='Negada' WHERE id = '$id'";
    $result_data = $conexion->query($sql_update);
        
    echo "<script> alert('Reserva actualizada en la base de datos'); </script>";
        
    echo '<META HTTP-EQUIV="REFRESH" CONTENT="1;URL=/control_citas/ver_citas.php">';
    
?>