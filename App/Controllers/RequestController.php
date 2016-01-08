<?php

namespace App\Controllers;

// use App\Controllers\NewsletterTryController;
use App\Views\ThankyouEmailView;
use App\Views\NewsletterSuccessView;


class RequestController extends NewsletterTryController
{

	public function show()
	{

		$values = $this->getPostData();

		// var_dump($values);

		$this->resetSessionData();

		// capture suggester data
		$this->getFormData($values);

		// validate form data - true or false
		if (! $this->isFormValid($values) ) {

			// Storing input values. So if there is an error the user's input is retained.
			$_SESSION['recipe-request'] = $values;
			header("Location:./#request");
			return;
		}

		// once form is validated - get sucessview page and show in browser (render();).
		$view = new NewsletterSuccessView();
		$view->render();

		//send email to the suggester
		$suggesterEmail = new ThankyouEmailView($values);
		$suggesterEmail->render();
		

		# send email to host
		// $hostEmail = new HostEmailView($this->newsletter);
		// $hostEmail->render();
	}
	public function getPostData()
	{
		if(isset($_POST)) {
    		$values = $_POST;

    		// var_dump($values);

		
		} return $values;

	}
	public function resetSessionData() 
	{
		// resetting variables. Clear form otherwise input from user stays in form field.
		$_SESSION['recipe-requesterror'] = NULL;
		$_SESSION['recipe-request'] = NULL;

		
		
	}
}


   
