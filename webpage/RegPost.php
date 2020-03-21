<?php  

$db = new PDO('mysql:dbname=blog;host=localhost','root','');

$title=$_POST['title'];
$body=$_POST['body'];



/*
$username = $_COOKIE['username'];

$query= "SELECT * FROM users  where username = :username";
foreach ($db->query($query) as $row) {
	if($row['username']==$username){
		$userId=$row[0];
	}
}
*/

$sql = "INSERT into posts (title,body,userId) VALUES (?,?,1);";
$stmt = $db->prepare($sql);
$stmt->execute([$title,$body]);

header("Location: login.php?signup=success");
?>