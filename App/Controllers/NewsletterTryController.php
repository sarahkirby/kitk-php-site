<?php

namespace App\Controllers;

use App\Views\ThankyouEmailView;
use App\Views\NewsletterSuccessView;


class NewsletterTryController extends Controller
{
	// $data?
	private $data = [];

	public function __construct()
	{
		$this->data = [
							'error' =>[]
						];
	}

	public function getFormData($data)
	{

		$expectedVar = ['name', 'email', 'request'];

		//passing each value through the foreach loop.
		foreach ($expectedVar as $variable) {

			// title, email, newsletter are stored in $variable

			$data['error'][$variable]="";

			if(isset($_POST[$variable])) {
				$data[$variable] = $_POST[$variable];
			} else {
				$data[$variable] = "";
			}
			// var_dump($_POST);
		}
	}
	public function isFormValid($data)
	{
		$valid = true;

		if(strlen($data['name']) == 0) {
			$data['error']['name'] = "Enter your name";
			$valid = false;
		}
		// comparing email input against pre defined constant email. If not true (valid) error is true.
		if (! filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
			$data['error']['email'] = "Enter a valid email address";
			$valid = false;
		}  
		return $valid;
	}


}

   
