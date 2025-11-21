<?php
include('../conexion.php');
$link = Conectar();

$sql = "SELECT idAvion, codigo, b.idBase, b.nombre AS nombreBase, idModelo
        FROM avion a JOIN base b ON a.idBase = b.idBase";
$res = mysqli_query($link, $sql);
$data = array();

if ($res->num_rows > 0) {
    while ($row = $res->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data); // ✅ 루프 밖에서 한 번만 출력
} else {
    echo json_encode(["error" => "No existe ningún avión"]); // ✅ JSON 형식으로 에러 반환
}
?>