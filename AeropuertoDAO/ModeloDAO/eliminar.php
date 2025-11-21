<?php
include('../conexion.php');
$link = Conectar();

$idModelo   = $_REQUEST['idModelo'];

if(empty($idModelo)){
    echo "ERROR: num_vuelo vacío";
    exit;
}

$sqlCheck = "SELECT idModelo FROM modelo WHERE idModelo = '$idModelo'";
$resCheck = mysqli_query($link, $sqlCheck);

if($resCheck && $resCheck->num_rows > 0){
    $sqlDelete = "DELETE FROM modelo WHERE idModelo = '$idModelo'";
    $resDelete = mysqli_query($link, $sqlDelete);

    if($resDelete){
        echo "OK: Modelo eliminado correctamente";
    } else {
        echo "ERROR: No se pudo eliminar el modelo";
    }
} else {
    echo "ERROR: Modelo no encontrado";
}
?>