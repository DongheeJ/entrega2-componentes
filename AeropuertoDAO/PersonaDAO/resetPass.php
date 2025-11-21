<?php
include('../conexion.php');
$link = Conectar();

$usuario = $_REQUEST['usuario'];
$pass = $_REQUEST['pass'];

// verificar que las variables no estén vacías
if(empty($usuario) || empty($pass)){
    echo "ERROR 1"; // campos vacíos
    exit;
}

// verificar que el usuario exista
$sqlCheck = "SELECT idPersona FROM persona WHERE usuario = '$usuario'";
$resCheck = mysqli_query($link, $sqlCheck);

if($resCheck && $resCheck->num_rows > 0){
    // actualizar la contraseña
    $sqlUpdate = "UPDATE persona SET pass = '$pass' WHERE usuario = '$usuario'";
    $resUpdate = mysqli_query($link, $sqlUpdate);

    if($resUpdate){
        echo "OK: Contraseña actualizada correctamente";
    } else {
        echo "ERROR 2: No se pudo actualizar la contraseña";
    }
} else {
    echo "ERROR 3: Usuario no encontrado";
}
?>