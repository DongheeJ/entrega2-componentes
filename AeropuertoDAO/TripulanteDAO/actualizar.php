<?php
include('../conexion.php');
$link=Conectar();
$idTripulante=$_REQUEST['idTripulante'];
$nombre=$_REQUEST['nombre'];
$codigo=$_REQUEST['codigo'];
$idBase=$_REQUEST['idBase'];
$usuario=$_REQUEST['usuario'];
$pass=$_REQUEST['pass'];

if(empty($idTripulante) || empty($nombre) || empty($codigo) || empty($idBase) || empty($usuario) || empty($pass)){
    die("ERROR: campos vacíos");
}

$sql = 
    "UPDATE persona p
    JOIN tripulante t ON t.idTripultante = p.idPersona
    SET p.nombre   = '$nombre',
        p.codigo   = '$codigo',
        p.idBase   = '$idBase',
        p.usuario  = '$usuario',
        p.pass     = '$pass'
    WHERE t.idTripultante = '$idTripulante'";

$res=mysqli_query($link,$sql);
if(!$res){
    echo "ERROR: " . mysqli_error($link);
} else {
    echo "Datos actualizados correctamente";
}
?>