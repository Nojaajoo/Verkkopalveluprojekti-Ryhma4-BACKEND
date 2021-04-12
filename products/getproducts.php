<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$uri = parse_url(filter_input(INPUT_SERVER,'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$uri);
$trnro = $parameters[1];

try {
    $db = openDb();
    selectAsJson($db,"SELECT * FROM tuote WHERE trnro = $trnro");
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}