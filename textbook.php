<?php
  require "header.php";
  require "php/connection.php";
?>

<?php

// Retrieve the ID from the URL parameter
$id = $_GET['id'];
// Retrieve the tuple information from the database
$stmt = mysqli_prepare($con, 
"SELECT title, description, year, category, page_count, author, publisher, isbn, price 
FROM books
WHERE id = ?");

mysqli_stmt_bind_param($stmt, "i", $id);
mysqli_stmt_execute($stmt);
$data = mysqli_stmt_get_result($stmt);

$result = mysqli_fetch_assoc($data);

$title = $result["title"];
$description = $result["description"];
$year = $result["year"];
$category = $result["category"];
$page_count = $result["page_count"];
$author = $result["author"];
$publisher = $result["publisher"];
$isbn = $result["isbn"];
$price = $result["price"];


?>

<main style="margin-top: 50px; margin-bottom:50px;">

    <div class="container">
        <div class="row">
            <div class="col-4">
                <img alt="txtbk img">
            </div>
            <div class="col-8">
            <h3><?php echo $title; ?></h3>
            <h6>Description: <span style="font-weight: 400;"><?php echo $description; ?></span></h6>
            <h6>Year Published: <span style="font-weight: 400;"><?php echo $year; ?></span></h6>
            <h6>Category: <span style="font-weight: 400;"><?php echo $category; ?></span></h6>
            <h6>Page Count: <span style="font-weight: 400;"><?php echo $page_count; ?></span></h6>
            <h6>Author: <span style="font-weight: 400;"><?php echo $author; ?></span></h6>
            <h6>Publisher: <span style="font-weight: 400;"><?php echo $publisher; ?></span></h6>
            <h6>ISBN: <span style="font-weight: 400;"><?php echo $isbn; ?></span></h6>
            <h6>Price: $<span style="font-weight: 400;"><?php echo $price; ?></span></h6>
            </div>
        </div>
    </div>
        
</main>

<?php
  require "footer.php";
?>