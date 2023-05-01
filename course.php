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
        <h1>Course ID: <span style="font-weight: 400;"><?php echo strtoupper($id); ?></span> </h1>  <br>
        <h5>Course Title: <span style="font-weight: 400;"> <?php echo $title; ?></span></h5>
        <h5>Course Credits: <span style="font-weight: 400;"> <?php echo $credits; ?></span></h5>
        <h5>Course Department: <span style="font-weight: 400;"> <?php echo $department; ?></span></h5>
        <h5>Course Description: <span style="font-weight: 400;"> <?php echo $description; ?></span></h5>
        <a href="textbook.php?id=<?php echo $txtbkid?>" class="btn btn-primary ">Textbook</a>
    </div>

</main>

<?php
  require "footer.php";
?>