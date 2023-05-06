<?php
  require "php/connection.php";
  require "header.php";
?>

<?php

if(isset($_GET['id'])) {
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

if($title == null) {
  header("Location: error.php?error=no-title");
}

} else {
  header("Location: error.php?error=no-id");
}

?>

<section class="container" style="padding: 50px">
  <div class="row mb-3 text-center">
    <div class="col-md-4 themed-grid-col">
      <img src="media/laptop.png" alt="laptop" style="height: 400px; width: 250px;">
    </div>

    <div class="col-md-8 themed-grid-col">
      <h2>Course: <span style="font-weight: 400;"> <?php echo $title; ?></span></h2>
      <div class="card">
        <div class="row" style="padding: 20px">
          <div class="col-md-6 themed-grid-col text-start">
            <h5>Course ID: <span style="font-weight: 400;"><?php echo strtoupper($id); ?></span> </h5>
            <h5>Department: <span style="font-weight: 400;"> <?php echo $department; ?></span></h5>
            <h5>Textbook: <?php 
              if($txtbkid == 0) {
                echo '<h5 style="color: red;">No textbook</h5>';
              } else {
                echo '<a href="textbook.php?id=' . $txtbkid . '" class="btn btn-primary ">Textbook</a>';
              } 
            ?></h5>
            
          </div>
          <div class="col-md-6 themed-grid-col text-start">
            <h5>Credit Hours: <span style="font-weight: 400;"> <?php echo $credits; ?></span></h5>
          </div>
        </div>
      </div>
      <br>
      <div class="card" style="padding: 50px">
        <div class="row pb-3">
          <h5>Course Description: <span style="font-weight: 400;"> <?php echo $description; ?></span></h5>
        </div>
      </div>
      
    </div>

    
  </div>
</section>

</main>

<?php
  require "footer.php";
?>