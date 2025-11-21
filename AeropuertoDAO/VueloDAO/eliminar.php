<?php
include('../conexion.php');
$link = Conectar();

$num_vuelo = $_REQUEST['num_vuelo'];

if(empty($num_vuelo)){
    echo "ERROR: num_vuelo vacío";
    exit;
}

$sqlCheck = "SELECT num_vuelo FROM vuelo WHERE num_vuelo = '$num_vuelo'";
$resCheck = mysqli_query($link, $sqlCheck);

if($resCheck && $resCheck->num_rows > 0){
    $sqlDelete = "DELETE FROM vuelo WHERE num_vuelo = '$num_vuelo'";
    $resDelete = mysqli_query($link, $sqlDelete);

    if($resDelete){
        echo "OK: Vuelo eliminado correctamente";
    } else {
        echo "ERROR: No se pudo eliminar el vuelo";
    }
} else {
    echo "ERROR: Vuelo no encontrado";
}
?>