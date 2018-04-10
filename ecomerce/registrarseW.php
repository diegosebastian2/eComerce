<?php 

//error_reporting(0);
include "conexion/conexion.php";


$nombre = $_POST['nombre'];
$password = $_POST['password'];
$email = $_POST['email'];

//$conexion = mysqli_connect("localhost","root","","social") or die("Error al conectarse a la base de datos");

$consulta = "INSERT INTO usuarios (nombre, email, password ) 
			SELECT '$nombre', '$email' ,'$password' ";

	$query = mysqli_query($conexion, $consulta) or die(mysqli_error($conexion));

	if ($query == true){

		echo "<p>Registro exitoso!</p>";
		echo "<a href='index.php'>Home</a><br>";

	} else {
		echo "<p>Hubo un problema...</p>";
		echo "<a href='index.php'>Home</a><br>";
	}



mysqli_close($conexion);


 ?>