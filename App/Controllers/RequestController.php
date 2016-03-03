<?php

namespace App\Controllers;

// use App\Controllers\NewsletterTryController;
use App\Views\ThankyouEmailView;
use App\Views\NewsletterSuccessView;


class RequestController 
{
	private $requestform = [];

	public function __construct()
	{
		$this->requestform = [
							'error' =>[]
						];
	}

	public function resetSessionData() 
	{
		// resetting variables. Clear form otherwise input from user stays in form field.
		$_SESSION['requestformerror'] = NULL;
		$_SESSION['requestform'] = NULL;
		
	}
	public function getRecipeRequestFormData()
	{
		
		$expectedVar = ['name', 'email', 'reciperequest'];

		//passing each value through the foreach loop.
		foreach ($expectedVar as $variable) {
			
			// title, email, requestform are stored in $variable

			$this->requestform['error'][$variable]= "";

			if(isset($_POST[$variable])) {
				$this->requestform[$variable] = $_POST[$variable];
				
			} else {
				$this->requestform[$variable] = "";
			}
		
		}
		
	}
	public function isFormValid()
	{
		$valid = true;

		if(strlen($this->requestform['name']) == 0) {
			$this->requestform['error']['name'] = "Enter your name";
			$valid = false;
		}

		// comparing email input against pre defined constant email. If not true (valid) error is true.
		if (! filter_var($this->requestform['email'], FILTER_VALIDATE_EMAIL)) {
			$this->requestform['error']['email'] = "Enter a valid email address";
			$valid = false;
		} 

		if(strlen($this->requestform['reciperequest']) == 0) {
			$this->requestform['error']['reciperequest'] = "Make a Recipe Request";
			$valid = false;
		} 
		return $valid;
	}
	

	public function show()
	{
		$this->resetSessionData();

		// capture suggester data
		$this->getRecipeRequestFormData();

		// validate form data - true or false
		if (! $this->isFormValid() ) {
			// Storing input values. So if there is an error the user's input is retained.
			$_SESSION['requestform'] = $this->requestform;
			header("Location: ?page=recipes#request");
			return;
		}

		// once form is validated - get sucessview page and show in browser (render();).
		$view = new NewsletterSuccessView($this->requestform);
		$view->render();

		//send email to the suggester
		// $suggesterEmail = new ThankyouEmailView($this->requestform);
		// $suggesterEmail->render();
		

		# send email to host
		// $hostEmail = new HostEmailView($this->requestform);
		// $hostEmail->render();
	}

}
