
<html lang="en">

    <head>
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Montserrat:700,400">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/elegant-font/code/style.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/flexslider/flexslider.css">
        <link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/media-queries.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>
	
	

    <body>

        <!-- Top menu -->
		<nav class="navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
                   <img src="assets/img/logo.png" style="background-position:left top";>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">						
						<li class="active">
							<a href="edituser.php"><span aria-hidden="true" class="icon_house"></span><br>HOME</a>
						</li>
						<li>
							<a href="buyerhome.php"><span aria-hidden="true" class="icon_camera"></span><br>BUY ART</a>
						</li>
						<li>
							<a href="artists"><span aria-hidden="true" class="icon_comment"></span><br>ARTISTS</a>
						</li>
						<li>
							<a href="contact.html"><span aria-hidden="true" class="icon_tools"></span><br>CONTACT</a>
						</li>
						<li >
							<a href="index.php"><span aria-hidden="true" class="icon_profile"></span><br>LOGOUT</a>
						</li>
						<li >
							<a href="changepass.php"><span aria-hidden="true" class="icon_profile"></span><br> CHANGE PASSWORD</a>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>
        <!-- Page Title -->
        <div class="page-title-container">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 page-title wow fadeIn">
                        <span aria-hidden="true" class="icon_profile"></span>
                        <h1>Edit User Profile</h1>
                    </div>
                </div>
            </div>
        </div>
		<?php
include 'dbcon.php';
$us_id=$_SESSION['us_id'];
echo $us_id;
//$g=$_SESSION["logid"];
//echo $g;
$sql = mysqli_query($con,"SELECT * FROM aregistration,login where aregistration.us_id=login.us_id and aregistration.us_id=$us_id");
$sq3l = mysqli_query($con,"SELECT * FROM login where `us_id`='$us_id'");

if(isset($_POST['update']))
{

//$user=$_POST["username"];
$us_id=$_POST["us_id"];
$fname=$_POST["fname"];
$lname=$_POST["lname"];
$email=$_POST["email"];
$gender=$_POST["gender"];
$mbno=$_POST["mbno"];
$dob=$_POST["dob"];
$address=$_POST["address"];
$city=$_POST["city"];




//$g=$_SESSION["logid"];




$us_id=$_SESSION['us_id'];
$sql2="UPDATE `aregistration` SET `fname`='$fname',`lname`='$lname',`gender`='$gender',`dob`='$dob',`mbno`='$mbno' ,`address`='$address',`city`='$city' WHERE `us_id`=$us_id";
$result2=mysqli_query($con,$sql2) or die("error");
//$sql3="UPDATE `login` SET `username`='$user',`email`='$email' WHERE `userid`=$us_id";
//$result3=mysqli_query($con,$sql3) or die("error");
//echo "<script> alert('delete successfull');</script>";
 echo"<script>alert('Profile Updated!');</script>";
header("location:#");

}
?>
		<form name="myform" action="#" method="POST" id="form" enctype="multipart/form-data">
		
        <form action="">
								
	    <div class="form-group">
        <table width="480"  align="center" cellpadding="0" border="0">
		<?php
while($row=mysqli_fetch_array($sql)){
	?>
<tr>
</tr>
  <tr>
    <td></td><td><img src="<?php echo $row['img'] ?>" style="border-radius: 50%;position:absolute;right:900px;" width="150px" height="150px" alt="no image found"/></td></tr>
    <tr><td width="82" valign="top"><div align="left">FirstName:</div></td>
    <td width="165" valign="top"><input type="text" name="fname" id="fname" value="<?php echo $row['fname'];?> "></td>
  </tr><br>
  <tr>
    <td valign="top"><div align="left">LastName:</div></td>
    <td valign="top"><input type="text" name="lname"  id="lname" value="<?php echo $row['lname']; ?> "></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Email:</div></td>
    <td valign="top"><input type="email" name="email" id="email"  value="<?php echo $row['email']; ?> "></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Gender:</div></td>
    <td valign="top"><input type="text" name="gender"  id="gender" value="<?php echo $row['gender']; ?> "></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Date Of Birth: </div></td>
    <td valign="top"><input type="text" name="dob" id="dob" value="<?php echo $row['dob']; ?> "></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Mobile Number: </div></td>
    <td valign="top"><input type="text" name="mbno" id="mbno" value="<?php echo $row['mbno'];?> "></td>
  </tr>
  <tr>
    <td valign="top"><div align="left">Address: </div></td>
    <td valign="top"><input type="text" name="address" id="address" value="<?php echo $row['address']; ?> "></td>
  </tr>
  
  <tr>
    <td valign="top"><div align="left">City: </div></td>
    <td valign="top"><input type="text" name="city"  id="city"value="<?php echo $row['city'];?> "></td>
  </tr>
  <tr></tr><tr></tr>
  <tr>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;  <td></td><td></td>
  <td width="165" align="left"><input type="submit" name="update" value="UPDATE" id="update" class="btn"></td></tr>
  <td><input class="txt" type="hidden" name="us_id" id="us_id" value="<?php echo $row['us_id'];?>"></td>
  <?php
}
?>

 
</table>
</div>
</form>
        
        <p align="right">&nbsp; </p>
</body>
        </html>