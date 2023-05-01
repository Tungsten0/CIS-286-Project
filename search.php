<?php
  require "header.php";
?>

<main style="margin-top: 100px;">
        
  <section class="container" style="margin-top: 10px;">
    <h2 style="color: #200174;">Search Page</h2>
    <h5 style="margin-top: 10px; color: #200174;">-Note- Must be specific</h5>
    <h6 style="margin-top: 10px; color: #200174;">eg: cis125 bus105</h6>
    <!--Search Box-->
    <form class="d-flex" action="php/search.php" method="get" style="width: 100%;">
      <input class="form-control me-2" type="text" name="query" placeholder="Search..." aria-label="Search">
    </form>

    <div id="search-results" style="margin-top: 50px;"></div>
  </section>

</main>

<?php
  require "footer.php";
?>