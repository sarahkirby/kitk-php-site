<?php

namespace App\Views;

class Error404View extends TemplateView
{
	// call master include header and footer. content function in master. Here it calls to include about.inc
	public function render() {
		$page = "error404";
		$page_title = "404 Page Not Found";
		include "templates/master.inc.php";
	}
	protected function content() {
		include "templates/error404.inc.php";
	}
}
