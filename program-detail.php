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


// Initialize the 2D array
$course_info = array();

// Iterate through each tuple and save courses in array
while ($row = mysqli_fetch_assoc($data)) {
    $course_id = $row['course_id'];

    // Get course information from the courses table
    $course_stmt = mysqli_prepare($con,
        "SELECT *
        FROM courses
        WHERE id = ?");
    mysqli_stmt_bind_param($course_stmt, "s", $course_id);
    mysqli_stmt_execute($course_stmt);
    $course_data = mysqli_stmt_get_result($course_stmt);
    $course_info[$course_id] = mysqli_fetch_assoc($course_data);
}


if ($course_id == null) {
    echo 'courses table is empty';
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
        <h1>Program: <span style="font-weight: 400;"><?php echo ucwords($program_name); ?></span> </h1> <br>
        <h3>Program ID: <span style="font-weight: 400;"><?php echo strtoupper($program_id); ?></span> </h3>

        <h4>Credits: <span style="font-weight: 400;"> <?php echo $credits; ?></span></h4>
        <h4>Department: <span style="font-weight: 400;"> <?php echo $department; ?></span></h4> <br>
        <h5>Professional Core Courses:</h5>
        
        <div class="parent-container" style="overflow: auto;">

            <?php foreach ($course_info as $course_id => $course) { ?>

                <a href="course.php?id=<?php echo $course_id ?>">
                <div class="card square-card card-hover" 
                style="margin-left: 20px; margin-right: 20px; margin-top: 20px; margin-bottom: 20px; 
                width: 200px; height: 200px; display: block; float: left; border-radius: 0; color: white;">
                    <div class="card-body">
                    <p class="card-text">#<?php echo $course['department']; ?></p>
                    <p class="card-text"><?php echo $course['id']; ?></p>
                    <h6 class="card-title"><?php echo $course['title']; ?></h6>
                    <p class="card-text">Credits: <?php echo $course['credits']; ?></p>
                    </div>
                </div>
                </a>

            <?php } ?>

            <div class="clearfix"></div>

        </div>
            
    </div>

    <style>
        .card-hover {
      background-color: #200174;
      transition: all 0.3s ease-in;
    }
    
    .card-hover:hover {
      background-color: #2f7ad5;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      opacity: 0.9;
      transform: scale(1.05);
    }

    .card-hover .card-title,
    .card-hover .card-text {
      color: #fff;
    }
        .clearfix {
            clear: both;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>
</main>

<?php
  require "footer.php";
?>