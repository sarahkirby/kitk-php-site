<?php

namespace App\Views;

class HomeView extends TemplateView
{

	// call master include header and footer. content function in master. Here it calls to include about.inc
	public function render() 
	{

		extract($this->data);

		$page = "index";
		// var_dump($newsletter);
		$page_title = "Katie in the Kitchen";
		include "templates/master.inc.php";
	}
	protected function content() 
	{
		extract($this->data);
		include "templates/index.inc.php";
	}
}
