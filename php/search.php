<?php

if (isset($_GET['query'])) {
  $query = $_GET['query'];
  
  $stmt = mysqli_prepare($con, 
  "SELECT * FROM sjc.courses
  WHERE column_name LIKE '$query'
  UNION
  SELECT * FROM sjc.books
  WHERE column_name LIKE '$query';");

  mysqli_stmt_bind_param($stmt, "i", $id);
  mysqli_stmt_execute($stmt);
  $data = mysqli_stmt_get_result($stmt);

  $result = mysqli_fetch_assoc($data);

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


    $folder = '../courses/'; // folder to do search
    $pattern = $folder . '*.html'; // pattern to match HTML files in the folder
    $files = glob($pattern); // retrieve a list of all HTML files in the folder
    $results = array(); // array to store search results
  
    // create a regular expression pattern based on the query
    $pattern = '/' . preg_quote($query, '/') . '/i';
  
    // go through every file and match string query with string content
    foreach ($files as $file) {
      $content = file_get_contents($file); // read the contents of the file
      $stripped_content = strip_tags($content); // strip HTML tags
      if (preg_match($pattern, $stripped_content)) { // check if the query exists in the file
        $results[] = $file; // add the file to the search results
        $matched_text = preg_replace($pattern, "<strong>$query</strong>", $stripped_content); // highlight the matched text
        $matches[$file] = $matched_text; // store the matched text for display
      }
    }
  
    // display search results
    if (count($results) > 0) {
        $searchResults = array();

        foreach ($results as $result) {
            $searchResults[$result] = $matches[$result];
        }
        $searchResultsJson = json_encode($searchResults);

        // redirect to search page to display info
        header("Location: /CIS-286-Project/search.php?query={$query}&results={$searchResultsJson}");
        exit;

        } else {
        echo "No results found for '{$query}'.";
        }
    }
  
?>