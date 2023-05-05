<?php
  require "php/connection.php";
  require "header.php";
?>

<?php

if(isset($_GET['id'])) {
// Retrieve the ID from the URL parameter
$program_id = $_GET['id'];


// Code to get info for courses
$stmt = mysqli_prepare($con,
"SELECT program_id, course_id
FROM programcourse
WHERE program_id = ?");
mysqli_stmt_bind_param($stmt, "s", $program_id);
mysqli_stmt_execute($stmt);
$data = mysqli_stmt_get_result($stmt);

// Iterate through each tuple and save courses in array
while ($row = mysqli_fetch_assoc($data)) {
    $course_id[] = $row['course_id'];
}

if($data == null) {
    header("Location: error.php");
}

// Code to get info for programs
$stmt2 = mysqli_prepare($con,
"SELECT program_code, program_name, credits, department
FROM programs
WHERE program_code = ?");
mysqli_stmt_bind_param($stmt2, "s", $program_id);
mysqli_stmt_execute($stmt2);
$data2 = mysqli_stmt_get_result($stmt2);

$result = mysqli_fetch_assoc($data2);

if($result == null) {
    header("Location: error.php");
}

$program_name = $result["program_name"];
$credits = $result["credits"];
$department = $result["department"];

} else {
    header("Location: error.php");
}

?>



    <div class="container">
        <h1>Program: <span style="font-weight: 400;"><?php echo ucwords($program_name); ?></span> </h1>
        <h2>Program ID: <span style="font-weight: 400;"><?php echo strtoupper($program_id); ?></span> </h2> <br>

        <h4>Credits: <span style="font-weight: 400;"> <?php echo $credits; ?></span></h4>
        <h4>Department: <span style="font-weight: 400;"> <?php echo $department; ?></span></h4>
        <h5>Courses:</h5>
        <span style="font-weight: 400;">
            <ul>
                <?php foreach ($course_id as $id) { ?>
                    <li><a href="course.php?id=<?php echo $id; ?>"><?php echo $id; ?></a></li>
                <?php } ?>
            </ul>
        </span>

    </div>

</main>

<?php
  require "footer.php";
?>