<?php 

//error_reporting(0);
include "conexion/conexion.php";


$usuario = $_POST['usuario'];
$password = $_POST['password'];

//$conexion = mysqli_connect("localhost","root","","social") or die("Error al conectarse a la base de datos");

$consulta = "SELECT nombre, id FROM usuarios WHERE email = '$usuario' and password = '$password'";

$query = mysqli_query($conexion, $consulta) or die(mysqli_error($conexion));

$ingreso = mysqli_num_rows($query);

if($ingreso == 1){

	//header("Location: index.php");

	session_start();
	$datos = mysqli_fetch_array($query);

		$nombre = $datos['nombre'];
		$_SESSION['usuario'] = $datos['nombre'];
		$_SESSION['usuario_id'] =$datos['id'];

		echo "<p>Bienvenido ".$nombre."</p>";
		echo "<a href='index.php'>Home</a><br>";
		echo "<a href='compras.php'>Compras</a><br>";
	

	
} else {
	//header("Location: error.php");
	echo "<p>Hubo un problema, usted no se encuentra en la base de datos...</p>";
	echo "<a href='index.php'>volver al Home?</a><br>";

}

mysqli_close($conexion);


 ?>