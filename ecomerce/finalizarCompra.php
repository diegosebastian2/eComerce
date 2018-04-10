<?php 

//error_reporting(0);
include "conexion/conexion.php";



//$conexion = mysqli_connect("localhost","root","","social") or die("Error al conectarse a la base de datos");

session_start();

if(isset($_SESSION['usuario'])){

	$cantidad = $_POST['cantidad'];
	$producto_id = $_POST['id'];
	$usuario = $_SESSION['usuario'];
	$usuario_id = $_SESSION['usuario_id'];

	$consulta = "INSERT INTO compras (monto, fecha, producto_id, cantidad, usuario_id, estado_id ) SELECT p.precio * '$cantidad', NOW(),'$producto_id' ,'$cantidad', $usuario_id, 2
			FROM productos p
			WHERE id = '$producto_id' ";

	$query = mysqli_query($conexion, $consulta) or die(mysqli_error($conexion));

	if ($query == true){

		echo "<p>Compra exitosa!</p>";
		echo "<a href='index.php'>Home</a><br>";

	} else {
		echo "<p>Hubo un problema...</p>";
		echo "<a href='index.php'>Home</a><br>";
	}
} else {

	echo "<p>Debe loguearse</p>";
	echo "<a href='index.php'>Home</a><br>";
	echo "<a href='log.php'>Log</a><br>";
}


mysqli_close($conexion);


 ?>