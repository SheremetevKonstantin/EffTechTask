<?php

    $host = "localhost";
  	$login = "root";
  	$passwd = "";
  	$db = "Liblary";
	

  	$conn = mysqli_connect($host, $login, $password, $db);

  	if (!$conn) {
  		die("Connection failed: " . mysqli_connect_error());
      exit;
  	}else{
		$sql = "Select author_name From author Where author_book_count < 7;";
		$result = mysqli_query($conn,$sql);
		$author_name_array = array();
		while ($row = $result -> fetch_array())
			$author_name_array[] = $row[0];
		
		
		for($i = 0; $i < count($author_name_array);$i++){
			print($author_name_array[$i]);
			print("<br>");
		}
			
	}
	
	
	
	

?>