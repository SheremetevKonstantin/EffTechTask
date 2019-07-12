<?php

    $Feb_array = array();
	
	$Feb_array[0] = 0;
	$Feb_array[1] = 1;
	
	print("1 - ");
	print($Feb_array[0]);
	print("<br>");
	
	print("2 - ");
	print($Feb_array[1]);
	print("<br>");
	
	for($i = 2; $i < 64;$i++){
		$Feb_array[$i] = $Feb_array[$i - 2] + $Feb_array[$i - 1];
		$index = $i + 1;
		print("{$index} - ");
		print($Feb_array[$i]);
		print("<br>");
	}
	
	

?>