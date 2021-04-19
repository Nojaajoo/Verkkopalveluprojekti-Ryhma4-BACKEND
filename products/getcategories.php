<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

try {
    $db = openDb();
    selectAsJson($db,"select * from tuoteryhma order by jarjestusNro");
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}