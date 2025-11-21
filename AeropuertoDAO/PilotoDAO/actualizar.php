<?php
include('../conexion.php');
$link=Conectar();
$idPiloto=$_REQUEST['idPiloto'];
$nombre=$_REQUEST['nombre'];
$codigo=$_REQUEST['codigo'];
$idBase=$_REQUEST['idBase'];
$usuario=$_REQUEST['usuario'];
$pass=$_REQUEST['pass'];

if(empty($idPiloto) || empty($nombre) || empty($codigo) || empty($idBase) || empty($usuario) || empty($pass)){
    die("ERROR: campos vacíos");
}

$sql = 
    "UPDATE persona p
    JOIN piloto pl ON pl.idPiloto = p.idPersona
    SET p.nombre   = '$nombre',
        p.codigo   = '$codigo',
        p.idBase   = '$idBase',
        p.usuario  = '$usuario',
        p.pass     = '$pass'
    WHERE pl.idPiloto = '$idPiloto'";

$res=mysqli_query($link,$sql);
if(!$res){
    echo "ERROR: " . mysqli_error($link);
} else {
    echo "Datos actualizados correctamente";
}
?>