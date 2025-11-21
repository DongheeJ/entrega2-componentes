<?php
include("conexion.php");
$link = Conectar();
if ($link) {
    echo "Conexión exitosa";
}
?>