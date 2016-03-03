<?php
	if($_POST['reciperequest']){

	  	$insertHeaderContent = "your recipe suggestion!";
	  	$pContent = "Keep an eye out as Katie will recreate your recipe very soon!";

	} else {

  		$insertHeaderContent = "signing up to our newsletter!";
  		$pContent = "Newsletter's will be emailed once a month.";

	}
?>

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<h1>Thank-you for <?= $insertHeaderContent; ?></h1>
			<p><?= $pContent; ?></p>
			<br>
			<p>K x</p>
		</div>
	</div>
</div>