<?php include('functions.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Comment and reply system in PHP</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="main.css">
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 post">
			<h2><?php echo $post['title'] ?></h2>
			$post_query_result = mysqli_query($db, "SELECT * FROM posts WHERE id=1");
	$post = mysqli_fetch_assoc($post_query_result);
			
		</div>
		<div class="col-md-6 col-md-offset-3 comments-section">
			<!-- if user is not signed in, tell them to sign in. If signed in, present them with comment form -->
			<?php if (isset($user_id)): ?>
				<form class="clearfix" action="post_details.php" method="post" id="comment_form">
					<textarea name="comment_text" id="comment_text" class="form-control" cols="30" rows="3"></textarea>
					<button class="btn btn-primary btn-sm pull-right" id="submit_comment">Submit comment</button>
				</form>
			<?php else: ?>
				<div class="well" style="margin-top: 20px;">
					<h4 class="text-center"><a href="#">Sign in</a> to post a comment</h4>
				</div>
			<?php endif ?>
			<!-- Display total number of comments on this post  -->
			<h2><span id="comments_count"><?php echo count($comments) ?></span> Comment(s)</h2>
			<hr>
			<!-- comments wrapper -->
			<div id="comments-wrapper">
			<?php if (isset($comments)): ?>
				<!-- Display comments -->
				<?php foreach ($comments as $comment): ?>
				<!-- comment -->
				<div class="comment clearfix">
					<img src="profile.png" alt="" class="profile_pic">
					<div class="comment-details">
						<span class="comment-name"><?php echo getUsernameById($comment['user_id']) ?></span>
						<span class="comment-date"><?php echo date("F j, Y ", strtotime($comment["created_at"])); ?></span>
						<p><?php echo $comment['body']; ?></p>
						<a class="reply-btn" href="#" data-id="<?php echo $comment['id']; ?>">reply</a>
					</div>
					<!-- reply form -->
					<form action="post_details.php" class="reply_form clearfix" id="comment_reply_form_<?php echo $comment['id'] ?>" data-id="<?php echo $comment['id']; ?>">
						<textarea class="form-control" name="reply_text" id="reply_text" cols="30" rows="2"></textarea>
						<button class="btn btn-primary btn-xs pull-right submit-reply">Submit reply</button>
					</form>

					<!-- GET ALL REPLIES -->
					<?php $replies = getRepliesByCommentId($comment['id']) ?>
					<div class="replies_wrapper_<?php echo $comment['id']; ?>">
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
				<h2>Be the first to comment on this post</h2>
			<?php endif ?>
			</div><!-- comments wrapper -->
		</div><!-- // all comments -->
	</div>
</div>
<!-- Javascripts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap Javascript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="scripts.js"></script>
</body>
</html>