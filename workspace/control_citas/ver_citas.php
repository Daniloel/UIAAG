<?php
$conexion = new mysqli('localhost', 'root', '','aulambiente');
	
	$fecha = date("Ymd");
    $fecha_semana = date("Ymd")+6;
	$sql3 = "SELECT * FROM citas WHERE fecha BETWEEN '$fecha' AND '$fecha_semana'";

	$resul3 = $conexion->query($sql3);
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UFT-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://use.fontawesome.com/27770999be.js"></script>
	<title>Ver Agenda</title>
</head>
<style>
#divs {
    margin: 2cm 4cm 3cm 4cm;
}
</style>
<body>
	
	<div id="divs">
		<img align="right" src="/images/edaulaa.png"></img>
		<img src="/images/logo.jpg"></img>
	</div>
	
	
<div align="center" id="divs">
	<h1>AGENDA SEMANAL - AULA AMBIENTE</h1><BR>
  <div id="user-opciones">
		    <table class="table table-hover table-responsive">
			       <tr class="bg-success">
			       	       <th>Rol</th>
				           <th>Nombre</th>
				           <th>Telefono</th>
				           <th>Descripcion</th>
				           <th>Espacio solicitado</th>
				           <th>Fecha</th>
				           <th>Desde</th>
				           <th>Hasta</th>
				           <th>Estatus</th>
				           <th>Opcion</th>
				           
			       </tr>
	           <?php
	             
	              while($fila = mysqli_fetch_array($resul3)){

              		echo "
              			<tr class='active bg-info'>
              			    <td>".$fila['rol']."</td>
              				<td>".$fila['nombre']."</td>
              				<td>".$fila['telefono']."</td>
              				<td>".$fila['descripcion']."</td>
              				<td>".$fila['espacio']."</td>
              				<td>".$fila['fecha']."</td>
              				<td>".$fila['hora_entrada']."</td>
              				<td>".$fila['hora_salida']."</td>
              				<td>".$fila['estatus']."</td>
              				<td>
              					<button class='btn btn-success'><a  href='/control_citas/actualizar_aprobar.php?id=".$fila[id]."'><font color='FDF9F9'>Aprobar</font></a></button><br><br>
            					<button class='btn btn-danger'><a href='/control_citas/actualizar_negar.php?id=".$fila[id]."'><font color='FDF9F9'>Negar</font></a></button><br><br>
              					<button class='btn btn-info'><a href='/control_citas/eliminar.php?id=".$fila[id]."'><font color='FDF9F9'>Eliminar</font></a></button>
              				</td>
              			</tr>";
              	}
              	?>

          </table>
        </div>
</div>
<div id="divs">
	<button class="btn btn-success col-md-12" onclick="window.location.href='/index.php'">Volver</button>
</div>
</body>
</html>
