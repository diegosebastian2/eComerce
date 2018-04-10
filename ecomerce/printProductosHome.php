<?php

include ("conexion/conexion.php");

// for recorre elementos con un numero conocido de filas
$consulta = "SELECT id, nombre, precio, imagen_ruta, codigo, detalle FROM productos WHERE habilitado = 1 AND destacado = 1";
$query = mysqli_query($conexion,$consulta);

// usar este while
$bloque = '';


while($info = mysqli_fetch_array($query)) {

	$id = $info['id'];
	$nombre = $info['nombre'];
	$precio = $info['precio'];
	$codigo = $info['codigo'];
	$imagen = $info['imagen_ruta'];
	$detalle = $info['detalle'];

	
	$bloque .= '<div class="col-md-3">';
	$bloque .= '	<div class="text-center">';
	$bloque .= '		<a data-fancybox data-src="#info'.$id.'" href="javascript:;"  > <img class="img-fluid grilla block" src="img/'.$imagen.'" alt=""></a>';
	$bloque .= '		<div class="align-bottom block>';	
	$bloque .= '			<h4 class="h4 ">'.$nombre.'</h4>';
	$bloque .= '			<h4 class="h4 ">$'.$precio.'</h3>';
	$bloque .= '			<h6 class="h6 ">'.$codigo.'</h6>';
	$bloque .= '			<a href="comprar.php?id='.$id.'" >Comprar</a>';
	$bloque .= '		</div>';
	$bloque .= '	</div>';
	$bloque .= '	<div id="info'.$id.'"  class="infoDetalle">';
	$bloque .= '			<h2>'.$nombre.'</h2>';
	$bloque .= '			<p>'.$detalle.'</p>';	
	$bloque .= '			<h4 class="h4 ">$'.$precio.'</h3>';
	$bloque .= '			<a href="comprar.php?id='.$id.'" >Comprar</a>';
	$bloque .= '	</div>';	
	$bloque .= '</div>';
}


mysqli_close($conexion);

?>

                 
                  
