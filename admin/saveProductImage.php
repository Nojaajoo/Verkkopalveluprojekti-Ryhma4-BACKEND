<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

if (isset($_FILES["imagefile"])) {
    if ($_FILES["imagefile"]["error"] === UPLOAD_ERR_OK) {
        $filename = $_FILES["imagefile"]["name"];
        $type = $_FILES["imagefile"]["type"];
        if ($type === "image/png") {
            $path = ".img/" . basename($filename);
            if (move_uploaded_file($_FILES['imagefile']['tmp_name'],$path)) {
                $data = array("filename" => $filename);
                echo json_encode($data);
            } else {
                returnErr("kuvatiedoston tallennus epäonnistui");
            }
        } else {
            returnErr("tiedoston tyyppi virheellinen");
        }
    } else {
        returnErr("Kuvaa ei voitu ladata selaimelta");
    }
}