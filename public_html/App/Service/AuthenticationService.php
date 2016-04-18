<?php

namespace App\Service;

use App\Models\User;
use App\Models\Exceptions\ModelNotFoundException;
use App\Service\Exceptions\InsufficientPrivilegesException;

class AuthenticationService
{
	private static $currentUser;

	public function __construct()
	{
		if (! isset($_SESSION['AuthenticationService'])){
			$this->resetSession();
		}
		// ['AuthenticationService'] is the name of the SESSION.
		if(isset($_SESSION['AuthenticationService']['currentUser']))
		{
			try {
				// if the user is in the database. get value of email in currentUser otherwise display error
				static::$currentUser = User::findBy('email', $_SESSION['AuthenticationService']['currentUser']->email);
				// var_dump(static::$currentUser);
			} catch (ModelNotFoundException $e) {
				$this->resetSession();
			}
		}
	}
	public function resetSession()
	{
		$_SESSION['AuthenticationService'] = [
			'currentUser' => null ];
	}
	# checking in email and pword in database when logging in
	public function attempt($email, $password)
	{
		# get the user with the matching email. Is the email in the database or not
		try {
			#user and matched with password above. returns record from db. Record is stored in User
			$user = User::findBy('email', $email);
			#show error in browser through ModelNotFound..
		} catch (ModelNotFoundException $e) {

			return false;
		}

		# compare passwords (password entered now, user (what is in database))
			if($this->comparePassword($password, $user)){
				$this->loginUser($user);
				return true;
			}
			// echo "password error";
			return false;
	}
	// this function is used in master.inc.php
	public function check()
	{
		// var_dump(static::$currentUser);
		return(static::$currentUser ? true : false);
	}
	private function comparePassword($password, User $user)
	{
		#are these passwords the same? (form, database) matches password hashes
		if (password_verify($password, $user->password)) {
			// secrity feature
			if(password_needs_rehash($user->password, PASSWORD_DEFAULT)) {
				$user->password = password_hash($password, PASSWORD_DEFAULT);
				// store rehashed password in database
				$user->store();
			}
			return true;
		}
		return false;
	}

	public function loginUser(User $user)
	{
		// can use in mulitple pages in site. user is record taken from db
		$_SESSION['AuthenticationService']['currentUser'] = $user;
		static::$currentUser = $user;
	}


	public function user()
	{
		return static::$currentUser;
	}

	public function logout()
	{
		unset($_SESSION['AuthenticationService']);
		static::$currentUser = null;
	}


	public function isAdmin()
	{
		if($this->check()){
			return static::$currentUser->role === 'admin';
		}

	}
	public function mustBeAdmin()
	{
		// must be admin to create, edit, store, delete
		if( ! $this->isAdmin()) { 
			// this will display error401 page
			// throw new InsufficientPrivilegesException();
			
		}
	}
	

}