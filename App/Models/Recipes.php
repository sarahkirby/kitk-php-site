<?php

namespace App\Models;

use PDO;
use finfo;
use Intervention\Image\ImageManagerStatic as Image;

class Recipes extends DatabaseModel
{
	protected static $tableName = "recipes";
	protected static $columns = ['id', 'title', 'subtitle', 'description', 'ingredients', 'poster', 'date_created', 'category'];
	protected static $fakeColumns = ['tags'];
	protected static $validationRules = [
					"title"       => "minlength:1",
					"ingredients" => "minlength:10"

	];
	public function comments()
	{
		// Comment class. 'movie_id' is a column and $this->id id value(?)
		$result = Comment::allBy('recipe_id', $this->id);
		return $result;
	}
	public function getTags()
	{
		$models = [];

		$db = static::getDatabaseConnection();
		$query = " SELECT id, tag FROM tags ";
		// joining tables
		$query .= " JOIN recipes_tag ON id = tag_id ";
		$query .= " WHERE recipe_id =:id";

		$statement = $db->prepare($query);
		// var_dump($statement);
		$statement->bindValue(":id", $this->id);
		$statement->execute();

		while($record = $statement->fetch(PDO::FETCH_ASSOC)){
			$model = new Tags();
			$model->data = $record;
			array_push($models, $model);
		}
		// goes to movie controller
		return $models;
	}
	public function loadTags()
	{
		$tags = $this->getTags();
		$taglist = [];
		foreach ($tags as $tag) {
			array_push($taglist, $tag->tag);
		}
		// var_dump($taglist);
		$this->tags = implode(",", $taglist);
	}
	public function saveTags()
	{
		// take the string from tags property
		// explode it into an array
		$tags = explode(",", $this->tags);
		foreach ($tags as $tag) {
			$tag = trim($tag);
			// var_dump($tag);
		}
		$db = static::getDatabaseConnection();

		$db->beginTransaction();

		try {
			// if we are going to add new tags in tags table
			$this->addNewTags($db, $tags);
			$tagsIds = $this->getTagIds($db, $tags);
			$this->deleteAllTagsFromRecipes($db);
			// insert new tags in Movies table
			$this->insertTagsForRecipes($db, $tagsIds);

			$db->commit();

		} catch (Exception $e){
			$db->rollback();
			throw $e;
			
		}
	}
	private function addNewTags($db, $tags)
	{
		// insert each tag into the tags table (ignore all duplicates)
		// table name tags and field name tag
		$query = "INSERT IGNORE INTO tags (tag) VALUES ";

		// convert into an array
		$tagvalues = [];
		for ($i=0; $i < count($tags); $i++) { 
			// placeholder - string value in tag and {i} array location (Interpolation - string passing)
			array_push($tagvalues, "(:tag{$i})");
		}
		$query .= implode(",", $tagvalues);
		$statement = $db->prepare($query);
		// var_dump($query);

		for ($i=0; $i < count($tags); $i++) { 
			$statement->bindValue(":tag{$i}", $tags[$i]);
		}
		$statement->execute();
	}
	private function getTagIds($db, $tags)
	{
		// getting the id for each tags. SELECT is searching database
		$query = "SELECT id FROM tags WHERE ";
		$tagvalues = [];
		for ($i=0; $i < count($tags); $i++) { 
			array_push($tagvalues, "tag = :tag{$i}");
		}
		$query .= implode(" OR ", $tagvalues);
		$statement = $db->prepare($query);
		// var_dump($query);
		for ($i=0; $i < count($tags); $i++) { 
			$statement->bindValue(":tag{$i}", $tags[$i]);
		}
		$statement->execute();

		$record = $statement->fetchAll(PDO::FETCH_COLUMN);
		return $record;
	}
	private function insertTagsForRecipes($db, $tagsIds)
	{
		$query = "INSERT IGNORE INTO recipes_tag (recipe_id, tag_id) VALUES ";

		$tagvalues = [];
		for ($i=0; $i < count($tagsIds); $i++) { 
			array_push($tagvalues, "(:recipe_id{$i}, :tag_id{$i})");
		}
		$query .= implode(",", $tagvalues);
		$statement = $db->prepare($query);
		for ($i=0; $i < count($tagsIds); $i++) { 
			$statement->bindValue(":recipe_id{$i}", $this->id);
			$statement->bindValue(":tag_id{$i}", $tagsIds[$i]);
		}
		$statement->execute();
	}
	private function deleteAllTagsFromRecipes($db)
	{
		// NO SPACE BECAUSE GOING TO BIND WITH OTHER VALUES ?
		$query = "DELETE FROM recipes_tag WHERE 	recipe_id= :recipe_id";
		$statement = $db->prepare($query);
		// var_dump($statement);
		$statement->bindValue(":recipe_id", $this->id);
		$statement->execute();
	}
	public function savePoster($filename)
	{
		// (media type)
		$finfo = new finfo(FILEINFO_MIME_TYPE);
		// return file type of uploaded image
		$mime = $finfo->file($filename);
		 // var_dump($mime);

		// extentsions for file type. creating extensions
		$extentsions = [
			'image/jpg'  => '.jpg',
			'image/jpeg' => '.jpeg',
			'image/png'  => '.png',
			'image/gif'  => '.gif'
		];
		if(isset($extentsions[$mime])){
			$extentsion = $extentsions[$mime];
		} else {
			// default extension - if no extension
			$extentsion = '.jpg';
		}
		// creates unique file name - temporary file name
		$newFileName = uniqid() . $extentsion;
		// var_dump($newFileName);


		// create new folder
		$folder = "./images/poster/originals";
		// if this directory not present then will create a new directory
		if( ! is_dir($folder)){
			// makes new foler
			mkdir($folder, 0777, true);
		}
		$destination = $folder . "/" . $newFileName;
		// function - is $filename a valid upload file. If it is valid it will be moved to the filename given by destination
		move_uploaded_file($filename, $destination);

		// poster comes from the table columns
		$this->poster = $newFileName;

		// 2400x300
		if (! is_dir("./images/poster/300h/")){
			mkdir("./images/poster/300h/" , 0777, true);
		}
		// Intervention Image API. Open image file - (make)
		$img = Image::make($destination);
		// resize image
		$img->fit(300,300);
		//  size image in this destination
		$img->save("./images/poster/300h/" . $newFileName);

		// 80x100
		if (! is_dir("./images/poster/100h/")){
			mkdir("./images/poster/100h/" , 0777, true);
		}

		$img = Image::make($destination);
		$img->fit(600,600);
		$img->save("./images/poster/100h/" . $newFileName);
	}
	public static function search($searchQuery)
	{
		$models = [];

		// var_dump($searchQuery);
		// static here so more than one class can have call this
		$db = static::getDatabaseConnection();

		// var_dump($searchQuery);
		$query = "SET @searchterm = :searchQuery ";
		$statement = $db->prepare($query);
		// var_dump($statement);
		$statement->bindValue(":searchQuery", $searchQuery);
		$result = $statement->execute();
		// var_dump($result);

		// select this value ??? movie.id left join taglist right join. movi.id and taglist are variables
		$query = " SELECT recipes.id, title, subtitle, description, taglist, 
						 -- search against search term. * 2 gives search preference to title results
                        MATCH(title) AGAINST(@searchterm) * 2 AS score_title, 
                        MATCH(description) AGAINST(@searchterm) AS score_description,
                        MATCH(taglist) AGAINST(@searchterm IN BOOLEAN MODE) * 1.5 AS score_tag
                    FROM recipes
                    LEFT JOIN (
                        SELECT recipe_id, GROUP_CONCAT(tag SEPARATOR ' ') AS taglist FROM tags
                        RIGHT JOIN recipes_tag ON recipes_tag.tag_id = id
                        GROUP BY recipe_id) AS tags ON recipes.id = recipe_id
                    WHERE 
                        MATCH(title) AGAINST(@searchterm) OR
                        MATCH(description) AGAINST(@searchterm) OR
                        MATCH(taglist) AGAINST(@searchterm IN BOOLEAN MODE)
                        -- order that results are displayed
                        ORDER BY (score_title + score_description + score_tag) DESC";

		$statement = $db->prepare($query);
		// var_dump($statement);
		$record = $statement->execute();
		// var_dump($record);

		while ($record = $statement->fetch(PDO::FETCH_ASSOC)) {
			$model = new Recipes();
			$model->data = $record;
			array_push($models, $model);
		}
		return $models;
	}

	
	
}


   
