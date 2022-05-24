<?php

if (isset($_GET['id'])) {
    $where = " Where id_smp = ".$_GET['id'];
} else {
    $where = '';
}

$query = mysql_query("SELECT * FROM datasmp ".$where);
$arr = [];
while ($data = mysql_fetch_array($query)) {
    $arr[] = $data;
    // echo "<option value='".$data['id']."'>".$data['namasekolah']."</option>";
}

echo json_encode($arr);
