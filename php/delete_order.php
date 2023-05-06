<?php
require "connection.php";

$order_id = $_POST['order_id'];


$stmt = mysqli_prepare($con, "DELETE FROM orders WHERE order_id = ?");
mysqli_stmt_bind_param($stmt, "i", $order_id);

// Execute the statement
if (mysqli_stmt_execute($stmt)) {
  // Success message
  echo "Order deleted successfully.";
  header("Location: ../profile.php?status=deletesuccess");
} else {
  // Error message
  echo "Error deleting order: " . mysqli_error($con);
  header("Location: ../profile.php?status=deletefailed");
}

mysqli_stmt_close($stmt);





?>