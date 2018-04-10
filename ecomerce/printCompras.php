<?php

include ("conexion/conexion.php");

// for recorre elementos con un numero conocido de filas
session_start();

$usuario_id = $_SESSION['usuario_id'];

$consulta = "SELECT c.id, p.nombre, c.cantidad, c.monto FROM compras c INNER JOIN productos p ON c.producto_id = p.id WHERE c.usuario_id = '$usuario_id'";
$query = mysqli_query($conexion,$consulta);

// usar este while
$bloque = '';


while($info = mysqli_fetch_array($query)) {

	$id = $info['id'];
	$nombre = $info['nombre'];
	$cantidad = $info['cantidad'];
	$monto = $info['monto'];

	
	$bloque .= '<tr>';
	$bloque .= '	<th scope="row">'.$id.'</th>';
	$bloque .= '	<td>'.$nombre.'</td>';
	$bloque .= '	<td>'.$cantidad.'</td>';
	$bloque .= '	<td>'.$monto.'</td>';
	$bloque .= '</tr>';
}


mysqli_close($conexion);

?>

                 
                  
