<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="header.jsp"></jsp:include>
<%
	int ID = Integer.parseInt(request.getParameter("id"));
	String Product_Name = request.getParameter("pname");
	String P_Name = "";
	if (Product_Name.contains(" ")) {
		P_Name = Product_Name.substring(0, Product_Name.indexOf(" "));
		System.out.println(P_Name);
	}
	System.out.println("Search Name :" + P_Name);
	System.out.println("Full Name :" + Product_Name);

	//System.out.println("ProductName "+Product_Name);
	String Dir = "Personal Care";
	switch (ID) {
	case 27:
		Dir = "Kitchen";
		break;
	case 26:
		Dir = "Household";
		break;
	case 21:
		Dir = "Snack & Beverages";
		break;
	case 30:
		Dir = "Personal Care";
		break;
	case 25:
		Dir = "Gift Hampers";
		break;
	case 33:
		Dir = "sweets";
		break;
	case 18:
		Dir = "Baby Care";
		break;
	case 23:
		Dir = "Frozen food";
	case 24:
		Dir = "Fruits and Vegetables";
		break;
	case 32:
		Dir = "Soft Drinks & Juices";
		break;
	case 22:
		Dir = "Electronics";
		break;
	case 29:
		Dir = "Mens";
		break;
	case 34:
		Dir = "Womens";
		break;
	case 19:
		Dir = "Baby Kids";
		break;

	default:
		Dir = "Personal Care";

	}

	Connection con = MyConnection.getConnection();
	String sql = "select *from tblProduct where P_CATEGORYID=? And P_Name=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setInt(1, ID);
	ps.setString(2, Product_Name);

	ResultSet rs = ps.executeQuery();
