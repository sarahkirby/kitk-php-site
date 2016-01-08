<?php

namespace App\Views;

class NewsletterSuccessView extends TemplateView
{
	public function render() 
	{
		$page = "success";
		$page_title = "Thank-you!";
		include "templates/master.inc.php";
	}
	protected function content() 
	{
		include "templates/newslettersuccess.inc.php";
	}
}