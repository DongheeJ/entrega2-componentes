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

$sql = "INSERT INTO vuelo (num_vuelo, salida, llegada, idPiloto, idAvion, idOrigen, idDestino)
        VALUES ('$num_vuelo', '$salida', '$llegada', '$idPiloto', '$idAvion', '$idOrigen', '$idDestino')";

$res = mysqli_query($link, $sql);

if (!$res) {
    echo "ERROR: " . mysqli_error($link);
} else {
    echo "Vuelo registrado correctamente";
}
?>