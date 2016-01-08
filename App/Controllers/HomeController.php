<?php 


namespace App\Controllers;

use App\Views\HomeView;
use App\Models\Recipes;


class HomeController extends Controller
{
	public function show()
	{
		$recipes = Recipes::all("title", true);
		$newsletter = $this->getNewsletterData();
		$request = $this->getRequestData();

		$view = new HomeView(compact('recipes', 'newsletter', 'request'));
		$view->render();
	}

	

	public function getNewsletterData()
	{
		// When do you use session and when post?
		if(isset($_SESSION['newsletter'])){
			$newsletter = $_SESSION['newsletter'];

			//clear input when page is refreshed
		} else {
			$newsletter = [
				'name' => "",
				'email' => "",
				'error' => [
					'name' => "",
					'email' => ""
				]
			];
		}
		return $newsletter;
	}

	public function getRequestData()
	{
		// When do you use session and when post?
		if(isset($_SESSION['recipe-request'])){
			$request = $_SESSION['recipe-request'];

			//clear input when page is refreshed
		} else {
			$request = [
				'name' => "",
				'email' => "",
				'request' => "",
				'error' => [
					'name' => "",
					'email' => "",
					'request' => ""
				]
			];
		}
		return $request;
	}
}