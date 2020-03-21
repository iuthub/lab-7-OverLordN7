<?php  

$db = new PDO('mysql:dbname=blog;host=localhost','root','');

$username=$_POST['username'];
$fullname=$_POST['fullname'];
$email=$_POST['email'];
$pwd=$_POST['pwd'];
$confirm_pwd=$_POST['confirm_pwd'];

$sql = "INSERT into users (username,email,password,fullname) VALUES (?,?,?,?);";
$stmt = $db->prepare($sql);
$stmt->execute([$username,$email,$pwd,$fullname]);

header("Location: index.php?signup=success");
?>