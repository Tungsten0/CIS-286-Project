<?php 


function show_404_error() {
    header("HTTP/1.0 404 Not Found");
    include("error.php");
    exit();
}

if (!file_exists($_SERVER['DOCUMENT_ROOT'] . $_SERVER['REQUEST_URI'])) {
    show_404_error();
}

?>  