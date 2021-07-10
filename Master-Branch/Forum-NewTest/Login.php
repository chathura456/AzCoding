<?php
session_start();

if(!isset($_SESSION['id']) && !isset($_SESSION['Full_Name'])){
    ?>
<!DOCTYPE html>
<html>
<head>
	<title>Member Login</title>
	<link rel="stylesheet" type="text/css" href="loginregister.css">
</head>
<body>

     <form action="logincheck.php" method="post">
	 <center>
	 <div id="azlogo"></div>
     	<h2>User Login</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>
     	<input type="email" name="email" placeholder="User Email"><br>

     	
     	<input type="password" name="password" placeholder="Password"><br>

     	<button type="submit">Login</button>
          <p>Don't have an Account? <a href="register.php" class="ca">Create an account</a></p>
		  </center>
     </form>
</body>
</html>
<?php
}else{
    header("Location: homepage-test.php");
}

?>