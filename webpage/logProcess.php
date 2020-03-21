<?php
$username=$_POST['username'];
$password=$_POST['pwd'];


setcookie("username", "username", time()+(60*60*24*365));
$db = new PDO('mysql:dbname=blog;host=localhost','root','');
$sql ="SELECT * FROM users where username = :username AND password = :password";


$stmt=$db->prepare($sql);
$stmt->execute(
   array(
   	'username' =>$_POST["username"],
    'password' =>$_POST["pwd"])
);
$count =$stmt->rowCount();
if($count>0){
	$_SESSION["username"]=$_POST["username"];
	header("Location: login.php?signup=success");
}
else{
	header("Location: index.php?signup=false");
	$message='<label>Wrong Data </label>';


}



	


?>