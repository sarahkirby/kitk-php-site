<?php

// Connect to the database
$dbc = new mysqli('localhost', 'root', '', 'kitk');

// Filter the username
$username = $dbc->real_escape_string( $_POST['username'] );

// Prepare the query
$sql = "SELECT username FROM users WHERE username = '$username'";

// Run the query
$result = $dbc->query( $sql );

// If result failed
if( !$result ) {
	// Query failed
	echo 'Something went wrong with the database';
} elseif( $result->num_rows == 1 ) {
	// Username in use
	echo '<span style="color:red; padding-top:.6em;" class="glyphicon glyphicon-remove"></span> Username already in use';
} else {
	// No results found
	// Username not in use
	echo '<span style="color:green; padding-top:.6em;" class="glyphicon glyphicon-ok"></span>  Username is available';
}









