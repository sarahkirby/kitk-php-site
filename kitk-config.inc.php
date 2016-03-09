<?php

if (stristr($_SERVER['HTTP_HOST'], ".yoobee.net.nz")) {



define("DEV_ENVIRONMENT", false);
// local development phase

// sets variable in php.ini file
ini_set('display_erros', false);
ini_set('log_erros', 1);
// current directory(getcwd) go to this path (string)
ini_set('error_log', getcwd() . "/php-error.log");

define("MAILGUN_KEY", 'key-da60199e912bcaac6368c287959ff499');
define("MAILGUN_DOMAIN", 'sandbox0a4f558326d949d0a0b1659e0d84d940.mailgun.org');

define("DB_HOST", 'localhost');
define("DB_NAME", 'sarahkir_kitk');
define("DB_USER", 'sarahkir_skirby');
define("DB_PASSWORD", 'MidnightB00M');

} else {
// local development phase
define("DEV_ENVIRONMENT", true);

// sets variable in php.ini file
ini_set('display_erros', true);
ini_set('log_erros', 1);
// current directory(getcwd) go to this path (string)
ini_set('error_log', getcwd() . "/php-error.log");

define("MAILGUN_KEY", 'key-da60199e912bcaac6368c287959ff499');
define("MAILGUN_DOMAIN", 'sandbox0a4f558326d949d0a0b1659e0d84d940.mailgun.org');

define("DB_HOST", 'localhost');
define("DB_NAME", 'kitk');
define("DB_USER", 'root');
define("DB_PASSWORD", '');

}


?>