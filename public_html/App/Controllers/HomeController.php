<?php 


namespace App\Controllers;

use App\Views\HomeView;
use App\Models\Recipes;


class HomeController extends Controller
{
	public function show()
	{
		$pageNumber = 1;
		$pageSize = 4;
		$recipes = Recipes::all("date_created", false, $pageNumber, $pageSize);	
		$newsletter = $this->getNewsletterData();
		
		$view = new HomeView(compact('recipes', 'newsletter', 'pageNumber', 'pageSize'));
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
}