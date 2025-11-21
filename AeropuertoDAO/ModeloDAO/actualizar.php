<?php
include('../conexion.php');
$link = Conectar();

$idModelo   = $_REQUEST['idModelo'];
$nombre      = $_REQUEST['nombre'];
$idTipo     = $_REQUEST['idTipo'];

if (empty($idModelo) || empty($nombre) || empty($idTipo)) {
    die("ERROR: campos vacíos");
}

$sql = "
    UPDATE modelo
    SET nombre   = '$nombre',
        idTipo  = '$idTipo'
    WHERE idModelo = '$idModelo'
";

$res = mysqli_query($link, $sql);

if (!$res) {
    echo "ERROR: " . mysqli_error($link);
} else {
    echo "Vuelo actualizado correctamente";
}
?>