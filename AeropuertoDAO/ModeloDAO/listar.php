<?php
include('../conexion.php');
$link = Conectar();

$sql = "SELECT idModelo, nombre, t.idTipo, descripcion
        FROM modelo m JOIN tipo t ON (m.idTipo = t.idTipo)";
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