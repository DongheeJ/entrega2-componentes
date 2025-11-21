<?php
include('../conexion.php');
$link=Conectar();
$nombre=$_REQUEST['nombre'];
$codigo=$_REQUEST['codigo'];
$idBase=$_REQUEST['idBase'];
$usuario=$_REQUEST['usuario'];
$pass=$_REQUEST['pass'];

if(empty($nombre) || empty($codigo) || empty($idBase) || empty($usuario) || empty($pass)){
    die("ERROR: campos vacíos");
}

$sql = "INSERT INTO persona (nombre, codigo, idBase, usuario, pass)
        VALUES ('$nombre', '$codigo', '$idBase', '$usuario', '$pass')";
$res = mysqli_query($link, $sql);

if(!$res){
    echo "Error: " . mysqli_error($link);
    exit;
}
$idPersona = mysqli_insert_id($link); // ← PHP 내장 함수, LAST_INSERT_ID()와 동일

$sql2 = "INSERT INTO tripulante (idTripultante) VALUES ('$idPersona')";
$res2 = mysqli_query($link, query: $sql2);

if(!$res2){
    echo "Error: " . mysqli_error($link);
} else {
    echo "Bienvenido, tripulante" . $nombre;
}
?>