<?php 
session_start();

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

<button><a href="logout.php">Logout</a></button> 
            
</body>
</html>

<?php 
}else{
     header("Location: login.php");
     exit();
}
 ?>