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
"SELECT title, description, year, category, page_count, author, publisher, isbn, price, cover
FROM books
WHERE id = ?");

mysqli_stmt_bind_param($stmt, "i", $id);
mysqli_stmt_execute($stmt);
$data = mysqli_stmt_get_result($stmt);

$result = mysqli_fetch_assoc($data);

if($result == null) {
  header("Location: error.php");
}

$title = $result["title"];
$description = $result["description"];
$year = $result["year"];
$category = $result["category"];
$page_count = $result["page_count"];
$author = $result["author"];
$publisher = $result["publisher"];
$isbn = $result["isbn"];
$price = $result["price"];
$cover = $result["cover"];

if($title == null) {
  header("Location: error.php");
}

} else {
  header("Location: error.php");
}
?>


  <div class="container" style="padding: 50px;">
    <div class="row">
      <div class="col-4">
        <div class="d-flex flex-column">
          <img src="<?php echo $cover; ?>" alt="txtbk img" style="height:400px; width:300px; margin-top: 30px;">
          <div>
            <?php
              // popup(toast): if is true then logged in - else logged out
              if(isset($_SESSION['userid'])) {echo '
                <form action="php/order.php?order=' . urlencode($isbn) . '" method="POST">
                  <button class="btn btn-primary mt-2" name="order" style="width: 300px;">Buy Now!</button>
                </form>
                ';
              } else { echo '
                <button class="btn btn-primary mt-2 disabled" style="width: 300px;">Login First to Buy</button>
                ';
              }
            ?>
          </div>
        </div>
      </div>
      <div class="col-8">
        <h2><?php echo $title; ?></h2>
        <div class="card">
        <div class="row" style="padding: 20px">
          <div class="col-md-6 themed-grid-col text-start">
            <h4>Year Published: <span style="font-weight: 400;"><?php echo $year; ?></span></h4>
            <h4>Category: <span style="font-weight: 400;"><?php echo $category; ?></span></h4>
            <h4>Author: <span style="font-weight: 400;"><?php echo $author; ?></span></h4>
            <h4>Publisher: <span style="font-weight: 400;"><?php echo $publisher; ?></span></h4>
          </div>
          <div class="col-md-6 themed-grid-col text-start">
            <h4>Page Count: <span style="font-weight: 400;"><?php echo $page_count; ?></span></h4>
            <h4>ISBN: <span style="font-weight: 400;"><?php echo $isbn; ?></span></h4>
            <h4>Price: <span style="font-weight: 400;">$<?php echo $price; ?></span></h4>
          </div>
        </div>
      </div>
      <div class="card" style="margin-top: 20px; padding: 20px;">
        <h5>Description: <span style="font-weight: 400;"><?php echo $description; ?></span></h5>
      </div>
        
        
        
        
        
        
      </div>
    </div>
  </div>
        
</main>

<?php
  require "footer.php";
?>