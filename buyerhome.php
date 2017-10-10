<?php
include 'dbcon.php';
$email=$_SESSION['email'];
echo $email;
?>
<script>
 
 $('.button').on('click', function(e){
    e.preventDefault();
    $.post("php_page.php", {id: $(this).attr('id')}, function(data){
        //This is the success function, you can display a message or something
    });
});
</script>
<?php
if(!empty($_POST['id'])){
$_SESSION['artid'] = $_POST['id'];}


if(isset($_POST['submit']))
{
	$c=$_POST["art_id"];
	echo $c;
	
	$logid= "SELECT * FROM art WHERE art_id='$c'";
	$result2=mysqli_query($con,$logid);
	while($row=mysqli_fetch_array($result2))
	{
		$p=$row["ureg"];
	}
	$result="SELECT * FROM aregistration WHERE email='$email'";
	$result4=mysqli_query($con,$result);
	while($row=mysqli_fetch_array($result4))
	{
		$q=$row["areg"];
		
	}
		

	$sql1="INSERT INTO mycart(`art_id`, `ureg`,`areg`) VALUES ('$c','$p','$q')";
	$result1=mysqli_query($con,$sql1)or die(mysqli_error($con));;

/* 
	$sql="update art set status=1 where art_id='$c'";
	$result3=mysqli_query($con,$sql); */

	//$_SESSION['art_id']= $c;
	//echo"<script>alert('Data Entered Successfully');</script>)";
header('location:mycart.php');
}

?>

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



                
                <style>
				div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
	background-color:#009966;
	height:300px;
	border-radius:13px 13px 13px 13px;
}




/*div.img img {
    height:250x;
	width:180px;
}*/

div.desc {
    padding: 1px;
    text-align: center;
	font-family:Benguiat Bk BT;
        color: white;
}
.button1 {	width:100px;
	background-color:#009966;
	border-radius:13px;
	cursor: pointer;
        color: white;
}
#txtbox{
	border-color:#009966;
	padding: 1px;
    text-align: center;
	font-family:Benguiat Bk BT;
        color: white;
}
</style>
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
						<li >
							<a href="userprofile.php"><span aria-hidden="true" class="icon_house"></span><br>Home</a>
						</li>
						
						<li class="active">
							<a href="buyerhome.php"><span aria-hidden="true" class="icon_house"></span><br>Buy Arts</a>
						</li>
						
						<li>
							<a href="contact.html"><span aria-hidden="true" class="icon_mail"></span><br>Contact</a>
						</li>
						<li>
							<a href="login.php"><span aria-hidden="true" class="icon_tools"></span><br>Login</a>
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
                        <h1>Artsy Arts</h1>
                    </div>
                </div>
            </div>
        </div>
		<body>
                
              
<center>
<table>
<?php 

   
    $qry="select * from art where status=0";
$res=mysqli_query($con,$qry);
$i=0;
while($ar=mysqli_fetch_array($res))
{
	$i++;
	if($i % 6==1)
	{
		echo "<tr>";
		
	}
	$ureg=$ar['ureg'];
	$art_id=$ar['art_id'];

	$price=$ar['price'];
	$artname=$ar['artname'];
	echo $artname;
	
	$result2="SELECT * FROM uregistration where ureg='$ureg'";
$result4=mysqli_query($con,$result2);
while($row4 = mysqli_fetch_array($result4))
{
	$fname=$row4['fnam'];	
	$lname=$row4['lnam'];	
	
}
	
?>
    	<td>
       <form action="#" method="post" name="products">
        	<div class="img">
                    <span><img src="<?php echo $ar['artimg']?>" height="200px" width="180px" style=" border-radius: 8px; " alt=""><span class="desc">
                    
                <div class="desc">
					<img src="Indian_Rupee_symbol.png" height="9px" width="9px"><input type="text" style="text-align:left;" id="txtbox" name="price" width="10px" value='<?php echo $ar['price']?>'>
                    
   					 <input type="text"  id="txtbox" style="font-family:Copperplate Gothic Bold;font-size:21px;width:175px;" name="artname" value='<?php echo $ar['artname']?>'>
                   <input type="text"  id="txtbox"  name="artist" value='<?php echo $fname?>'>	 
				   <input type="text"  id="txtbox"  name="art_id" value='<?php echo $ar['art_id']?>'><br>
					
                   
					<a href ="mycart.php? art_Id=<?php echo $ar['art_id'];?>">
					<input type="submit" value="Book Now" name="submit" id="'<?php echo $ar['art_id'];?>'" class="button1"/>
					</a>
					
 				 </div>
			</div>	</td>
 <?php } 

?>
      </table>    
</center>	
			
    </body>
</html> 