<?php
include('../conexion.php');
$link=Conectar();
$user=$_REQUEST['user'];
$pass=$_REQUEST['pass'];

// verificar que las variables no esten vacias
if(empty($user)||empty($pass)){
    echo "ERROR 1";
}else{
    $sql="select idPersona,p.nombre as p_nombre,p.codigo,p.usuario,p.pass,b.idBase,b.nombre as b_nombre
    from persona p join base b on (b.idBase = p.idBase) 
    where usuario = '$user' and pass='$pass'";
    $res=mysqli_query($link,$sql);
    $data=array();
    $num=$res->num_rows;
    if($num>0){
        while($row=$res->fetch_assoc()){
            $data[]=$row;
            //crear el json 
            echo json_encode($data);
        }
    }else{
        echo "ERROR 2";
    }
}   
?>