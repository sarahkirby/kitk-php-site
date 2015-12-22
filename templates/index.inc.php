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
                    <h2><?= $recipe->title; ?></h2>
                    <p><?= $recipe->description; ?></p>
            </div>
        
        <?php endforeach; ?>
    

    <?php else: ?>
        <p>Weirdly enough, there are no movies to display. Spooky!!</p>
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

<div class="row">
    <div class="col-md-6 col-sm-12">
        <h1>Sign up</h1>
        <p>Sign up below for a monthly newsletter including recipes, give aways and more!</p>

        <form id="newletter" action="" method="POST">
        
        <!-- add error class  -->
          <div class="form-group <?php if ($error['title']):?> has-error <?php endif; ?>">

            <label for="nl-name" class="control-label">Name</label>
            <div class="">
              <input class="form-control" id="nl-name" name="nl-name" value="<?php echo $title; ?>">
              <span id="helpBlock" class="help-block"><?php echo $error['title']; ?></span>
            </div>
          </div>

          <div class="form-group <?php if ($error['email']):?> has-error <?php endif ; ?>">
            <label for="email" class="control-label">Email</label>
            <div class="">
              <input type="email" class="form-control" id="email" name="email" placeholder="example@mail.com" value="<?php echo $email; ?>">
              <span id="helpBlock" class="help-block"><?php echo $error['email']; ?></span>
            </div>
          </div>
    </div>

    <div class="col-md-6 col-sm-12">
        
    </div>    


</div>



</div> <!-- Fixed width container -->





