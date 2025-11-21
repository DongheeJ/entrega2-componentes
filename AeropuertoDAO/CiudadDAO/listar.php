<?php
include('../conexion.php');
$link = Conectar();

$sql = 
"SELECT c.idCiudad, c.nombre as nombre_c, p.idPais, p.nombre as nombre_p
        FROM ciudad c
        JOIN pais p on (c.idPais = p.idPais);";

$res = mysqli_query($link, $sql);
$data = array();

if ($res->num_rows > 0) {
    while ($row = $res->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data); 
} else {
    echo json_encode(["error" => "No existe ningun Modelo"]); 
}
?>