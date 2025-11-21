<?php
include('../conexion.php');
$link=Conectar();

$sql=
"SELECT idBase, nombre
FROM base";
$res=mysqli_query($link,$sql);
$data=array();

if ($res->num_rows > 0) {
    while ($row = $res->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data); 
} else {
    echo json_encode(["error" => "No existe ninguna Base"]); // ✅ JSON 형식으로 에러 반환
}
?>