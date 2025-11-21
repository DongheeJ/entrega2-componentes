<?php
include('../conexion.php');
$link = Conectar();

$num_vuelo   = $_REQUEST['num_vuelo'];
$salida      = $_REQUEST['salida'];
$llegada     = $_REQUEST['llegada'];
$idPiloto    = $_REQUEST['idPiloto'];
$idAvion     = $_REQUEST['idAvion'];
$idOrigen    = $_REQUEST['idOrigen'];
$idDestino   = $_REQUEST['idDestino'];

if (empty($num_vuelo) || empty($salida) || empty($llegada) || empty($idPiloto) || empty($idAvion) || empty($idOrigen) || empty($idDestino)) {
    die("ERROR: campos vacíos");
}

$sql = "
    UPDATE vuelo
    SET salida    = '$salida',
        llegada   = '$llegada',
        idPiloto  = '$idPiloto',
        idAvion   = '$idAvion',
        idOrigen  = '$idOrigen',
        idDestino = '$idDestino'
    WHERE num_vuelo = '$num_vuelo'
";

$res = mysqli_query($link, $sql);

if (!$res) {
    echo "ERROR: " . mysqli_error($link);
} else {
    echo "Vuelo actualizado correctamente";
}
?>