%>
<!-- page -->
<div class="services-breadcrumb">
	<div class="agile_inner_breadcrumb">
		<div class="container">
			<%
				String sql1 = "select *from tblCategory where CAT_CATEGORYID=?";
				PreparedStatement ps1 = con.prepareStatement(sql1);
				ps1.setInt(1, ID);
				ResultSet rs1 = ps1.executeQuery();
			%>
			<ul class="w3_short">
				<li><a href="index.jsp">Home</a> <i>|</i></li>
				<%
					while (rs1.next()) {
				%>


				<li><%=rs1.getString(2)%> Products</li>

			</ul>
		</div>
	</div>
</div>
<!-- //page -->
<!-- top Products -->
<div class="ads-grid">
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			<%=rs1.getString(2)%>
			Products <span class="heading-style"> <i></i> <i></i> <i></i>
			</span>
			<%
				}
			%>
		</h3>
		<!-- //tittle heading -->
		<!-- product left -->
		<div class="side-bar col-md-3">
			<div class="search-hotel">
				<h3 class="agileits-sear-head">Search Here..</h3>
				<form action="#" method="post">
					<input type="search" placeholder="Product name..." name="search"
						required=""> <input type="submit" value=" ">
				</form>
			</div>
			<!-- price range -->
			<div class="range">
				<h3 class="agileits-sear-head">Price range</h3>
				<ul class="dropdown-menu6">
					<li>

						<div id="slider-range"></div> <input type="text" id="amount"
						style="border: 0; color: #ffffff; font-weight: normal;" />
					</li>
				</ul>
			</div>
			<!-- //price range -->
			<!-- food preference -->
			<div class="left-side">
				<h3 class="agileits-sear-head">Food Preference</h3>
				<ul>
					<li><input type="checkbox" class="checked"> <span
						class="span">Vegetarian</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Non-Vegetarian</span></li>
				</ul>
			</div>
			<!-- //food preference -->
			<!-- discounts -->
			<div class="left-side">
				<h3 class="agileits-sear-head">Discount</h3>
				<ul>
					<li><input type="checkbox" class="checked"> <span
						class="span">5% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">10% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">20% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">30% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">50% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">60% or More</span></li>
				</ul>
			</div>
			<!-- //discounts -->
			<!-- reviews -->
			<div class="customer-rev left-side">
				<h3 class="agileits-sear-head">Customer Review</h3>
				<ul>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
							aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
							<span>5.0</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
							aria-hidden="true"></i> <i class="fa fa-star-o"
							aria-hidden="true"></i> <span>4.0</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star-half-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <span>3.5</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <span>3.0</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star-half-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <span>2.5</span>
					</a></li>
				</ul>
			</div>
			<!-- //reviews -->
			<!-- deals -->
			<div class="deal-leftmk left-side">
				<h3 class="agileits-sear-head">Special Deals</h3>
				<div class="special-sec1">
					<div class="col-xs-4 img-deals">
						<img src="User/images/d2.jpg" alt="">
					</div>
					<div class="col-xs-8 img-deal1">
						<h3>Lay's Potato Chips</h3>
						<a href="">$18.00</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="special-sec1">
					<div class="col-xs-4 img-deals">
						<img src="User/images/d1.jpg" alt="">
					</div>
					<div class="col-xs-8 img-deal1">
						<h3>Bingo Mad Angles</h3>
						<a href="">$9.00</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="special-sec1">
					<div class="col-xs-4 img-deals">
						<img src="User/images/d4.jpg" alt="">
					</div>
					<div class="col-xs-8 img-deal1">
						<h3>Tata Salt</h3>
						<a href="">$15.00</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="special-sec1">
					<div class="col-xs-4 img-deals">
						<img src="User/images/d5.jpg" alt="">
					</div>
					<div class="col-xs-8 img-deal1">
						<h3>Gujarat Dry Fruit</h3>
						<a href="">$525.00</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="special-sec1">
					<div class="col-xs-4 img-deals">
						<img src="User/images/d3.jpg" alt="">
					</div>
					<div class="col-xs-8 img-deal1">
						<h3>Cadbury Dairy Milk</h3>
						<a href="">$149.00</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //deals -->
		</div>
		<!-- //product left -->
		<!-- product right -->
		<div class="agileinfo-ads-display col-md-9 w3l-rightpro">
			<div class="wrapper">
				<!-- first section -->
				<!-- <div class="product-sec1"> -->

				<%
					while (rs.next())

					{
				%>
				<div class="col-xs-4 product-men"
					style="float: right; margin-top: 10px;">

					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<%
								String picname = rs.getString(19);
									String newpicadd = picname.substring(picname.lastIndexOf('\\') + 1, picname.length());
							%>
							<img class="img-responsive img-thumbnail"
								style="width: 150px; height: 150px;"
								src="${pageContext.request.contextPath}/Product/<%=Dir%>/<%=newpicadd %>">

							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp?id=<%=rs.getString(1)%>"
										class="link-product-add-cart">Quick View</a>
								</div>
							</div>
							<span class="product-new-top">New</span>
						</div>
						<div class="item-info-product ">
							<h4>
								<a href="#"><%=rs.getString(2)%></a>
							</h4>
							<div class="info-product-price">
								<span class="item_price "><i class="fa fa-inr"></i><%=rs.getString(7)%></span>

							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out ">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart" /> <input
											type="hidden" name="add" value="1" /> <input type="hidden"
											name="business" value=" " /> <input type="hidden"
											name="item_name" value="<%=rs.getString(2)%>" /> <input
											type="hidden" name="amount" value="<%=rs.getString(7)%>" />
										<input type="hidden" name="discount_amount"
											value="<%=rs.getString(11)%>" /> <input type="hidden"
											name="currency_code" value="INR" /> <input type="hidden"
											name="return" value=" " /> <input type="hidden"
											name="cancel_return" value=" " /> <input type="submit"
											name="submit" value="Add to cart" class="button" />
									</fieldset>
								</form>
							</div>

						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<!-- //product right -->
</div>
<!-- //top products -->
<!-- newsletter -->
<div class="footer-top">
	<div class="container-fluid">
		<div class="col-xs-8 agile-leftmk">
			<h2>Get your Groceries delivered from local stores</h2>
			<p>Free Delivery on your first order!</p>
			<form action="#" method="post">
				<input type="email" placeholder="E-mail" name="email" required="">
				<input type="submit" value="Subscribe">
			</form>
			<div class="newsform-w3l">
				<span class="fa fa-envelope-o" aria-hidden="true"></span>
			</div>
		</div>
		<div class="col-xs-4 w3l-rightmk">
			<img src="User/images/tab3.png" alt=" ">
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //newsletter -->
<jsp:include page="footer.jsp"></jsp:include>