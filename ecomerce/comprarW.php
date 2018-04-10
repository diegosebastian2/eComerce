<?php

include ("conexion/conexion.php");

// for recorre elementos con un numero conocido de filas

$id = $_REQUEST['id'];


$consulta = "SELECT nombre, precio, imagen_ruta, codigo, detalle FROM productos WHERE id = '$id'";
$query = mysqli_query($conexion,$consulta);

// usar este while
$bloque = '';


$info = mysqli_fetch_array($query); 

	$nombre = $info['nombre'];
	$precio = $info['precio'];
	$codigo = $info['codigo'];
	$imagen = $info['imagen_ruta'];
	$detalle = $info['detalle'];

	
	$bloque .= '<div>';
	$bloque .= '	<div class="text-center">';
	$bloque .= '		<a data-fancybox data-src="#info'.$id.'" href="javascript:;"  > <img class="img-fluid" src="img/'.$imagen.'" alt=""></a>';
	$bloque .= '		<div class="align-bottom block>';	
	$bloque .= '			<h4 class="h4 ">'.$nombre.'</h4>';
	$bloque .= '			<h4 class="h4 ">$'.$precio.'</h3>';
	$bloque .= '			<h6 class="h6 ">'.$codigo.'</h6>';
	$bloque .= '		</div>';
	$bloque .= '	</div>';
	$bloque .= '</div>';



mysqli_close($conexion);

?>

                 
                  
