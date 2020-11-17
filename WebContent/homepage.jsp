<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery.js"></script>
<title>Banking System</title>
</head>
	
	<style type="text/css">
	#body1
	{
		width: 100vw;
		height: 100vh;
		background-image: url(images/17545.jpg);
		background-size:cover;
	}
	
	#transfer
	{
		//text-align:center;
		//border:4px double #FF9900;
		//border-style: groove;
		font:20px red Arial, Helvetica, sans-serif;
	}
	
	.container
	{
		font-size: 25px;
	}

	.mytitle
		{
			font-weight:bolder;
			font-family:Algerian, "Arial Black", Century; 
			font-size:60px; 
			color:FF9; 
			padding:10px;
			text-align:center;
			
		}
		
	.title
	{	
		background-color: #036;
		//background-image: url(images/deposit.jpg);
		//background-size: cover;
		font-family:Algerian, "Arial Black", Century; 
		border:4px double white;
		border-style: groove;   
		font:bold;
		text-align:center;
		color:white;
	}
	
	.myfooter
	{
		background-color: black;
		padding:20px;
		color:white;
		//text-align:center;
	}
	
	.card-body
	{
		background-color: #669; 
		color: white;
	}
	
	.viewdata
	{
		padding: 12px;
		font-family: sans-serif;
		font-size: 20px;
		
	}
	
	.viewrecord
	{
		cursor: pointer;
	}
	
	</style>
	
	<script type="text/javascript" language="javascript">
$(document).ready(function(){
	
	$("#b2").click(function(){
		//when we are clicking on reset we want values as it is
		$("#page").val("HomePage");
	});
	
	$(".viewrecord").click(function(){
		var emailId=$(this).attr("id");
		var data=emailId.split("&");
		
		$("#name").val(data[0]);
		$("#email").val(data[1]);
		$("#balance").val(data[2]);
		
	});
	
	});
</script>
	
<body style="height: 100vh;" id="body1">
	<div class="row title">
		<div class="col-md-12">
			<div class="mytitle">Basic Banking System</div>
			<div class="col-md-10" style="text-align:end;"><h3>- by Sneha Tarnekar</h3></div>
		</div>
	</div>
	
	<div id="home" class="row">
		<div style="display: grid; place-items: center;" class="col-md-6">
			<div class="row">
				<div class="card" style="width: 18rem; margin: 20px;">
	  			  <img src="images/view.jpg" class="card-img-top" alt="...">  
				  <div class="card-body">
				    <h5 class="card-title">View Users</h5>
				    <p class="card-text">Click here to view customers details.</p>
				    <a href="#viewcustomers" class="btn btn-primary">View Users</a>
				  </div>
				</div>
			
				<div class="card" style="width: 18rem; margin: 20px;">
	  			  <img src="images/transfer.jpg" class="card-img-top" alt="...">  
				  <div class="card-body">
				    <h5 class="card-title">Transfer Money</h5>
				    <p class="card-text">Transfer money to a friend with an ease.</p>
				    <a href="#transfer" class="btn btn-primary">Get Started</a>
				  </div>
				</div>
			</div>
		</div>
		
		<div style="margin-top: 20px;" class="col-md-6">
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" ">
		 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
		 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
		 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
		   <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="false">
		    <div class="carousel-inner" role="listbox">
		      <div class="carousel-item active">
		        <img class="d-block w-100 img-fluid" src="images/img3.jpg">
		        <div style="color: purple;" class="carousel-caption">
		          <h3 class="h1"></h3>
		        </div>
		      </div>
		      <div class="carousel-item">
		        <img class="d-block w-100 img-fluid" src="images/img2.png">
		        <div style="color: green;" class="carousel-caption">
		          <h3 class="h1"></h3>
		        </div>
		      </div>
		      <div class="carousel-item">
		        <img class="d-block w-100 img-fluid" src="images/img1.png">
		        <div style="color: green;" class="carousel-caption">
		          <h3 class="h1"></h3>
		        </div>
		      </div>
		    </div>
		    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
		      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
		      <span class="carousel-control-next-icon" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
		</div>
		</div>
	</div>
	
	<br>
	<br>
	