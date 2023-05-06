<?php
  require "php/connection.php";
  require "header.php";


  $student_id = $_SESSION['userid'];

  $stmt = mysqli_prepare($con, "SELECT order_id, textbook, title, price, order_date FROM orders WHERE student_id = ?");
  mysqli_stmt_bind_param($stmt, "i", $student_id);
  mysqli_stmt_execute($stmt);
  $data = mysqli_stmt_get_result($stmt);



?>

<main>
<?php
if(isset($_GET['status'])) {
    if($_GET['status'] == 'deletesuccess') {
        echo '
        <div class="toast align-items-center" style="width:175px; top: 200px;" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body">
                    <p style="margin-bottom:-3px;" class="login-status"> Successfully Deleted Order </p>
                </div>
                <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
        </div>
        ';
    } else if($_GET['status'] == 'deletefailed') {
        echo '
        <div class="toast align-items-center" style="width:175px;" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body">
                    <p style="margin-bottom:-3px;" class="login-status"> Failed to Delete Order </p>
                </div>
                <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
        </div>
        ';
    }
}
?>
<section class="container">
    <h1>Hello <?php echo $student_id ?>!</h1>
    <h3>User Textbook Orders:</h3>
    <table>
        <tr>
            
            
            
            
            
        </tr>
        <?php
            if (mysqli_num_rows($data) > 0) {
                echo "<tr>";
                        echo "<th style='padding: 20px;'>Order ID</th>";
                        echo "<th style='padding: 20px;'>Title</th>";
                        echo "<th style='padding: 20px;'>ISBN</th>";
                        echo "<th style='padding: 20px;'>Price</th>";
                        echo "<th style='padding: 20px;'>Action</th>";
                    echo "</tr>";
                // Loop through each row and output the textbook orders
                while ($row = mysqli_fetch_assoc($data)) {
                    echo "<tr>";
                        echo "<td style='padding: 20px;'>" . $row['order_id'] . "</td>";
                        echo "<td style='padding: 20px;'>" . $row['title'] . "</td>";
                        echo "<td style='padding: 20px;'>" . $row['textbook'] . "</td>";
                        echo "<td style='padding: 20px;'>$" . $row['price'] . "</td>";
                        echo "<td style='padding: 20px;'>";
                        echo "<form action='php/delete_order.php' method='post'>";
                        echo "<input type='hidden' name='order_id' value='" . $row['order_id'] . "'>";
                        echo "<button type='submit'>Delete Order</button>";
                        echo "</form>";
                        echo "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr>";
                        echo "<th style='padding: 20px;'>Order ID</th>";
                        echo "<th style='padding: 20px;'>Title</th>";
                        echo "<th style='padding: 20px;'>ISBN</th>";
                        echo "<th style='padding: 20px;'>Price</th>";
                        echo "<th style='padding: 20px;'>Action</th>";
                    echo "</tr>";
                echo "No orders found.";
            }
        ?>
    </table>
</section>


</main>

<?php
  require "footer.php";
?>