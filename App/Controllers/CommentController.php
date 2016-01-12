<?php 

namespace App\Controllers;

use App\Models\Comment;

class CommentController extends Controller
{

public function create()
	{
		$input = $_POST;
		
		$input['user_id'] = static::$auth->user()->id;
		// var_dump($_POST);
		$newcomment = new Comment($input);
		// var_dump($newcomment);

		if(! $newcomment->isValid()){
			// name of session. Storing comment if not valid
			$_SESSION['comment.form'] = $newcomment;
			// no $ infront of movie_if because it is a value not a variable
			header("Location:?page=recipe&id=" . $newcomment->recipe_id);
			exit();
		}
		$newcomment->save();

		header("Location: ?page=recipe&id=" . $newcomment->recipe_id . "#comment-" . $newcomment->id);


	}

}
