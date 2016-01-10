<div class="logo-banner">
    <img src="images/logo-banner.svg" class="img-responsive center-block" alt="Katie in the Kitchen logo">
    <h1>Katie in the Kitchen</h1>
</div>

<!-- Slider main container -->
<div class="swiper-container">
    <!-- Additional required wrapper -->
    <div class="swiper-wrapper">
        <!-- Slides -->
        <div class="swiper-slide"><img src="images/kitk-1.jpg"></div>
        <div class="swiper-slide"><img src="images/kitk-2.jpg"></div>
        <div class="swiper-slide"><img src="images/kitk-3.jpg"></div>
        <div class="swiper-slide"><img src="images/kitk-4.jpg"></div>
        <div class="swiper-slide"><img src="images/kitk-5.jpg"></div>
        <div class="swiper-slide"><img src="images/kitk-6.jpg"></div>
        <div class="swiper-slide"><img src="images/kitk-7.jpg"></div>
        
    </div>

    
    <!-- If we need navigation buttons -->
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
    
    <!-- If we need scrollbar -->
    <div class="swiper-scrollbar"></div>
</div>


<!-- Types icons -->

<div class="container">
<div class="row">
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

<!-- Latest Recipes -->
<h1 class="heading-center">LATEST RECIPES</h1>


<?php if(count($recipes) > 0): ?>

    <div class="latest-recipes row">
    
        <?php foreach ($recipes as $recipe): ?>
        
            <div class="col-md-3 col-sm-6">
                    <img src="./images/poster/300h/<?= $recipe->poster ?>" alt="<?= $recipe->title ?> Recipe" class="img-responsive center-block">
                    <h2><?= $recipe->title; ?></h2>
                     <h4><a href="?page=recipe&amp;id=<?= $recipe->id; ?>">READ MORE</a></h4>
            </div>
        <?php endforeach; ?>
    

    <?php else: ?>
        <p>Recipe currently unavaliable.</p>
    <?php endif; ?>

    </div>
 

<!-- <div class="latest-recipes row">

    <div class="col-md-3 col-sm-6">
        <img src="http://placehold.it/280x280" class="img-responsive center-block">
        <h2>Peanut Butter &amp; Jelly</h2>
        <h4>READ MORE</h4>
    </div>

    <div class="col-md-3 col-sm-6">
        <img src="http://placehold.it/280x280" class="img-responsive center-block">
        <h2>Hello</h2>
        <h4>READ MORE</h4>
    </div>

    <div class="col-md-3 col-sm-6">
        <img src="http://placehold.it/280x280" class="img-responsive center-block">
        <h2>Hello</h2>
        <h4>READ MORE</h4>
    </div>

    <div class="col-md-3 col-sm-6">
        <img src="http://placehold.it/280x280" class="img-responsive center-block">
        <h2>Hello</h2>
        <h4>READ MORE</h4>
    </div>

</div> -->


<hr>


<div class="row container-newsletter">
    <div class="vertical-line col-md-6 col-sm-12">
        <div class="nl-signup col-centered">
            <h1 class="heading-script">Sign up</h1>
            <p>Sign up below for a monthly newsletter including recipes, give aways and more!</p>

            <form id="newsletter" action="?page=newsletter" method="POST">
            
            <div class="form-group <?php if ($newsletter['error']['name']):?>has-error <?php endif; ?>">

                <label for="nl-name" class="control-label">Name</label>
                  <input class="form-control" id="nl-name" name="name" value="<?php echo $newsletter['name']; ?>">
                  <span id="helpBlock" class="help-block"><?php echo $newsletter['error']['name']; ?></span>
            </div>

              <div class="form-group <?php if ($newsletter['error']['email']):?> has-error <?php endif ; ?>">
                <label for="email" class="control-label">Email</label>
                  <input type="email" class="form-control" id="email" name="email" placeholder="example@mail.com" value="<?php echo $newsletter['email']; ?>">
                  <span id="helpBlock" class="help-block"><?php echo $newsletter['error']['email']; ?></span>
              </div>

              <div class="form-group">
                <button class="btn btn-success">GO</button>
              </div>
            </form>
        </div>
    </div>


    <div class="nl-right col-md-6 col-sm-12">
    <?php if(! static::$auth->check()): ?>

      <h1 class="heading-center">REQUEST A RECIPE!</h1>
      <p><a href="?page=register">Register</a> or <a href="?page=login">Login</a> to request KITK's take on your favourite recipe.</p> 


    <?php else: ?>
      
      <div class="nl-signup col-centered">
            <h1 class="heading-script">Request a Recipe!</h1>
            <p>Sign up below for a monthly newsletter including recipes, give aways and more!</p>

            <form id="request" action="?page=request" method="POST">
            
            
              <div class="form-group <?php if ($request['error']['name']):?> has-error <?php endif; ?>">
                <label for="request-name" class="control-label">Name</label>
                <input class="form-control" id="request-name" name="name" value="<?php echo $request['name']; ?>">
                <span id="helpBlock" class="help-block"><?php echo $request['error']['name']; ?></span>
              </div>

              <div class="form-group <?php if ($request['error']['email']):?> has-error <?php endif ; ?>">
                <label for="email" class="control-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="example@mail.com" value="<?php echo $request['email']; ?>">
                <span id="helpBlock" class="help-block"><?php echo $request['error']['email']; ?></span>
              </div>

              <div class="form-group <?php if ($request['error']['request']):?> has-error <?php endif ; ?>">
                <label for="request" class="control-label">Recipe Request</label>
                <input type="textarea" class="form-control" id="request" name="request" value="<?php echo $request['request']; ?>">
                <span id="helpBlock" class="help-block"><?php echo $request['error']['request']; ?></span>
              </div>

              <div class="form-group">
                <button class="btn btn-success" name="request-var">GO</button>
              </div>

            </form>
        </div>


    <?php endif; ?>
        
    </div>    


</div> <!-- newsletter row  -->



</div> <!-- Fixed width container -->





