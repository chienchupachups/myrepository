<%@page import="com.entity.User"%>
<%@page import="com.entity.Book_Dtls"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">

<head>
	<meta charset="UTF-8">
    <title>Ebook: HomePage</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body class="tg-home tg-homeone">
	<%
	User user = (User) session.getAttribute("userobj");
	%>
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
		<!--************************************
				Header Start
		*************************************-->
		<%@include file="all_component/navbar.jsp"%>
		<!--************************************
				Header End
		*************************************-->

			<!--************************************
					Recent Book Start
			*************************************-->
			<section class="tg-sectionspace tg-haslayout">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="tg-sectionhead">
								<h2>
									<span>People’s Choice</span>
									Recent Books
								</h2>
								<a class="tg-btn" href="all_recent_book.jsp">View All</a>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div id="tg-bestsellingbooksslider" class="tg-bestsellingbooksslider tg-bestsellingbooks owl-carousel">
								<%
								BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
								List<Book_Dtls> list = dao.getRecentBook();
								for (Book_Dtls b : list) {
								%>
								<div class="item">
									<div class="tg-postbook">
										<figure class="tg-featureimg">
											<div class="tg-bookimg">
												<!-- <div class="tg-frontcover"><img src="book/<%=b.getPhotoName()%>" alt="image description"></div> -->
												<div class="tg-frontcover"><img src="book/java.jpg" alt="image description"></div>
												<!-- <div class="tg-backcover"><img src="book/<%=b.getPhotoName()%>" alt="image description"></div> -->
												<div class="tg-backcover"><img src="book/java.jpg" alt="image description"></div>
											</div>
											<a class="tg-btnaddtowishlist" href="view_books.jsp?bid=<%=b.getBookId()%>">
												<i class="icon-heart"></i>
												<span>View Details</span>
											</a>
										</figure>
										<div class="tg-postbookcontent">
											<ul class="tg-bookscategories">
												<li><a href="javascript:void(0);"><%=b.getBookCategory()%></a></li>
												<!-- <li><a href="javascript:void(0);">Fun</a></li> -->
											</ul>
											<div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
											<div class="tg-booktitle">
												<h3><a href="view_books.jsp?bid=<%=b.getBookId()%>"><%=b.getBookname()%></a></h3>
											</div>
											<span class="tg-bookwriter">By: <a href="javascript:void(0);"><%=b.getAuthor()%></a></span>
											<!-- <span class="tg-stars"><span></span></span> -->
											<span class="tg-bookprice">
												<ins><%=b.getPrice()%></ins>
												<!-- <del>$27.20</del> -->
											</span>
											<%
											if (user == null) {
											%>
											<a class="tg-btn tg-btnstyletwo" href="login.jsp">
												<i class="fa fa-shopping-basket"></i>
												<em>Add To Cart</em>
											</a>
											<%
											} else {
											%>
											<a class="tg-btn tg-btnstyletwo" href="cart?bid=<%=b.getBookId()%>&&uid=<%=user.getId()%>">
												<i class="fa fa-shopping-basket"></i>
												<em>Add To Cart</em>
											</a>
											<%
											}
											%>
										</div>
									</div>
								</div>
								<%
								}
								%>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					Recent Book End
			*************************************-->

			<!--************************************
					Featured Item Start
			*************************************-->
			<section class="tg-bglight tg-haslayout">
				<div class="container">
					<div class="row">
						<div class="tg-featureditm">
							<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
								<figure><img src="img/img-02.png" alt="image description"></figure>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
								<div class="tg-featureditmcontent">
									<div class="tg-themetagbox"><span class="tg-themetag">featured</span></div>
									<div class="tg-booktitle">
										<h3><a href="javascript:void(0);">Things To Know About Green Flat Design</a></h3>
									</div>
									<span class="tg-bookwriter">By: <a href="javascript:void(0);">Farrah Whisenhunt</a></span>
									<span class="tg-stars"><span></span></span>
									<div class="tg-priceandbtn">
										<span class="tg-bookprice">
											<ins>$23.18</ins>
											<del>$30.20</del>
										</span>
										<a class="tg-btn tg-btnstyletwo tg-active" href="javascript:void(0);">
											<i class="fa fa-shopping-basket"></i>
											<em>Add To Basket</em>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					Featured Item End
			*************************************-->
			<!--************************************
					New Book Start
			*************************************-->
			<section class="tg-sectionspace tg-haslayout">
				<div class="container">
					<div class="row">
						<div class="tg-newrelease">
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<div class="tg-sectionhead">
									<h2>
										<span>Taste The New Release Spice</span>
										New Books
									</h2>
								</div>
								<div class="tg-description">
									<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore toloregna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcoiars nisiuip commodo consequat aute irure dolor in aprehenderit aveli esseati cillum dolor fugiat nulla pariatur cepteur sint occaecat cupidatat.</p>
								</div>
								<div class="tg-btns">
									<a class="tg-btn tg-active" href="all_new_book.jsp">View All</a>
									<!-- <a class="tg-btn" href="javascript:void(0);">Read More</a> -->
								</div>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<div class="row">
									<div class="tg-newreleasebooks">
										<%
										BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
										List<Book_Dtls> list1 = dao1.getNewBook().subList(0, 3);
										for (Book_Dtls b : list1) {
										%>
										<div class="col-xs-4 col-sm-4 col-md-6 col-lg-4">
											<div class="tg-postbook">
												<figure class="tg-featureimg">
													<div class="tg-bookimg">
														<!-- <div class="tg-frontcover"><img src="book/<%=b.getPhotoName()%>" alt="image description"></div> -->
														<div class="tg-frontcover"><img src="book/java.jpg" alt="image description"></div>
														<!-- <div class="tg-backcover"><img src="book/<%=b.getPhotoName()%>" alt="image description"></div> -->
														<div class="tg-backcover"><img src="book/java.jpg" alt="image description"></div>
													</div>
													<a class="tg-btnaddtowishlist" href="view_books.jsp?bid=<%=b.getBookId()%>">
														<i class="icon-heart"></i>
														<span>View Details</span>
													</a>
												</figure>
												<div class="tg-postbookcontent">
													<ul class="tg-bookscategories">
														<li><a href="javascript:void(0);"><%=b.getBookCategory()%></a></li>
														<!-- <li><a href="javascript:void(0);">Fun</a></li> -->
													</ul>
													<div class="tg-booktitle">
														<h3><a href="view_books.jsp?bid=<%=b.getBookId()%>"><%=b.getBookname()%></a></h3>
													</div>
													<span class="tg-bookwriter">By: <a href="javascript:void(0);"><%=b.getAuthor()%></a></span>
													<!-- <span class="tg-stars"><span></span></span> -->
												</div>
											</div>
										</div>
										<%
										}
										%>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					New Book End
			*************************************-->
			<!--************************************
					Collection Count Start
			*************************************-->
			<section class="tg-parallax tg-bgcollectioncount tg-haslayout" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="img/parallax/bgparallax-04.jpg">
				<div class="tg-sectionspace tg-collectioncount tg-haslayout">
					<div class="container">
						<div class="row">
							<div id="tg-collectioncounters" class="tg-collectioncounters">
								<div class="tg-collectioncounter tg-drama">
									<div class="tg-collectioncountericon">
										<i class="icon-bubble"></i>
									</div>
									<div class="tg-titlepluscounter">
										<h2>Drama</h2>
										<h3 data-from="0" data-to="9213" data-speed="8000" data-refresh-interval="50">9,213</h3>
									</div>
								</div>
								<div class="tg-collectioncounter tg-horror">
									<div class="tg-collectioncountericon">
										<i class="icon-heart-pulse"></i>
									</div>
									<div class="tg-titlepluscounter">
										<h2>Horror</h2>
										<h3 data-from="0" data-to="1242" data-speed="8000" data-refresh-interval="50">1,242</h3>
									</div>
								</div>
								<div class="tg-collectioncounter tg-romance">
									<div class="tg-collectioncountericon">
										<i class="icon-heart"></i>
									</div>
									<div class="tg-titlepluscounter">
										<h2>Romance</h2>
										<h3 data-from="0" data-to="1012" data-speed="8000" data-refresh-interval="50">1,012</h3>
									</div>
								</div>
								<div class="tg-collectioncounter tg-fashion">
									<div class="tg-collectioncountericon">
										<i class="icon-star"></i>
									</div>
									<div class="tg-titlepluscounter">
										<h2>Fashion</h2>
										<h3 data-from="0" data-to="2245" data-speed="8000" data-refresh-interval="50">2,245</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					Collection Count End
			*************************************-->
			<!--************************************
					Old Book Start
			*************************************-->
			<section class="tg-sectionspace tg-haslayout">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="tg-sectionhead">
								<h2>
									<span>Some Old Books</span>
									Old Books
								</h2>
								<a class="tg-btn" href="all_old_book.jsp">View All</a>
							</div>
						</div>
						<div id="tg-pickedbyauthorslider" class="tg-pickedbyauthor tg-pickedbyauthorslider owl-carousel">
							<%
							BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
							List<Book_Dtls> list2 = dao2.getOldBook();
							for (Book_Dtls b : list2) {
							%>
							<div class="item">
								<div class="tg-postbook">
									<figure class="tg-featureimg">
										<div class="tg-bookimg">
											<!-- <div class="tg-frontcover"><img src="book/<%=b.getPhotoName()%>" alt="image description"></div> -->
											<div class="tg-frontcover"><img src="book/java.jpg" alt="image description"></div>
										</div>
										<div class="tg-hovercontent">
											<div class="tg-description">
												<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore toloregna aliqua enim adia minim veniam, quis nostrud.</p>
											</div>
											<!-- <strong class="tg-bookpage">Book Pages: 206</strong> -->
											<strong class="tg-bookcategory"><%=b.getBookCategory()%></strong>
											<strong class="tg-bookprice"><%=b.getPrice()%></strong>
											<!-- <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div> -->
										</div>
									</figure>
									<div class="tg-postbookcontent">
										<div class="tg-booktitle">
											<h3><a href="view_books.jsp?bid=<%=b.getBookId()%>"><%=b.getBookname()%></a></h3>
										</div>
										<span class="tg-bookwriter">By: <a href="javascript:void(0);"><%=b.getAuthor()%></a></span>
										<%
										if (user == null) {
										%>
										<a class="tg-btn tg-btnstyletwo" href="login.jsp">
											<i class="fa fa-shopping-basket"></i>
											<em>Add To Cart</em>
										</a>
										<%
										} else {
										%>
										<a class="tg-btn tg-btnstyletwo" href="cart?bid=<%=b.getBookId()%>&&uid=<%=user.getId()%>">
											<i class="fa fa-shopping-basket"></i>
											<em>Add To Cart</em>
										</a>
										<%
										}
										%>
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					Old Book End
			*************************************-->
			
			<!--************************************
					Call to Action Start
			*************************************-->
			<section class="tg-parallax tg-bgcalltoaction tg-haslayout" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="img/parallax/bgparallax-06.jpg">
				<div class="tg-sectionspace tg-haslayout">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<div class="tg-calltoaction">
									<h2>Open Discount For All</h2>
									<h3>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore.</h3>
									<a class="tg-btn tg-active" href="javascript:void(0);">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--************************************
					Call to Action End
			*************************************-->
		</main>
		<!--************************************
				Main End
		*************************************-->
		<!--************************************
				Footer Start
		*************************************-->
		<footer id="tg-footer" class="tg-footer tg-haslayout">
			<div class="tg-footerarea">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<ul class="tg-clientservices">
								<li class="tg-devlivery">
									<span class="tg-clientserviceicon"><i class="icon-rocket"></i></span>
									<div class="tg-titlesubtitle">
										<h3>Fast Delivery</h3>
										<p>Shipping Worldwide</p>
									</div>
								</li>
								<li class="tg-discount">
									<span class="tg-clientserviceicon"><i class="icon-tag"></i></span>
									<div class="tg-titlesubtitle">
										<h3>Open Discount</h3>
										<p>Offering Open Discount</p>
									</div>
								</li>
								<li class="tg-quality">
									<span class="tg-clientserviceicon"><i class="icon-leaf"></i></span>
									<div class="tg-titlesubtitle">
										<h3>Eyes On Quality</h3>
										<p>Publishing Quality Work</p>
									</div>
								</li>
								<li class="tg-support">
									<span class="tg-clientserviceicon"><i class="icon-heart"></i></span>
									<div class="tg-titlesubtitle">
										<h3>24/7 Support</h3>
										<p>Serving Every Moments</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="tg-threecolumns">
							<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
								<div class="tg-footercol">
									<strong class="tg-logo"><a href="javascript:void(0);"><img src="img/flogo.png" alt="image description"></a></strong>
									<ul class="tg-contactinfo">
										<li>
											<i class="icon-apartment"></i>
											<address>Suit # 07, Rose world Building, Street # 02, AT246T Manchester</address>
										</li>
										<li>
											<i class="icon-phone-handset"></i>
											<span>
												<em>0800 12345 - 678 - 89</em>
												<em>+4 1234 - 4567 - 67</em>
											</span>
										</li>
										<li>
											<i class="icon-clock"></i>
											<span>Serving 7 Days A Week From 9am - 5pm</span>
										</li>
										<li>
											<i class="icon-envelope"></i>
											<span>
												<em><a href="mailto:support@domain.com">support@domain.com</a></em>
												<em><a href="mailto:info@domain.com">info@domain.com</a></em>
											</span>
										</li>
									</ul>
									<ul class="tg-socialicons">
										<li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
										<li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
										<li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
										<li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
										<li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
								<div class="tg-footercol tg-widget tg-widgetnavigation">
									<div class="tg-widgettitle">
										<h3>Shipping And Help Information</h3>
									</div>
									<div class="tg-widgetcontent">
										<ul>
											<li><a href="javascript:void(0);">Terms of Use</a></li>
											<li><a href="javascript:void(0);">Terms of Sale</a></li>
											<li><a href="javascript:void(0);">Returns</a></li>
											<li><a href="javascript:void(0);">Privacy</a></li>
											<li><a href="javascript:void(0);">Cookies</a></li>
											<li><a href="javascript:void(0);">Contact Us</a></li>
											<li><a href="javascript:void(0);">Our Affiliates</a></li>
											<li><a href="javascript:void(0);">Vision &amp; Aim</a></li>
										</ul>
										<ul>
											<li><a href="javascript:void(0);">Our Story</a></li>
											<li><a href="javascript:void(0);">Meet Our Team</a></li>
											<li><a href="javascript:void(0);">FAQ</a></li>
											<li><a href="javascript:void(0);">Testimonials</a></li>
											<li><a href="javascript:void(0);">Join Our Team</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tg-footerbar">
				<a id="tg-btnbacktotop" class="tg-btnbacktotop" href="javascript:void(0);"><i class="icon-chevron-up"></i></a>
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<span class="tg-paymenttype"><img src="img/paymenticon.png" alt="image description"></span>
							<span class="tg-copyright">2024 All Rights Reserved By &copy; Ebooks</span>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!--************************************
				Footer End
		*************************************-->
	</div>
	<!--************************************
			Wrapper End
	*************************************-->
	<script src="js/vendor/jquery-library.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.vide.min.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/countTo.js"></script>
	<script src="js/appear.js"></script>
	<script src="js/gmap3.js"></script>
	<script src="js/main.js"></script>
</body>

</html>