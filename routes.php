<?php

namespace App\Controllers;

use App\Models\Exceptions\ModelNotFoundException;
// use App\Service\Exceptions\InsufficientPrivilegesException;




$page = isset($_GET['page']) ? $_GET['page'] : 'home';

try {

	switch ($page) {
	case 'home':

		// var_dump($_GET);
		$controller = new HomeController();
		$controller->show();

		break;


	case 'register':

		$controller = new AuthenticationController();
		$controller->register();

		break;


	case 'auth.store':

		$controller = new AuthenticationController();
		$controller->store();

		break;


	case 'login':

		$controller = new AuthenticationController();
		$controller->login();

		break;


	case 'auth.attempt':

		$controller = new AuthenticationController();
		$controller->attempt();

		break;

	

	default:
		$controller = new ErrorController();
		$controller->error404();
		break;
}

} catch (ModelNotFoundException $e)
{
	$controller = new ErrorController();
	$controller->error404();
}

// } catch (InsufficientPrivilegesException $e)
// {
// 	$controller = new ErrorController();
// 	$controller->error401();
// }

