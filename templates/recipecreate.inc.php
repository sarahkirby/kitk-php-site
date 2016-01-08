<?php
//  object from Movie controller. Holds our data. Now is being used to display errors.
$errors = $recipe->errors; 
// if movie id is set. (Currently not set on this page).
$verb = ( $recipe->id ? "Edit" : "Add");
if($recipe->id){
  // if edit
  $submitAction = "?page=recipe.update";
} else {
  // if add
  $submitAction = "?page=recipe.store";
}
echo $submitAction;

?>

<div class="container">

<div class="row">
  <div class="col-xs-12 col-md-7">  
      <form id="recipecreate" action="<?= $submitAction; ?>" method="POST" enctype="multipart/form-data">
      <?php if($recipe->id): ?>
          <input type="hidden" name="id" value="<?= $recipe->id ?>">
      <?php endif; ?>
       <h3><?= $verb; ?> Recipe</h3>

        <div class="form-group <?php if($errors['title']): ?> has-error <?php endif; ?>">
            <label for="title" class="control-label">Recipe Name</label>
            <input class="form-control" id="title" name="title"
            value="<?php echo $recipe->title; ?>">
            <div class="help-block"><?php echo $errors['title']; ?></div>
        </div>

        <div class="form-group <?php if($errors['subtitle']): ?> has-error <?php endif; ?>">
          <label for="subtitle" class="control-label">Subtitle </label>
            <input type="text" class="form-control" id="subtitle" name="subtitle"
            value="<?php echo $recipe->subtitle; ?>">
            <div class="help-block"><?php echo $errors['subtitle']; ?></div>
        </div>
        
        <div class="form-group <?php if($errors['description']): ?> has-error <?php endif; ?>">
          <label for="description" class="control-label">Description </label>
            <textarea class="form-control" id="description" name="description" rows="5"><?php echo $recipe->description; ?></textarea>
            <div class="help-block"><?php echo $errors['description']; ?></div>
        </div>

        <div class="form-group <?php if($errors['ingredients']): ?> has-error <?php endif; ?>">
          <label for="ingredients" class="control-label">Ingredients </label>
            <textarea class="form-control" id="ingredients" name="ingredients" rows="8"><?php echo $recipe->ingredients; ?></textarea>
            <div class="help-block"><?php echo $errors['ingredients']; ?></div>
        </div>

        <div class="form-group <?php if($errors['image']): ?> has-error <?php endif; ?>">
          <label for="image" class="control-label">Image</label>
            <input type="file" class="form-control" id="image" name="image"
            value="<?php echo $recipe->image; ?>">
            <div class="help-block"><?php echo $errors['image']; ?></div>
          <?php if($recipe->image != ""): ?>
            <div class="col-sm-5 col-md-5">
              <img src="./images/poster/100h/<?= $recipe->image ?>" alt="image">
            </div>
            <div class="col-sm-5 col-md-5">
              <div class="checkbox">
                <label><input type="checkbox" name="removeImage" value="true">Remove Image</label>
              </div>
            </div>

          <?php else: ?>
            <div class="col-sm-5 col-md-5">
            <p><small>No poster found for this movie</small></p>
            </div>
          <?php endif; ?>
        </div>

        <div class="form-group <?php if($errors['tags']): ?> has-error <?php endif; ?>">
          <label for="tags" class="col-sm-4 col-md-2 control-label">Tags </label>
          <div class="col-sm-8 col-md-10">

          <div id="tags" class="form-controll">
          <script type="text/javascript">
          var inputTags = "<?= $recipe->tags ?>";
          </script>
          </div>

            <div class="help-block"><?php echo $errors['tags']; ?></div>
          </div>
        </div>     

        <div class="form-group">
          <div class="col-sm-offset-4 col-sm-10 col-md-offset-2 col-md-10">
            <button class="btn btn-success"><span class="glyphicon glyphicon-ok"></span> <?= $verb; ?> Recipe</button>
          </div>
        </div>
      </form> 

      <?php if($recipe->id): ?>
      <form action="?page=movie.destroy" method="POST" class="form-horizontal">
        <div class="form-group">
          <input type="hidden" name="id" value="<?= $recipe->id ?>">
            <button class="btn btn-danger"><span class="glyphicon glyphicon-ok"></span> Delete Recipe</button>
        </div>
      </form> 
    <?php endif; ?>

  </div>