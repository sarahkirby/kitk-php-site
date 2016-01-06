<?php

namespace App\Controllers;

use App\Views\RecipesView;

class RecipesController extends Controller
{
	public function show()
	{
		$view = new RecipesView();
		$view->render();
	}
}
	