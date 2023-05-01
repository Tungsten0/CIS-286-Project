<?php
  require "header.php";
  require "php/connection.php";
?>

<?php

// Retrieve the ID from the URL parameter
$program_id = $_GET['id'];

// Retrieve the tuple information from the database
$stmt = mysqli_prepare($con, 
"SELECT program_id, course_id
FROM programcourse
WHERE program_id = ?");
mysqli_stmt_bind_param($stmt, "s", $program_id);
mysqli_stmt_execute($stmt);
$data = mysqli_stmt_get_result($stmt);

// Iterate through each tuple and save in array
while ($row = mysqli_fetch_assoc($data)) {
    $course_id[] = $row['course_id'];
}

$stmt = mysqli_prepare($con, 
"SELECT program_id, course_id
FROM programcourse
WHERE program_id = ?");
mysqli_stmt_bind_param($stmt, "s", $program_id);
mysqli_stmt_execute($stmt);
$data = mysqli_stmt_get_result($stmt);

?>

<main>

    <div class="container">
        <h1>Program ID: <span style="font-weight: 400;"><?php echo strtoupper($program_id); ?></span> </h1>  <br>
        <h5>Courses: <span style="font-weight: 400;"> <?php echo implode(", ", $course_id); ?></span></h5>
    </div>

</main>

<?php
  require "footer.php";
?>