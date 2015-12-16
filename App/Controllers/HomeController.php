<?php 

namespace App\Controllers;

use App\Views\HomeView;


class HomeController extends Controller
{
	public function show()
	{
		// $moviesuggest = $this->getMovieSuggestFormData();

		// extracting data (moviesuggest) from form. Otherwise blank.
		$view = new HomeView();
		$view->render();
	}

	// public function getMovieSuggestFormData()
	// {
	// 	// When do you use session and when post?
	// 	if(isset($_SESSION['moviesuggest'])){
	// 		$moviesuggest = $_SESSION['moviesuggest'];

	// 		//clear input when page is refreshed
	// 	} else {
	// 		$moviesuggest = [
	// 			'title' => "",
	// 			'email' => "",
	// 			'newsletter' => "",
	// 			'error' => [
	// 				'title' => "",
	// 				'email' => "",
	// 				'newsletter' => ""
	// 			]
	// 		];
	// 	}
	// 	return $moviesuggest;
	// }
}