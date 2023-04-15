<?php

if (isset($_POST['login'])) {
    require 'connection.php';

    $userid = $_POST['userid'];
    $password = $_POST['password'];

    if (empty($userid) || empty($password)) {
        header("Location: ../index.php?error=emptyfields");
        exit();
    } else {
        //check userid is correct
        $sql = "SELECT * FROM users WHERE idUsers = $userid limit 1";
        $result = mysqli_query($con, $sql);

        //if userid correct, check password
        if($result) {
            if($result && mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                if($row['pwdUsers'] === $password) {
                    session_start();
                    $_SESSION['userid'] = $row['idUsers'];
                    header("Location: ../index.php?login=success");
                    die;
                } else {
                    header("Location: ../index.php?error=wrongpassword");
                    exit();
                }
            }
        } else {
            header("Location: ../index.php?error=wrongid");
            exit();
        }
    }

} else {
    header("Location: ../index.php");
    exit();
}

?>