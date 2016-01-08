<?php

namespace App\Controllers;

use App\Views\RecipesView;
use App\Views\RecipeCreateView;
use App\Models\Recipes;

class RecipesController extends Controller
{
	public function show()
	{
		$view = new RecipesView();
		$view->render();
	}

	public function create()
	{
		static::$auth->mustBeAdmin();
		$recipe = $this->getFormData();
		$view = new RecipeCreateView(['recipe' => $recipe]);
		$view->render();
	}
	public function getFormData($id = null){
		if(isset($_SESSION['recipe.create'])){
			$recipe = $_SESSION['recipe.create'];
			unset($_SESSION['recipe.create']);
		} else {
			// new page for form if movies is not set. Refreshed.
			$recipe = new Recipes((int)$id);
		}
		return $recipe;
	}
}
	