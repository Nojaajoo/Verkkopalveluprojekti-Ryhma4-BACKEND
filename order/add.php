<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$db = null;

$input = json_decode(file_get_contents('PHP://input'));
$snimi = filter_var($input->snimi,FILTER_SANITIZE_STRING);
$enimi = filter_var($input->enimi,FILTER_SANITIZE_STRING);
$osoite = filter_var($input->osoite,FILTER_SANITIZE_STRING);
$postinro = filter_var($input->postinro,FILTER_SANITIZE_STRING);
$postitmp = filter_var($input->postitmp,FILTER_SANITIZE_STRING);
$puhnro = filter_var($input->puhnro,FILTER_SANITIZE_STRING);
$cart = $input->cart;

try {
    $db = openDb();
    $db->beginTransaction();

    $sql = "insert into asiakas (snimi,enimi,postinro,postitmp,puhnro) values
    ('" . 
        filter_var($enimi,FILTER_SANITIZE_STRING) . "','" . 
        filter_var($snimi,FILTER_SANITIZE_STRING) . "','" . 
        filter_var($osoite,FILTER_SANITIZE_STRING) . "','" . 
        filter_var($postinro,FILTER_SANITIZE_STRING) . "','" . 
        filter_var($postitmp,FILTER_SANITIZE_STRING) . "','" . 
        filter_var($puh,FILTER_SANITIZE_STRING)
    .   "')";

    $asiakasId = executeInsert($db,$sql);
    $sql = "insert into 'tilaus' (asiakasID) values ($asiakasId)";
    $tilausId = executeInsert($db,$sql);

    foreach ($cart as $product) {
        $sql = "insert into tilausrivi (tilausnro,tuotenro) values ("
        .
            $tilausId . "," .
            $product->id
        .   ")";
        executeInsert($db,$sql);
    }

    $db->commit();
    header('HTTP/1.1 200 OK');
    $data = array('id' => $asiakasId);
    echo json_encode($data);
}
catch (PDOException $pdoex) {
    $db->rollback();
    returnError($pdoex);
}