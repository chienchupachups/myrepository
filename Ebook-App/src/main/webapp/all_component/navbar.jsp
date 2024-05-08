<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<header id="tg-header" class="tg-header tg-haslayout">
	<div class="tg-middlecontainer">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<strong class="tg-logo"><a href="index.jsp"><img src="img/logo.png" alt="company name here"></a></strong>
					
					<c:if test="${not empty userobj }">
						<div class="tg-wishlistandcart">
							<div class="dropdown tg-themedropdown tg-wishlistdropdown">
								<a href="#" id="tg-wishlisst" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="icon-heart"></i>
									<span>${userobj.name}</span>
								</a>
							</div>
							<div class="dropdown tg-themedropdown tg-minicartdropdown">
								<a href="logout" id="tg-minicart" class="tg-btnthemedropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="icon-cart"></i>
									<span>Logout</span>
								</a>
							</div>
						</div>
					</c:if>
					
					<c:if test="${empty userobj }">
						<div class="tg-wishlistandcart">
							<div class="dropdown tg-themedropdown tg-wishlistdropdown">
								<a href="login.jsp" id="tg-wishlisst" class="tg-btnthemedropdown">
									<!-- <i class="icon-heart"></i> -->
									<span>Login</span>
								</a>
							</div>
							<div class="dropdown tg-themedropdown tg-minicartdropdown">
								<a href="register.jsp" id="tg-minicart" class="tg-btnthemedropdown">
									<!-- <i class="icon-cart"></i> -->
									<span>Register</span>
								</a>
							</div>
						</div>
					</c:if>
					
					<div class="tg-searchbox">
						<form class="tg-formtheme tg-formsearch" action="search.jsp" method="post">
							<fieldset>
								<input type="text" name="search" class="typeahead form-control" placeholder="Search by title, author, keyword, ISBN...">
								<button type="submit"><i class="icon-magnifier" type="submit"></i></button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="tg-navigationarea">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<nav id="tg-nav" class="tg-nav">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tg-navigation" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div id="tg-navigation" class="collapse navbar-collapse tg-navigation">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><a href="all_recent_book.jsp">Recent Books</a></li>
								<li><a href="all_new_book.jsp">New Books</a></li>
								<li><a href="all_old_book.jsp">Old Books</a></li>
								<li><a href="setting.jsp">Settings</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>