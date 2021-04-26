<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$db = null; // declare and initialize variable for database connection.

//read input as JSON.
$input = json_decode(file_get_contents("php://input"));
$tilausnro = filter_var($input->tilausnro,FILTER_SANITIZE_NUMBER_INT);
$rivinro = filter_var($input->rivinro,FILTER_SANITIZE_NUMBER_INT);
$tuotenro = filter_var($input->tuotenro,FILTER_SANITIZE_NUMBER_INT);
$kpl = filter_var($input->kpl,FILTER_SANITIZE_NUMBER_INT);


try {
    $db = openDb();
    //begin transaction
    $db->beginTransaction();

    $sql = "update tilausrivi set tuotenro=$tuotenro, kpl=$kpl where tilausnro=$tilausnro and rivinro=$rivinro";

    $product_id = executeInsert($db,$sql);

    $db->commit(); //commit transaction.
    header("HTTP/1.1 200 OK");
    echo json_encode(array('status' => 'ok'));
}
catch (PDOException $pdoex) {
    $db->rollback(); // error, rollback transaction
    returnError($pdoex);
}