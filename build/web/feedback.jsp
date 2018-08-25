<!DOCTYPE html>
<html>
<head>
<title>Feedback</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Audiowide|Handlee" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="indexstyle.css">
	<link rel="stylesheet" type="text/css" href="feedstyle.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

</head>
<body>
	
<div class="grid-container">

<div class="head1">
	<a href="index.html">
	<img src="Images/logo.png" style="height: 10vw; width: 12vw; z-index: 1;"></a>
</div>
<div style="z-index: 1; font-size: 2.6vw; font-family: 'Audiowide', cursive; font-weight: bolder; color: black;">
	<h>THE<br>ZOOLOGICAL PARK</h>
</div>

<div class="head2">
		<ul>
			<li><a href="home.html">About</a></li>
			<li>
				<div class="dropdown">
					<a class="dropbtn" href="about.html">Attractions</a>
					<div class="dropitems">
						<a href="animals.html">Indian And Exotic Animals</a>
						<a href="birds.html">Indian And Exotic Birds</a>
						<a href="reptile.html">Reptiles</a>
						<a href="fish.html">Fishes</a>
						<a href="museum.html">Museum</a>
						<a href="floral.html">Floral Kingdom</a>
					</div>
				</div>
			</li>
			<li><a href="login.html">Login</a></li>
			<li><a href="contact.html">Contact Us</a></li>
			<li><a href="feedback.jsp">Feedback</a></li>
		</ul>
</div>

</div>

<div class="two">
	<h3>GIVE FEEDBACK</h3>
	<br>
	<form action="">
		<textarea rows="10" cols="50" name="feed">Please write here...</textarea><br>
		<h5>Rate your Experience:</h5>
		<div class="rating">
			<label><input type="radio" name="rating" value="1">
				<span class="icon">&#x02605</span>
			</label>
			<label><input type="radio" name="rating" value="2">
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
			</label>
			<label><input type="radio" name="rating" value="3">
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
			</label>
			<label><input type="radio" name="rating" value="4">
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
			</label>
			<label><input type="radio" name="rating" value="5">
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
				<span class="icon">&#x02605</span>
			</label>
		</div>
		<br><br><input type="submit" name="submit" value="Submit" onclick="alertfunc()">
	</form>
</div>
<div class="three">
	<div class="fb fade">
		<img src="http://stmedia.stimg.co/08-146317+08ZOO052116.jpg?w=1000" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="http://r.ddmcdn.com/w_3990/s_f/o_1/cx_10/cy_0/cw_3990/ch_2660/APL/uploads/2017/02/35177_ep101_105.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="https://www.zoobasel.ch/cgi-bin/pagedata/fotosbackground/erdmaennchen.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="https://www.speakcdn.com/assets/2294/pasted_galapagos_tortoise_max_okc_zoo.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="http://ava7.com/w/birds/budgie/budgie-zoo-melopsittacus-undulatus-flock-hundreds-birds.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="https://upload.wikimedia.org/wikipedia/commons/7/7d/Lucknow_Zoo_Crocodile.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="http://animalli.com/wp-content/uploads/2016/09/fishes-nature-underwater-fish-sealife-sea-ocean-picture-wallpapers.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="https://static.panoramio.com.storage.googleapis.com/photos/large/66236225.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
	<div class="fb fade">
		<img src="http://animals.sandiegozoo.org/sites/default/files/2016-09/Giraffe_ZN.jpg" style="height: 26vw; width:  40vw; padding-top: 5.5vw; padding-left: 3.5vw;">
	</div>
</div>

<script type="text/javascript">
	var slideIndex = 0;
	showSlides();

function alertfunc() {
	alert("Your feedback has been successfully registered. Thank you!");
}

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("fb");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = "block"; 
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}	
</script>
</body>
</html>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");

    }
    catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;

    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoo", "root", "");
    String feed=request.getParameter("feed");
    String rating=request.getParameter("rating");
    PreparedStatement pt= connection.prepareStatement("INSERT INTO feedback VALUES(?,?)");
    pt.setString(1, feed);
    pt.setString(2, rating);
    pt.executeUpdate();
%>