<?php
require_once "../verkkopalveluprojekti/inc/functions.php";
require_once "../verkkopalveluprojekti/inc/headers.php";

try {
    $db = openDb();
    selectAsJson($db,"select * from category");
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}