<?php

#echo "<pre>"; print_r($_POST);
#echo "</pre>";


$conexion = new mysqli('localhost', 'root', '','aulambiente');

$rol = $_POST['rol'];
$nombre = $_POST['nombre'];
$telefono = $_POST['telefono'];
$espacio = $_POST['espacio'];
$descripcion = $_POST['descripcion'];
$fecha = $_POST['fecha'];
$desde = $_POST['desde_fecha'];
$hasta = $_POST['hasta_fecha'];
$cond = true;


    $sql_registrar = "INSERT INTO citas(nombre,telefono,descripcion,espacio,fecha,hora_entrada,hora_salida,rol)
    VALUES('$nombre','$telefono','$descripcion','$espacio','$fecha','$desde','$hasta','$rol')";
    
    $sql_consultar = "SELECT fecha,hora_entrada,hora_salida,espacio FROM citas WHERE fecha='$fecha'";
    $result_data = $conexion->query($sql_consultar);
    
    if ($result_data->num_rows >= 1){
        while ($datos = mysqli_fetch_array($result_data)){
            if ($espacio==$datos['espacio'] || ($espacio=="Planetario" || $espacio=="Salon del planetario" && $datos['espacio']=="Planetario" || $datos['espacio']=="Salon del planetario")){
                if ($desde==$datos['hora_entrada'] || $hasta==$datos['hora_salida'] || ($desde<$datos['hora_entrada'] && $hasta<$datos['hora_salida'])){
                $cond=false;}
            }
        }
    }
    
    if ($cond){
        $result_registrar = $conexion->query($sql_registrar);
        echo "Ha sido registrada con éxito<br>";
        echo '<META HTTP-EQUIV="REFRESH" CONTENT="1;URL=/index.php/reservar/">';
        echo "<script> alert('Ha sido registrada la solicitud del espacio, le enviaremos un mensaje confirmando'); </script>";
    }else{
        
        echo "<script> alert('No hay disponibilidad, intente otro momento'); </script>";
        
        echo '<META HTTP-EQUIV="REFRESH" CONTENT="1;URL=/index.php/">';
    }
    
?>