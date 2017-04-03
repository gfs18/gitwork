<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="shortcut icon" type="image/icon" href="images/log.png" />
<link rel="stylesheet" type="text/css" href="css/manage.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-ht">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="javascript:void(0)" class="navbar-brand">
						<img src="images/log.png">
					</a>
					 <a href="javascript:void(0)" class="navbar-brand">
					 	<h4>幻听音乐</h4>
					 </a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-left" id="topnav">
						<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div><a href="javascript:void(0)">Link</a></li>
						<li><a href="javascript:void(0)">Link</a></li>
						<li><a href="javascript:void(0)">Link</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="javascript:void(0)">Link</a></li>
						<li class="dropdown"><a href="javascript:void(0)"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false">Dropdown </a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>



	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="js/manage.js"></script>
</body>
</html>