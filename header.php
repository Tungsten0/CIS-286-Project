<?php
    require "php/connection.php";
    session_start();

    $student_id = $_SESSION['userid'];
?>

<!DOCTYPE html>
<html>
<head>
    <title>SJC</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../CIS-286-Project/css/bootstrap.css" />
    <style>
        /* hide arrows in input number */
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
        }
        
    </style>
</head>
<body>
<header class="border-bottom fixed-top" style="height: 95px; background-color: white; margin-left: -15px; margin-right: -15px;">
    <div class="container-fluid">
        <div class="p-3" style="height: 40px; background-color: #200174;"></div>

        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <img src="media/sjc-logo.png" alt="sjc logo" style="height: 50px; width: 50px; margin-left: 20px;">
            <h4 style="margin-left: 15px; margin-right: 25px;">St. John's College</h4>
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="../CIS-286-Project/index.php" class="nav-link px-2 link-body-emphasis">Home</a></li>
                <li><a href="../CIS-286-Project/about.php" class="nav-link px-2 link-body-emphasis">About Us</a></li>
                <li><a href="../CIS-286-Project/program-list.php" class="nav-link px-2 link-body-emphasis">Program List</a></li>
                
                <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex align-items-center" role="search" action="search.php" method="get">
                    <input class="form-control me-2" type="text" name="query" placeholder="Search..." aria-label="Search">
                </form>
            </ul>

            <div class="d-flex">
                <?php
                    if(isset($_SESSION['userid'])) {
                        echo '  
                            <a class="nav-link link-dark link-body-emphasis dropdown-toggle" id="navbarDropdown" 
                            role="button" data-bs-toggle="dropdown" aria-expanded="false" style="margin-right: 75px;">' . $student_id . '</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="link-body-emphasis dropdown-item" href="../CIS-286-Project/profile.php">Profile</a></li>
                                <li>
                                    <form role="search" action="php/logout.php" method="post">
                                        <button type="submit button link-dark" name="logout" class="link-body-emphasis dropdown-item" name="logout">Logout</button>
                                    </form>
                                </li>
                            </ul>
                            
                            ';
                    } else {
                        echo '  
                            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex align-items-center" style="margin-left:25px;" action="php/login.php" method="post">
                                <input class="form-control me-2" style="width: 25%;" type="number" name="userid" placeholder="Student ID">
                                <input class="form-control me-2" style="width: 25%;" type="password" name="password" placeholder="Password">
                                <button type="submit button" name="login" class="btn btn-primary">Login</button>
                            </form>
                            ';
                    }
                ?>
                

                
            </div>
        </div>
    </div>
</header>

<main style="margin-top: 50px; margin-bottom: 100px;">