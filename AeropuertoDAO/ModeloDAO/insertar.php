<?php
include('../conexion.php');
$link = Conectar();

$nombre = $_REQUEST['nombre'];
$idTipo = $_REQUEST['idTipo'];

if (empty($nombre) || empty($idTipo)) {
    die("ERROR: campos vacíos");
}

$sql = "INSERT INTO modelo (nombre, idTipo)
        VALUES ('$nombre', '$idTipo')";

$res = mysqli_query($link, $sql);

if (!$res) {
    echo "ERROR: " . mysqli_error($link);
} else {
    echo "Modelo registrado correctamente";
}
?>