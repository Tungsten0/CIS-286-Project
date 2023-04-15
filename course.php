<?php
  require "header.php";
  require "php/connection.php";
?>

<?php

// Retrieve the ID from the URL parameter
$id = $_GET['id'];
// Retrieve the tuple information from the database
$stmt = mysqli_prepare($con, 
"SELECT title, credits, department, description, txtbkid 
FROM courses
WHERE id = ?");

mysqli_stmt_bind_param($stmt, "s", $id);
mysqli_stmt_execute($stmt);
$data = mysqli_stmt_get_result($stmt);

$result = mysqli_fetch_assoc($data);

$title = $result["title"];
$credits = $result["credits"];
$department = $result["department"];
$description = $result["description"];
$txtbkid = $result["txtbkid"];

?>

<main>

    <div class="container">
        <h1>Course ID: <?php echo $id; ?></h1> <br>
        <p>Course Title: <?php echo $title; ?></p>
        <p>Course Credits: <?php echo $credits; ?></p>
        <p>Course Department: <?php echo $department; ?></p>
        <p>Course Description: <?php echo $description; ?></p>
        <a href="textbook.php?id=<?php echo $txtbkid?>" class="btn btn-primary ">Textbook</a>
    </div>

</main>

<?php
  require "footer.php";
?>