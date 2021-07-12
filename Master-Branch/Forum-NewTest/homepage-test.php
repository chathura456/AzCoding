<?php 
session_start();
include "db_conn.php";
if (isset($_SESSION['id']) && isset($_SESSION['Full_Name'])) {

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page Test</title>  
</head>

<body>
<a href="#">Hi,<?php echo $_SESSION['Full_Name']; ?> </a>

<?php
$post_query_result = mysqli_query($conn, "SELECT * FROM users ");
	$post = mysqli_fetch_assoc($post_query_result);?>
    <h2><?php echo $post['email'] ?></h2>
<button><a href="logout.php">Logout</a></button> 
<?php 
}
  else{?>
  <a href="login.php">login1</a>
  <?php } ?>      
</body>
</html>

