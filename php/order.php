<?php
require "connection.php";
session_start();
ob_start(); // output buffer

//get student id and textbook isbn
$student_id = $_SESSION['userid'];
$textbook = $_GET['order'];

//get textbook info for mail
$stmt = mysqli_prepare($con, "SELECT title, category, page_count, publisher, price FROM books WHERE isbn = ?");
mysqli_stmt_bind_param($stmt, "i", $textbook);
mysqli_stmt_execute($stmt);
$data = mysqli_stmt_get_result($stmt);

$result = mysqli_fetch_assoc($data);
$title = $result["title"];
$category = $result["category"];
$page_count = $result["page_count"];
$publisher = $result["publisher"];
$price = $result["price"];

//so that there are no weird characters like '' () "" etc
$title = mysqli_real_escape_string($con, $title);


//prepare and send sql statement to save to database & email
$sql2 = 
"INSERT INTO orders (student_id, textbook, title, price) 
VALUES ('$student_id', '$textbook', '$title', '$price');";

if (mysqli_query($con, $sql2)) {
    echo "Order placed successfully! <br>";
    echo "You have been emailed a copy of the receipt! <br>";
    echo "Redirecting you to Home Page...";

    // Send email receipt
    $to = $student_id . '@sjc.bz';
    $subject = 'Order Receipt';
    $message = 'Thank you for placing your order. Here is your receipt:\n\n';
    $message .= 'Textbook: ' . $title . '\n';
    $message .= 'Category' . $category . '\n';
    $message .= 'Page Count: ' . $page_count . '\n';
    $message .= 'Publisher' . $publisher . '\n';
    $message .= 'ISBN' . $textbook . '\n';
    $message .= 'Total: $' . $price . '\n\n\n';
    $message .= 'If this was a mistake, please contact the finance office to let them know at accountant@sjc.edu.bz \n';
    $headers = 'From: noreply@example.com' . "\r\n" .
        'Reply-To: noreply@example.com' . "\r\n" .
        'X-Mailer: PHP/' . phpversion();
    mail($to, $subject, $message, $headers);

    ob_end_flush();
    header("Refresh:3; url=../index.php");
    exit();
} else {
    echo "Fatal Error! <br>";
    echo "Redirecting you to Home Page...";
    ob_end_flush();
    header("Refresh:3; url=../index.php");
    exit();

    //echo "Error!: " . $sql . "<br>" . mysqli_error($con);
}

