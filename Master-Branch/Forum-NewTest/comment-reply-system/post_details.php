<?php 

include "db_conn.php";
include('functions.php');
if (isset($_SESSION['id']) && isset($_SESSION['Full_Name'])) {
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Q & A</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="main.css">
</head>
<body>
	<!-- Header -->
<header id="main-header">
  <div class="cont">
      <div class="logo">
          
      </div>
      <nav id="navbar"> 
	  <div class="dropdown">
  <li>Hi,<?php echo $_SESSION['Full_Name']; ?> </li>
  <div class="dropdown-content">
  <p class="lgout"><a  href="logout.php">Logout</a></p>
  </div>
</div>
  </nav>
            <div class="search-container">       
                <h1 id="qa">Q & A Section</h1>
            </div>          
  </div>
</header><!--End of the Header -->
<div class="all">

  <!-- Category Section -->
<div class="left">
  <h1>Categories</h1><hr>
 
  <!-- Category Filter -->
                <form action="" method="GET">
                   	
							<div class="cat" id="myDIV">
  <ul>
    <li class="btn " ><button  name="brands1[]" value="10" >All Categories</button></li>
    
	<?php  
					$cat = mysqli_query($db,"select * from posts order by id");
					while($row = mysqli_fetch_array($cat)){ ?>
		<li class="btn" ><button value="<?php echo $row['id'];?>" name="brands[]" ><?php echo $row['title'];?> </button> </li>
	                  <?php } ?>   
	
                            </li> 
					</ul>           
                </form></div>
				<!-- End of Category Filter -->
</div>



<!-- Q & A Section -->
<div class="right">
<div id="allcat" style="display:none"><h1>All Categories</h1></div>
	<div id="ctype">
	<?php
if(isset($_GET['brands'])){

    if(!empty($_GET['brands'])) {
		$branchecked = [];
        $branchecked = $_GET['brands'];

        foreach($branchecked as $value){?>
		<?php
			if($value==1){?>
					<h1>HTML</h1><?php		
			}?>
		<?php
			if($value==2){?>
					<h1 >CSS</h1><?php		
			}?>
		<?php
			if($value==3){?>
					<h1 >JAVA</h1><?php		
			}?>
		<?php
			if($value==4){?>
					<h1 >C Programming</h1><?php		
			}?>
				
			<?php		
        }    
    }

}else {?> 	 
<?php	
}?><?php
if(isset($_GET['brands1'])){

	if(!empty($_GET['brands1'])) {
	$branchecked2 = [];
	$branchecked2 = $_GET['brands1'];

		foreach($branchecked2 as $value1){?>
		<?php
		if($value1==10){?>
				<h1>All Categories</h1><?php		
		}?>
		<?php
		}        
	}
}else{}?></div>
  <hr>


  <div class="ques">
<!-- Comment Submit Section -->
<h3>Ask your Question.....</h3>
			<!-- if user is not signed in, tell them to sign in. If signed in, present them with comment form -->
			<?php if (isset($user_id)): ?>
				<form class="clearfix" action="post_details.php" method="post" id="comment_form">
				<label for="category">Choose a category:</label>
                    <select name="category" id="category">
						<option selected="selected" disabled>--Select--</option>
					<?php  
					$cat = mysqli_query($db,"select * from posts order by id");
					while($row = mysqli_fetch_array($cat)){ ?>
					   <option value="<?php echo $row['id'];?>">
	                   <?php echo $row['title'];?>
	                   </option>
	                  <?php } ?>
                    </select>
					<textarea name="comment_text" id="comment_text" class="form-control" cols="30" rows="3"></textarea>
					<button class="btn btn-primary btn-sm pull-right" id="submit_comment" onclick="func1();">Submit comment</button>
				</form>
			<?php else: ?>
				<div class="well" style="margin-top: 20px;">
					<h4 class="text-center"><a href="#">Sign in</a> to post a comment</h4>
				</div>
			<?php endif ?><!-- End of Comment Submit Section -->
<hr id="line" >
			
<!-- Query filter for Categories -->
			<?php
if(isset($_GET['brands'])){

    if(!empty($_GET['brands'])) {
		$branchecked = [];
        $branchecked = $_GET['brands'];

        foreach($branchecked as $value){?>	
			<?php
			$comments_query_result1 = mysqli_query($db, "SELECT * FROM comments WHERE category IN ($value) ORDER BY created_at DESC");
			$comments1 = mysqli_fetch_all($comments_query_result1, MYSQLI_ASSOC);
			?>
			<!-- Comments Count -->
			<h2><span id="comments_count"><?php echo count($comments1) ?></span> Comment(s)</h2><br>
			<?php		
        }    
    }

}else {?> 	 
<?php	
}?>	<!--End of Query filter for Categories -->

<!--All Category Query-->		
<?php
	if(isset($_GET['brands1'])){

    	if(!empty($_GET['brands1'])) {
		$branchecked2 = [];
        $branchecked2 = $_GET['brands1'];

        	foreach($branchecked2 as $value1){?>   
			<?php
			$comments_query_result1 = mysqli_query($db, "SELECT * FROM comments ORDER BY created_at DESC");
			$comments1 = mysqli_fetch_all($comments_query_result1, MYSQLI_ASSOC);	
			?>
			<!-- Comments Count -->
			<h2><span id="comments_count"><?php echo count($comments1) ?></span> Comment(s)</h2><br>
			<?php
        	}        
    	}
	}else{}?><!-- End of All Category Query-->

	<!-- comments wrapper -->
	<div id="comments-wrapper">
			<?php if (isset($comments1)): ?>	
				
				<!-- Display comments -->
				<?php foreach ($comments1 as $comment1): ?>
				<!-- comment -->
				<div class="comment clearfix">
					<img src="profile.png" alt="" class="profile_pic">
					<div class="comment-details">
						<span class="comment-name"><?php echo getUsernameById($comment1['user_id']) ?></span>
						<span class="comment-date"><?php echo date("F j, Y ", strtotime($comment1["created_at"])); ?></span>
						<p><?php echo $comment1['body']; ?></p>
						<a class="reply-btn" href="#" data-id="<?php echo $comment1['id']; ?>">reply</a>
					</div>
					<!-- reply form -->
					<form action="post_details.php" class="reply_form clearfix" id="comment_reply_form_<?php echo $comment1['id'] ?>" data-id="<?php echo $comment['id']; ?>">
						<textarea class="form-control" name="reply_text" id="reply_text" cols="30" rows="2"></textarea>
						<button class="btn btn-primary btn-xs pull-right submit-reply">Submit reply</button>
					</form>

					<!-- GET ALL REPLIES -->
					<?php $replies = getRepliesByCommentId($comment1['id']) ?>
					<div class="replies_wrapper_<?php echo $comment1['id']; ?>">
						<?php if (isset($replies)): ?>
							<?php foreach ($replies as $reply): ?>
								<!-- reply -->
								<div class="comment reply clearfix">
									<img src="profile.png" alt="" class="profile_pic">
									<div class="comment-details">
										<span class="comment-name"><?php echo getUsernameById($reply['user_id']) ?></span>
										<span class="comment-date"><?php echo date("F j, Y ", strtotime($reply["created_at"])); ?></span>
										<p><?php echo $reply['body']; ?></p>
										<a class="reply-btn" href="#">reply</a>
										
									</div>
								</div>
								
							<?php endforeach ?>
						<?php endif ?>
					</div>
				</div>
					<!-- // comment -->
				<?php endforeach ?>

			<?php else: ?>
			
			<?php endif ?>
			</div><!-- End of comments wrapper -->

  </div>
</div>
</div>

	
		</div>
	</div>
</div>
<!-- Javascripts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap Javascript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="scripts.js"></script>

</body>
</html>

<?php 
}else{
     header("Location: login.php");
     exit();
}
 ?>