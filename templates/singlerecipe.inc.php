<?php
// $errors = $newcomment->errors;
?>
<div class="container">
<div class="row single-recipe">
	<div class="col-md-3">
		
	</div>
	<div class="col-md-6">
		<img src="./images/poster/100h/<?= $recipe->poster ?>" alt="<?= $recipe->title ?> Recipe" class="img-responsive center-block">
	</div>
	
	<div class="col-md-3">
		
	</div>	
</div>

<div class="row single-recipe">

		<h1 class="heading-script"><?= $recipe->title; ?></h1>
		<hr class="underline">
	


	
		<p><?= $recipe->ingredients; ?></p>
</div>

				<?php if(static::$auth->isAdmin()): ?>
				<p>
					<a href="?page=recipe.edit&amp;id=<?= $recipe->id; ?>" class="btn btn-default">
					<span class="glyphicon glyphicon-pencil"></span> Edit Movie</a>
				</p>
				<?php endif; ?>

		  