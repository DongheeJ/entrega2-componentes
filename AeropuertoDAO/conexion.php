<?php
function Conectar(){
    $host = "localhost";
    $user = "root";
    $pass = "";
    $dbname = "aeropuerto";
    $port = 3307; 

    // mysqli_connect(host, user, password, dbname, port)
    $link = mysqli_connect($host, $user, $pass, $dbname, $port);

    if (!$link) {
        die("Error de conexión: " . mysqli_connect_error());
    }

    return $link;
}
?>