<?php
$q=$_GET['custid'];
$connection = mysqli_connect('localhost:8889', 'root', 'root', 'country');
$sql="SELECT * FROM country WHERE id =".$q;
$result = mysqli_query($connection, $sql);
$row = mysqli_fetch_array($result);

//print "<img src=\"".$row['image_url']."\"><div id='data'><h3>".$row['cname']."</div>";
print "<img src='images/{$row['image_url']}'><div><h3>{$row['detail']}</h3></div>";

?>