<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="testing.aspx.cs" Inherits="admin_testing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Images in Bootstrap</title>
	<link rel="stylesheet" href="css1/bootstrap.css">
</head>

<body>
	
	<div class="container">
		<div class="row">
			
			<!--1st-->
			
			<div class="col-md-4">
				<div class="thumbnail">
				
					<div class="caption">
						<h3>Dhaka Division</h3>
					</div>
					
					<a href="dhakaProduction.aspx"> <img src="images/dhaka.png" class="img-responsive"> </a>
					
					<div class="caption text-center">
						<p> Dhaka is the capital of Bangladesh</p>
					</div>
				</div>
			</div>
			
			
			<!--2nd-->
			
			<div class="col-md-4">
				<div class="thumbnail">
				
					<div class="caption">
						<h3>Khulna Division</h3>
					</div>
					
					<a href="khulnaProduction.aspx"> <img src="images/khulna.png" class="img-responsive"> </a>
					
					<div class="caption text-center">
						<p> Khulna is a Big City</p>
					</div>
				</div>
			</div>
			
			<!--3rd-->
			<div class="col-md-4">
				<div class="thumbnail">
				
					<div class="caption">
						<h3>Rajshahi Division</h3>
					</div>
					
					<a href="rajshahiProduction.aspx"> <img src="images/rajshahi.png" class="img-responsive"> </a>
					
					<div class="caption text-center">
						<p> Rajshahi is a big city</p>
					</div>
				</div>
			</div>
			
			<!--4th-->
			<div class="col-md-4">
				<div class="thumbnail">
				
					<div class="caption">
						<h3>Sylhet Division</h3>
					</div>
					
					<a href="sylhetProduction.aspx"> <img src="images/sylhet.png" class="img-responsive"> </a>
					
					<div class="caption text-center">
						<p> Sylhet is famous for tea plantation</p>
					</div>
				</div>
			</div>
			
			<!--5th-->
			<div class="col-md-4">
				<div class="thumbnail">
				
					<div class="caption">
						<h3>Chittagong Division</h3>
					</div>
					
					<a href="chittagongProduction.aspx"> <img src="images/ctg.png" class="img-responsive"> </a>
					
					<div class="caption text-center">
						<p> Chittagong is known as a tourist zone</p>
					</div>
				</div>
			</div>
			
			<!--6th-->
			<div class="col-md-4">
				<div class="thumbnail">
				
					<div class="caption">
						<h3>Barisal Division</h3>
					</div>
					
					<a href="barisalProduction.aspx"> <img src="images/barisal.png" class="img-responsive"> </a>
					
					<div class="caption text-center">
						<p> Barisal is a big city </p>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	
	
	
	<script src="jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
</body>

</asp:Content>

