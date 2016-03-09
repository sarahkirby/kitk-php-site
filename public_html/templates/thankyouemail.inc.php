<?php

$emailHeader = [
	'from'    => 'Katie in the Kitchen < mailgun@' .$domain. '>',
	'to' 	  => '<'. $email .'>',
	'subject' => 'Thank-you for signing up to our newsletter '. $name .'.'
	];


if ($_GET['page'] == 'newsletter') {
	$emailContent = "Thank-you $name for signing up to our newsletter. You will receive the latest news, updates and our recipes every month.";
} else if ($_GET['page'] == 'request'){
	$emailContent = "Thank-you $name for suggesting a recipe. Check our site very soon to see Katie's take on it!";
}
?>

Hi <?= $name; ?>,

<?= $emailContent; ?>
<br>
K x