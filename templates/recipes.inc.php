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
		<img src="images/logo-banner.svg" class="img-responsive center-block" alt="Katie in the Kitchen logo" onerror="this.src='images/logo-banner-error.png'">
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
	        <a href="#desserts"><img src="images/dessert-icon.svg" class="img-responsive center-block" onerror="this.src='images/dessert-icon-error.png'">
	            <h4>Desserts</h4>
	        </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href="#glutenfree"><img src="images/glutenfree-icon.svg" class="img-responsive center-block" onerror="this.src='images/glutenfree-icon-error.png'">
	            <h4>Gluten Free</h4>
	       </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href="#snacks"><img src="images/snacks-icon.svg" class="img-responsive center-block" onerror="this.src='images/snacks-icon-error.png'">
	            <h4>Snacks</h4>
	       </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href="#smoothies"><img src="images/smoothies-icon.svg" class="img-responsive center-block" onerror="this.src='images/smoothies-icon-error.png'">
	            <h4>Smoothies</h4>
	       </a>
	    </div>

	    <div class="icons-home col-md-5ths col-sm-4 col-xs-6">
	       <a href="#vegan"><img src="images/vegan-icon.svg" class="img-responsive center-block" onerror="this.src='images/vegan-icon-error.png'">
	            <h4>Vegan</h4>
	       </a>
	    </div>
	</div>


	<hr>

	<h1 class="heading-center" id="smoothies">SMOOTHIES</h1>

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

<!-- Snacks Section -->

	<h1 class="heading-center" id="snacks">SNACKS</h1>

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
	</div> <!-- snack row-->

	<hr>

<!-- Desserts Section -->

	<h1 class="heading-center" id="desserts">DESSERTS</h1>

	<?php if(count($desserts) > 0): ?>

	<div class="latest-recipes row">
		<?php foreach ($desserts as $dessert): ?>
				<div class="col-md-3 col-sm-6">
	                    <img src="./images/poster/300h/<?= $dessert->poster ?>" alt="<?= $dessert->title ?> Recipe" class="img-responsive center-block">
	                    <h2><?= $dessert->title; ?></h2>
	                    <h4><a href="?page=recipe&amp;id=<?= $dessert->id; ?>">READ MORE</a></h4>
	            </div>
	        <?php endforeach; ?>
	    

	    <?php else: ?>
	        <p>Recipe currently unavaliable.</p>
	    <?php endif; ?>
	</div> <!-- desserts row-->

	<hr>
	
<!-- Vegan Section -->

	<h1 class="heading-center" id="vegan">VEGAN</h1>

		<?php if(count($vegan) > 0): ?>

		<div class="latest-recipes row">
			<?php foreach ($vegan as $veg): ?>
					<div class="col-md-3 col-sm-6">
		                    <img src="./images/poster/300h/<?= $veg->poster ?>" alt="<?= $veg->title ?> Recipe" class="img-responsive center-block">
		                    <h2><?= $veg->title; ?></h2>
		                    <h4><a href="?page=recipe&amp;id=<?= $veg->id; ?>">READ MORE</a></h4>
		            </div>
		        <?php endforeach; ?>
		    

		    <?php else: ?>
		        <p>Recipe currently unavaliable.</p>
		    <?php endif; ?>
		</div> <!-- vegan row-->

<hr>

<!-- Gluten Free Section -->

	<h1 class="heading-center" id="glutenfree">GLUTEN FREE</h1>

		<?php if(count($glutenfree) > 0): ?>

		<div class="latest-recipes row">
			<?php foreach ($glutenfree as $gf): ?>
					<div class="col-md-3 col-sm-6">
		                    <img src="./images/poster/300h/<?= $gf->poster ?>" alt="<?= $gf->title ?> Recipe" class="img-responsive center-block">
		                    <h2><?= $gf->title; ?></h2>
		                    <h4><a href="?page=recipe&amp;id=<?= $gf->id; ?>">READ MORE</a></h4>
		            </div>
		        <?php endforeach; ?>
		    

		    <?php else: ?>
		        <p>Recipe currently unavaliable.</p>
		    <?php endif; ?>
		</div> <!-- glutenfree row-->


		<hr>



		<!-- <h1 class="heading-center">REQUEST A RECIPE!</h1> -->



      <div class="nl-signup col-centered">
            <h1 class="heading-script">Request a Recipe!</h1>
            <p>Sign up below for a monthly newsletter including recipes, give aways and more!</p>

            <form id="request" action="?page=request" method="POST">
            
            
              <div class="form-group <?php if ($requestform['error']['name']):?> has-error <?php endif; ?>">
                <label for="request-name" class="control-label">Name</label>
                <input class="form-control" id="request-name" name="name" value="<?php echo $requestform['name']; ?>">
                <span id="helpBlock" class="help-block"><?php echo $requestform['error']['name']; ?></span>
              </div>

              <div class="form-group <?php if ($requestform['error']['email']):?> has-error <?php endif ; ?>">
                <label for="email" class="control-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="example@mail.com" value="<?php echo $requestform['email']; ?>">
                <span id="helpBlock" class="help-block"><?php echo $requestform['error']['email']; ?></span>
              </div>

              <div class="form-group <?php if ($requestform['error']['reciperequest']):?> has-error <?php endif ; ?>">
                <label for="request" class="control-label">Recipe Request</label>
                <input type="textarea" class="form-control" id="request" name="request" value="<?php echo $requestform['reciperequest']; ?>">
                <span id="helpBlock" class="help-block"><?php echo $requestform['error']['reciperequest']; ?></span>
              </div>

              <div class="form-group">
                <button class="btn btn-success" name="request-var">GO</button>
              </div>

            </form>
        </div>

		






</div> <!-- container  -->
























