<?php

namespace App\Controllers;

use App\Views\RecipesView;
use App\Views\SingleRecipeView;
use App\Views\RecipeCreateView;
use App\Models\Recipes;

class RecipesController extends Controller
{
	public function show()
	{
		// $pageNumber = 1;
		// $pageSize = 1;
		$recmain = Recipes::all("date_created", false, 1, 1);
		$smoothies = Recipes::allBy("category", "smoothie", "category", false);
		$snacks = Recipes::allBy("category", "snack", "category", true);


		$view = new RecipesView(compact('recmain', 'smoothies', 'snacks'));
		$view->render();
	}
	public function singlepage()
	{
		$recipe = new Recipes((int)$_GET['id']);
		// $newcomment = $this->getCommentFormData();
		// $comments = $movie->comments();
		// $tags = $recipe->getTags();

		$view = new SingleRecipeView(compact('recipe', 'tags'));
		$view->render();
	}

	public function create()
	{
		static::$auth->mustBeAdmin();
		$recipe = $this->getFormData();
		$view = new RecipeCreateView(['recipe' => $recipe]);
		$view->render();
	}
	public function store()
	{
		static::$auth->mustBeAdmin();
		$recipe = new Recipes($_POST);

		if(is_array($recipe->tags)){
			$recipe->tags = implode(",", $recipe->tags);
		}

		if(! $recipe->isValid() ) {
			//  details from post stored in here
			$_SESSION['recipe.create'] = $recipe;
			header("Location: ?page=recipe.create");
			exit();
		}
		if ($_FILES['poster']['error'] === UPLOAD_ERR_OK){
		// 'poster' is name in the form. Associtve array - info about name and temp name
		$recipe->savePoster($_FILES['poster']['tmp_name']);
		}
		$recipe->save();
		$recipe->saveTags();
		header("Location: ?page=recipe&id=" . $recipe->id);
	}
	public function update()
	{
		static::$auth->mustBeAdmin();
		$recipe = new Recipes($_POST['id']);
		$recipe->processArray($_POST);

		if(is_array($recipe->tags)){
			$recipe->tags = implode(",", $recipe->tags);
			// var_dump($recipe->tags);
		}
		// var_dump($recipe);
		// saving in database
		if(! $recipe->isValid() ) {
			//  details from post stored in here
			$_SESSION['recipe.create'] = $recipe;
			header("Location: ?page=recipe.edit&id=" . $_POST['id']);
			exit();
		}
		if ($_FILES['poster']['error'] === UPLOAD_ERR_OK){
		// 'poster' is name in the form. Associtve array - info about name and temp name
			$recipe->savePoster($_FILES['poster']['tmp_name']);
		} else if(isset($_POST['removeImage']) && $_POST['removeImage'] === "true") {
			$recipe->poster = null;

		}	
		$recipe->save();
		$recipe->saveTags();
		header("Location: ?page=recipe&id=" . $recipe->id);
	}
	public function edit()
	{
		static::$auth->mustBeAdmin();
		$recipe = $this->getFormData($_GET['id']);
		$recipe->loadTags();

		$view = new RecipeCreateView(compact('recipe', 'tags'));
		$view->render();
	}
	public function destroy()
	{
		static::$auth->mustBeAdmin();
		// var_dump($_POST);
		Recipes::destroy($_POST['id']);
		header("Location: ?page=recipes");
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
	