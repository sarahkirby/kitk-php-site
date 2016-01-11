<?php

namespace App\Controllers;

use App\Views\ThankyouEmailView;
use App\Views\NewsletterSuccessView;


class NewsletterController extends NewsletterTryController
{

	
	public function getFormData()
	{
		
		$expectedVar = ['name', 'email'];

		//passing each value through the foreach loop.
		foreach ($expectedVar as $variable) {
			
			// title, email, newsletter are stored in $variable

			$this->data['error'][$variable]= "";

			if(isset($_POST[$variable])) {
				$this->data[$variable] = $_POST[$variable];
				
			} else {
				$this->data[$variable] = "";
			}
		
		}
		
	}
	
	public function resetSessionData() 
	{
		// resetting variables. Clear form otherwise input from user stays in form field.
		$_SESSION['newslettererror'] = NULL;
		$_SESSION['newsletter'] = NULL;
		
	}

	public function show()
	{
		
		
		var_dump($_POST);

		$this->resetSessionData();

		// capture suggester data
		$this->getFormData();
		var_dump($this->getFormData());
		die();
		// validate form data - true or false
		if (! $this->isFormValid($newsletter) ) {

			// Storing input values. So if there is an error the user's input is retained.
			$_SESSION['newsletter'] = $newsletter;
			header("Location:./#newsletter");
			return;
		}

		// once form is validated - get sucessview page and show in browser (render();).
		$view = new NewsletterSuccessView();
		$view->render();

		//send email to the suggester
		$suggesterEmail = new ThankyouEmailView($newsletter);
		$suggesterEmail->render();
		

		# send email to host
		// $hostEmail = new HostEmailView($this->newsletter);
		// $hostEmail->render();
	}

}


   
