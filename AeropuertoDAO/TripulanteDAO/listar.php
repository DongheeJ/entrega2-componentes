<?php
include('../conexion.php');
$link = Conectar();

$sql = "SELECT t.idTripultante, p.nombre as nombre_pl, p.codigo, p.usuario, p.pass, b.idBase, b.nombre as nombre_b
        FROM tripulante t
        JOIN persona p on (t.idTripultante = p.idPersona)
        JOIN base b on (b.idBase = p.idBase);";
$res = mysqli_query($link, $sql);
$data = array();

if ($res->num_rows > 0) {
    while ($row = $res->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data); 
} else {
    echo json_encode(["error" => "No existe ningun Tripulante"]); 
}
?>