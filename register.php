<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="loginregister.css">
</head>
<body>

     <form action="Register-check.php" method="post">
          <center>
          <div id="azlogo"></div>
     	<h2>Register</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>

          <?php if (isset($_GET['success'])) { ?>
               <p class="success"><?php echo $_GET['success']; ?></p>
          <?php } ?>

        
          <?php if (isset($_GET['name'])) { ?>
               <input type="text" 
                      name="name" 
                      placeholder="Full Name"
                      value="<?php echo $_GET['name']; ?>"><br>
          <?php }else{ ?>
               <input type="text" 
                      name="name" 
                      placeholder="Full Name"><br>
          <?php }?>

         
          <?php if (isset($_GET['email'])) { ?>
               <input type="email" 
                      name="email" 
                      placeholder="Email"
                      value="<?php echo $_GET['email']; ?>"><br>
          <?php }else{ ?>
               <input type="email" 
                      name="email" 
                      placeholder="Email"><br>
          <?php }?>

     	<input type="password" 
                 name="password" 
                 placeholder="Password"><br>

          <input type="password" 
                 name="re_password" 
                 placeholder="Re_Password"><br>

     	<button type="submit">Register</button>
         <p>Already have an account?<a href="login.html" class="ca">Login Now</a></p> 
          </center>
     </form>
</body>
</html>