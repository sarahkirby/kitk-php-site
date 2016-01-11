<?php if(static::$auth->isAdmin()): ?>
<div class="row add-recipe">
	<p><a href="?page=recipe.create" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span> Add Recipe</a></p>
</div>
<?php endif; ?>

<div class="row rec-main">
	<div class="col-md-7 col-sm-12 rec-main-left">
		<!-- <h1>RECIPES</h1> -->
		<?php if(count($recmain) > 0): ?>
		<?php foreach ($recmain as $recipe): ?>
			<img src="./images/poster/100h/<?= $recipe->poster ?>" alt="<?= $recipe->title ?> Recipe" class="img-responsive center-block">	
			<!-- <img src="images/KITK-image-2.jpg" class="img-responsive center-block"> -->
	</div>

	<div class="col-md-5 col-sm-12 rec-main-right clear-fix">
		<img src="images/logo-banner.svg" class="img-responsive center-block" alt="Katie in the Kitchen logo">
		<h1 class="heading-script"><?= $recipe->title; ?></h1>
		<p><?= $recipe->subtitle; ?></p>
		<hr class="underline">
			<p><?= $recipe->ingredients; ?></p>

        <?php endforeach; ?>
    
    	<?php else: ?>
        	<p>Recipe currently unavaliable.</p>
    	<?php endif; ?>
		<p>K x</p>
	</div>

</div>



<div class="container">

	<div class="row rec-icons">
	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	        <a href=""><img src="images/dessert-icon.svg" class="img-responsive center-block">
	            <h4>Desserts</h4>
	        </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href=""><img src="images/glutenfree-icon.svg" class="img-responsive center-block">
	            <h4>Gluten Free</h4>
	       </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href=""><img src="images/snacks-icon.svg" class="img-responsive center-block">
	            <h4>Snacks</h4>
	       </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href=""><img src="images/smoothies-icon.svg" class="img-responsive center-block">
	            <h4>Smoothies</h4>
	       </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href=""><img src="images/vegan-icon.svg" class="img-responsive center-block">
	            <h4>Vegan</h4>
	       </a>
	    </div>
	</div>


	<hr>

	<h1 class="heading-center">SMOOTHIES</h1>

	<?php if(count($smoothies) > 0): ?>

    <div class="latest-recipes row">
    
        <?php foreach ($smoothies as $smoothie): ?>
        
            <div class="col-md-3 col-sm-6">
                    <img src="./images/poster/300h/<?= $smoothie->poster ?>" alt="<?= $smoothie->title ?> Recipe" class="img-responsive center-block">
                    <h2><?= $smoothie->title; ?></h2>
                    <h4><a href="?page=recipe&amp;id=<?= $smoothie->id; ?>">READ MORE</a></h4>
            </div>
        <?php endforeach; ?>
    

    <?php else: ?>
        <p>Recipe currently unavaliable.</p>
    <?php endif; ?>

    </div><!-- recipes row -->
    <hr>

	<h1 class="heading-center">SNACKS</h1>

	<?php if(count($snacks) > 0): ?>

	<div class="latest-recipes row">

	<?php foreach ($snacks as $snack): ?>

		<div class="col-md-3 col-sm-6">
                    <img src="./images/poster/300h/<?= $snack->poster ?>" alt="<?= $snack->title ?> Recipe" class="img-responsive center-block">
                    <h2><?= $snack->title; ?></h2>
                    <h4><a href="?page=recipe&amp;id=<?= $snack->id; ?>">READ MORE</a></h4>
            </div>
        <?php endforeach; ?>
    

    <?php else: ?>
        <p>Recipe currently unavaliable.</p>
    <?php endif; ?>

</div> <!-- container  -->
























