<?php
  require "../header.php";
?>


    <!--margin-top cus header will always take up around 100px of the top screen-->
    <main>

        <div id="bus213">
            <?php include("../php/get_tuple_info.php?id=bus213"); ?>
            <h1>Course ID: <?php echo $courseid; ?></h1> <br>
            <p>Course Title: <?php echo $title; ?></p> <br>
            <p>Course Credits: <?php echo $credits; ?></p> <br>
            <p>Course Department: <?php echo $department; ?></p> <br>
            <p>Course Description: <?php echo $description; ?></p> <br>
        </div>
        
    </main>

<?php
  require "../footer.php";
?>