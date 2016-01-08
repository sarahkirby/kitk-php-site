<?php

namespace App\Controllers;

use App\Views\ThankyouEmailView;
use App\Views\NewsletterSuccessView;


class NewsletterController extends NewsletterTryController
{

	public function show()
	{

		$newsletter = $this->getPostData();

		// var_dump($values);

		$this->resetSessionData();

		// capture suggester data
		$this->getFormData($newsletter);

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
	public function getPostData()
	{
		if(isset($_POST)) {
    		$newsletter = $_POST;

    		// var_dump($values);

		
		} return $newsletter;

	}
	public function resetSessionData() 
	{
		// resetting variables. Clear form otherwise input from user stays in form field.
		$_SESSION['newslettererror'] = NULL;
		$_SESSION['newsletter'] = NULL;

		
	}
}


   
