<?php

$emailHeader = [
	'from'    => 'Katie in the Kitchen < mailgun@' .$domain. '>',
	'to' 	  => '<'. $email .'>',
	'subject' => 'Thank-you for signing up to our newsletter '. $name .'.'
	];

?>
Hi <?php echo $name; ?>,

Thank-you for signing up for our monthly newsletter.


K x