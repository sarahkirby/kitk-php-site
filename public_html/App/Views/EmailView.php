<?php

namespace App\Views;

use Mailgun\Mailgun;


abstract class EmailView extends View
{
	public function sendEmail($templateFile) 
	{
		extract($this->data);
		# Instantiate the client.

		# creating new object with mailgun API (class already made)
		$mgClient = new Mailgun(MAILGUN_KEY);
		$domain = MAILGUN_DOMAIN;

		// store output in internal buffer but don't do anything with it yet
		ob_start();

		include $templateFile;

		// Returns the contents of the output buffer and end output buffering
		$emailBody = ob_get_clean();
		# Make the call to the client.

		$result = $mgClient->sendMessage($domain, array(
		    'from'    =>  $emailHeader['from'],
		    'to'      =>  $emailHeader['to'],
		    'subject' =>  $emailHeader['subject'],
		    'text'    =>  $emailBody
		));
	}
}