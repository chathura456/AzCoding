$(document).ready(function(){

	// When user clicks on submit comment to add comment under post
	$(document).on('click', '#submit_comment', function(e) {
		e.preventDefault();
		var comment_text = $('#comment_text').val();
		var url = $('#comment_form').attr('action');
		// Stop executing if not value is entered
		if (comment_text === "" ) return;
		var category=$('#category').val();
		$.ajax({
			url: url,
			type: "POST",
			data: {
				comment_text: comment_text,
				comment_posted: 1,
				category:category,	
			},
			success: function(data){
				var response = JSON.parse(data);
				
				if (data === "error") {
					alert('There was an error adding comment. Please try again');
				} else {
					$('#comments-wrapper').prepend(response.comment)
					$('#comments_count').text(response.comments_count); 
					$('#comment_text').val('');
					$('#category').val('');
				}
			}
		});
	
	});
	// When user clicks on submit reply to add reply under comment
	$(document).on('click', '.reply-btn', function(e){
		e.preventDefault();
		// Get the comment id from the reply button's data-id attribute
		var comment_id = $(this).data('id');
		// show/hide the appropriate reply form (from the reply-btn (this), go to the parent element (comment-details)
		// and then its siblings which is a form element with id comment_reply_form_ + comment_id)
		$(this).parent().siblings('form#comment_reply_form_' + comment_id).toggle(500);
		$(document).on('click', '.submit-reply', function(e){
			e.preventDefault();
			// elements
			var reply_textarea = $(this).siblings('textarea'); // reply textarea element
			var reply_text = $(this).siblings('textarea').val();
			var url = $(this).parent().attr('action');
			$.ajax({
				url: url,
				type: "POST",
				data: {
					comment_id: comment_id,
					reply_text: reply_text,
					reply_posted: 1
				},
				success: function(data){
					if (data === "error") {
						alert('There was an error adding reply. Please try again');
					} else {
						$('.replies_wrapper_' + comment_id).append(data);
						reply_textarea.val('');
					}
				}
			});
		});
	});

	
});

// Get the container element
var btnContainer = document.getElementById("myDIV");

// Get all buttons with class="btn" inside the container
var btns = btnContainer.getElementsByClassName("btn");

// Loop through the buttons and add the active class to the current/clicked button
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}