<?php
/*
$q=$_GET['searchstring'];
if($q!=NULL)
 {
$connection = mysqli_connect('localhost', 'root', 'root', 'countries');
$sql="SELECT * FROM country WHERE cname LIKE '".$q."%'";
$result = mysqli_query($connection, $sql);
$numrows = mysqli_num_rows($result);
var_dump($numrows);exit;
if($numrows > 0) 
{
while($row = mysqli_fetch_array($result)) 
{
 // print "<a href=\"#\" onclick=\"displayInfo(".$row['customer_id'].")\">".$row['customer_lastname'].", ".$row['customer_firstname']."</a>";
 // }


  //print "<a href=\"#\" id=\"".$row['id']."\">".$row['name'].</a>";
  // print "<img> <a>{$row['name']}</a>";
  print "<img> <a href=''>Text</a>";
 }

}
else
{
print "No results match your search";
}
}*/
$connection = mysqli_connect('localhost', 'root', 'root', 'country');

if ($connection->connect_error) {
    print 'error';
    die("Connection failed: " . $connection->connect_error);
}

$q=$_GET['searchstring'];
$sql="SELECT * FROM country WHERE cname LIKE '".$q."%'";

//var_dump( $connection );exit;
$result = $connection->query($sql);

 $array = mysqli_fetch_all($result, MYSQLI_ASSOC);
$val = [];

 foreach($array as $index => $value) { 
     $array[$index]['content'] = "<img  src='images/{$value['Image_icon']}'> <h2>{$value['cname']}</h2>";
    $val[] = $array[$index];
   // print  "<a id='{$value['id']}'><img  src='images/{$value['Image_icon']}'> <h2>{$value['cname']}</h2></a><br>";
} 
header('Content-Type: application/json');
print json_encode( $val );


?>