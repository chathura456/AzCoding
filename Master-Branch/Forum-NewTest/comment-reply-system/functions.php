<?php 
session_start();
include "db_conn.php";
if (isset($_SESSION['id']) && isset($_SESSION['Full_Name'])) {

	$user_id = $_SESSION['id'];
	// connect to database
	$db = $conn;
	// get post with id 1 from database
	$post_query_result = mysqli_query($db, "SELECT * FROM posts WHERE id=1");
	$post = mysqli_fetch_assoc($post_query_result);
	
	

	// Get all comments from database
	$comments_query_result = mysqli_query($db, "SELECT * FROM comments WHERE category=1 ORDER BY created_at DESC");
	$comments = mysqli_fetch_all($comments_query_result, MYSQLI_ASSOC);

	

	if (isset($_POST['btn'])){
		$cid = $_POST['btn'];

		$comments_query_result1 = mysqli_query($db, "SELECT * FROM comments WHERE category=.$cid. ORDER BY created_at DESC");
	$comments1 = mysqli_fetch_all($comments_query_result1, MYSQLI_ASSOC);

	}
    
	// Receives a user id and returns the username
	function getUsernameById($id)
	{
		global $db;
		$result = mysqli_query($db, "SELECT username FROM users WHERE id=" . $id . " LIMIT 1");
		// return the username
		return mysqli_fetch_assoc($result)['username'];
	}
	// Receives a comment id and returns the username
	function getRepliesByCommentId($id)
	{
		global $db;
		$result = mysqli_query($db, "SELECT * FROM replies WHERE comment_id=$id");
		$replies = mysqli_fetch_all($result, MYSQLI_ASSOC);
		return $replies;
	}
	// Receives a post id and returns the total number of comments on that post
	function getCommentsCountByPostId($post_id)
	{
		global $db;
		$result = mysqli_query($db, "SELECT COUNT(*) AS total FROM comments");
		$data = mysqli_fetch_assoc($result);
		return $data['total'];
	}

    //...
// If the user clicked submit on comment form...
if (isset($_POST['comment_posted'])) {
	global $db;
	// grab the comment that was submitted through Ajax call
	$comment_text = $_POST['comment_text'];
	$category = $_POST['category'];
	// insert comment into database
	$sql = "INSERT INTO comments (post_id, user_id, body, category, created_at, updated_at) VALUES (1, " . $user_id . ", '$comment_text','$category', now(), null)";
	$result = mysqli_query($db, $sql);
	// Query same comment from database to send back to be displayed
	$inserted_id = $db->insert_id;
	$res = mysqli_query($db, "SELECT * FROM comments WHERE id=$inserted_id");
	$inserted_comment = mysqli_fetch_assoc($res);
	// if insert was successful, get that same comment from the database and return it
	if ($result) {
		$comment = "<div class='comment clearfix'>
					<img src='profile.png' alt='' class='profile_pic'>
					<div class='comment-details'>
						<span class='comment-name'>" . getUsernameById($inserted_comment['user_id']) . "</span>
						<span class='comment-date'>" . date('F j, Y ', strtotime($inserted_comment['created_at'])) . "</span>
						<p>" . $inserted_comment['body'] . "</p>
						<a class='reply-btn' href='#' data-id='" . $inserted_comment['id'] . "'>reply</a>
					</div>
					<!-- reply form -->
					<form action='post_details.php' class='reply_form clearfix' id='comment_reply_form_" . $inserted_comment['id'] . "' data-id='" . $inserted_comment['id'] . "'>
						<textarea class='form-control' name='reply_text' id='reply_text' cols='30' rows='2'></textarea>
						<button class='btn btn-primary btn-xs pull-right submit-reply'>Submit reply</button>
					</form>
				</div>";
		$comment_info = array(
			'comment' => $comment,
			'comments_count' => getCommentsCountByPostId(1)
		);
		echo json_encode($comment_info);
		exit();
	} else {
		echo "error";
		exit();
	}
}

if (isset($_POST['cttype'])){
	$ct=$_POST['cttype'];
	

	$post_query_result1 = mysqli_query($db, "SELECT * FROM comments WHERE category='1'");
	$post1 = mysqli_fetch_assoc($post_query_result1);

	$comments_query_result1 = mysqli_query($db, "SELECT * FROM comments WHERE category=" . $post1['category'] . " ORDER BY created_at DESC");
	$comments1 = mysqli_fetch_all($comments_query_result1, MYSQLI_ASSOC);

}
// If the user clicked submit on reply form...
if (isset($_POST['reply_posted'])) {
	global $db;
	// grab the reply that was submitted through Ajax call
	$reply_text = $_POST['reply_text']; 
	$comment_id = $_POST['comment_id']; 
	// insert reply into database
	$sql = "INSERT INTO replies (user_id, comment_id, body, created_at, updated_at) VALUES (" . $user_id . ", $comment_id, '$reply_text', now(), null)";
	$result = mysqli_query($db, $sql);
	$inserted_id = $db->insert_id;
	$res = mysqli_query($db, "SELECT * FROM replies WHERE id=$inserted_id");
	$inserted_reply = mysqli_fetch_assoc($res);
	// if insert was successful, get that same reply from the database and return it
	if ($result) {
		$reply = "<div class='comment reply clearfix'>
					<img src='profile.png' alt='' class='profile_pic'>
					<div class='comment-details'>
						<span class='comment-name'>" . getUsernameById($inserted_reply['user_id']) . "</span>
						<span class='comment-date'>" . date('F j, Y ', strtotime($inserted_reply['created_at'])) . "</span>
						<p>" . $inserted_reply['body'] . "</p>
						<a class='reply-btn' href='#'>reply</a>
					</div>
				</div>";
		echo $reply;
		exit();
	} else {
		echo "error";
		exit();
	}
}

}
else{?>
<a href="login.php">login1</a>
<?php } ?>  