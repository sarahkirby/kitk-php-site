<?php
	$errors = $newcomment->errors;
?>

<?php if(static::$auth->isAdmin()): ?>
<div class="row add-recipe">
	<p><a href="?page=recipe.edit&amp;id=<?= $recipe->id; ?>" class="btn btn-default"> Edit Recipe</a></p>
</div>
<?php endif; ?>



<div class="container spacer">
<img src="images/KITK-logo.svg" class="img-responsive center-block" alt="Katie in the Kitchen logo" onerror="this.src='images/KITK-logo-error.png'">
<hr>
	<div class="row single-recipe">
		<div class="col-md-12">

			<h1 class="heading-script"><?= $recipe->title; ?></h1>
			<!-- <hr class="underline"> -->

		</div>
	</div>
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
	<div class="col-md-2">
	</div>
	<div class="col-md-4 vertical-line">
			<p><?= $recipe->ingredients; ?></p>
	</div>

	<div class="col-md-6 recipe-desc">
			<p><?= $recipe->description; ?></p>
	</div>

</div>

<h3>Comments</h3>

	  <?php if(count($comments) > 0) : ?>
	  	<?php $count = 0; ?>


  	  <?php foreach ($comments as $comment) : ?>
  	    <?php $count++; ?>

		  <div class="media">
		  	<div class="media-left">
			  	<!-- from https://en.gravatar.com/site/implement/images/php/  48 is size and identicon is type of icon -->
			  		<img class="media-object" src="<?= $comment->user()->gravatar(48, 'retro') ; ?>" alt="avatar">
			  	<!-- id, user_id and comment come from user table -->
	  	    </div>
	  	  	<div class="media-body">
				  		<h3 class="media-heading"># <?= $count;?> <?= $comment->user()->username; ?></h3>
				  		<p><?= $comment->comment; ?></p>
	  	  	</div>
	  	  </div>
				  <?php endforeach; ?>

			  	  <?php else: ?>
			  	  	<p>No comments to show</p>
			  	  <?php endif; ?>
          
          <h4>Add Comment to '<?= $recipe->title ?>'</h4>
          <?php if (static::$auth->check()): ?>
            <form method="POST" action="./?page=comment.create" class="form-horizontal">
              
              <input type="hidden" name="recipe_id" value="<?= $recipe->id ?>">

              <div class="form-group <?php if ($errors['comment']): ?> has-error <?php endif; ?>">
                <label for="comment" class="col-sm-4 col-md-2 control-label">Comment</label>
                <div class="col-sm-8 col-md-10">
                  <textarea id="comment" class="form-control" name="comment" rows="5"></textarea>
                  <div class="help-block"><?= $errors['comment']; ?></div>
                </div>
              </div>

              <div class="form-group">
                <div class="col-sm-offset-4 col-sm-10 col-md-offset-2 col-md-10">
                  <button class="btn btn-success">
                    <span class="glyphicon glyphicon-ok"></span> Add Comment
                  </button>
                </div>
              </div>
            </form>
          <?php else: ?>
            <p>You need to be <a href="./?page=login">logged in</a> to add a comment.</p>
          <?php endif; ?>

</div> <!-- container -->

		  