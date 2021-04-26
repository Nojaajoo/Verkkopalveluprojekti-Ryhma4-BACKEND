<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$fname = 'Donitsi';
$lname = 'Admin';
$username = 'donitsiadmin';
$password = password_hash("donitsi123",PASSWORD_DEFAULT);

$sql = "insert into user(fname, lname, username, password)
values ('$fname','$lname','$username','$password')";
echo $sql;