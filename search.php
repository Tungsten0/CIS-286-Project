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

  <section class="container" style="margin-top: 10px;">
    <h2 style="color: #200174;">Search Results for <span style="color:black; font-weight: 400; font-style:italic;"><?php echo $query ?></span></h2>
    <p style="font-style: italic;">Note that search function is space sensative</p>
    <br>
    <?php 
      if (count($results) > 0) {
        echo "<table>";
        echo "
        <tr>
          <th style='padding: 20px; font-size: 20px;'>ID</th>
          <th style='padding: 20px; font-size: 20px;'>Title</th>
          <th style='padding: 20px; font-size: 20px;'>Department</th>
          <th style='padding: 20px; font-size: 20px;'>Description</th>
        </tr>";
        foreach ($results as $row) {
          $course_id = $row['id'];
          echo "
            <tr>
              <td style='padding: 20px;'><a href=\"course.php?id={$course_id}\" style=\"text-decoration: none;\">{$course_id}</a></td>
              <td style='padding: 20px;'>{$row['title']}</td>
              <td style='padding: 20px;'>{$row['department']}</td>
              <td style='padding: 20px;'>{$row['description']}</td>
            </tr>";
        }
        echo "</table>";
      } else {
        echo "No results found.";
      }
    ?>
    <br>
    <br>
  </section>
</main>

<?php
  require "footer.php";
?>