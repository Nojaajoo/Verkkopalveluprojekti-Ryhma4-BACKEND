<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$db = null; // declare and initialize variable for database connection.

//read input as JSON.
$input = json_decode(file_get_contents("php://input"));
$tuotenimi = filter_var($input->tuotenimi,FILTER_SANITIZE_STRING);
$hinta = filter_var($input->hinta,FILTER_SANITIZE_STRING);
$kustannus = filter_var($input->kustannus,FILTER_SANITIZE_STRING);
$trnro = filter_var($input->trnro,FILTER_SANITIZE_NUMBER_INT);
$maku = filter_var($input->maku,FILTER_SANITIZE_STRING);
$taytemaku = filter_var($input->taytemaku,FILTER_SANITIZE_STRING);
$kuva = filter_var($input->kuva,FILTER_SANITIZE_STRING);

try {
    $db = openDb();
    //begin transaction
    $db->beginTransaction();

    $sql = "insert into tuote (tuotenimi, hinta, kustannus, trnro, maku, taytemaku, kuva) values
    ('" .
        $tuotenimi . "','" .
        $hinta . "','" .
        $kustannus . "','" .
        $trnro . "','" .
        $maku . "','" .
        $taytemaku . "','" .
        $kuva . "'
    )";

    $product_id = executeInsert($db,$sql);

    $db->commit(); //commit transaction.
    header("HTTP/1.1 200 OK");
    echo json_encode(array('status' => 'ok'));
}
catch (PDOException $pdoex) {
    $db->rollback(); // error, rollback transaction
    returnError($pdoex);
}