<?php
  require "php/connection.php";
  require "header.php";
?>

<?php
if (isset($_GET['query'])) {
  $query = $_GET['query'];
  
  //search in courses table
  $stmt = mysqli_prepare($con, 
  "SELECT id, title, department, description
    FROM sjc.courses
    WHERE id LIKE '%$query%'
    OR title LIKE '%$query%'
    OR department LIKE '%$query%'
    OR description LIKE '%$query%';");
  
  mysqli_stmt_execute($stmt);
  $data = mysqli_stmt_get_result($stmt);

  $results = [];
  while ($row = mysqli_fetch_assoc($data)) {
    // add each row to the results array, with query highlighted
    $row['id'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['id']);
    $row['title'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['title']);
    $row['department'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['department']);
    $row['description'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['description']);
    $results[] = $row;
  }

}

?>
<main>
  <section class="container" style="margin-top: 10px;">
    <h2 style="color: #200174;">Search Results for <span style="color:black; font-weight: 400; font-style:italic;"><?php echo $query ?></span></h2>
    <h6 style="margin-top: 10px; color: #200174;">eg: cis125 bus105</h6>
    <br>
    <h6><?php // echo $title; ?> </h6>
    <?php 
      if (count($results) > 0) {
        echo "<table>";
        echo "<tr><th>ID</th><th>Title</th><th>Department</th><th>Description</th></tr>";
        foreach ($results as $row) {
          echo "<tr><td>{$row['id']}</td><td>{$row['title']}</td><td>{$row['department']}</td><td>{$row['description']}</td></tr>";
        }
        echo "</table>";
      } else {
        echo "No results found.";
      }
    ?>
  </section>
</main>

<?php
  require "footer.php";
?>