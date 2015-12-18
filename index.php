<?php 

date_default_timezone_set('Pacific/Auckland');

error_reporting(E_ALL);


require 'vendor/autoload.php';

session_start();

//destroys old id and creates new one
session_regenerate_id(true);

$auth = new App\Service\AuthenticationService();

App\Views\View::registerAuthenticationService($auth);
App\Controllers\Controller::registerAuthenticationService($auth);

require "routes.php";


