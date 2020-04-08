<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<style type="text/css">
    .cv
    {
      top: 0;
      width: 100%;
      position: relative;
      overflow: hidden;
      list-style: none;
      background-color: #ccc;
      padding: 0;
      margin: 0;
      list-style-type: none;
      text-align: center;
    }
    .cs a
    {
      padding: 14px 10px; 
      display: block;
      text-decoration: none;
      color: black;
      font-size: 25px;
    }
    .ct
    {
      font-size: 14px;

    }
    .cs
    {
      float: left;
    }
    .cv .search-container {
     float: right;
    }

.cv input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  width: 600px;
  border: none;
  border-radius: 20px 0 0 20px;
}

.cv .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: gray;
  border-radius: 0 20px 20px 0; 
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.cv .search-container button:hover {
  background: #f1f1f1;
}

@media screen and (max-width: 600px) {
  .cv.search-container {
    float: none;
  }
  .cv a, .topnav input[type=text], .cv .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .b input[type=text] {
    border: 1px solid #ccc;  
  }
}
		.b
		{
			top: 0;
      position: fixed;
			width: 99%;
      z-index: 2;
			overflow: hidden;
			list-style: none;
			background-color: #ccc;
			padding: 0;
			margin: 0;
			list-style-type: none;
			text-align: center;
		}
		
		.c a
		{
			padding: 14px 10px; 
			display: inline-block;
			text-decoration: none;
			color: black;

		}
		.c
		{
			display: inline;
		}
		.c a:hover
		{
			color: #555;
			background-color: #f1f1f1;
		}
		.g
		{
			float:right;
		}
		.f
		{
			float: left;
		}
    p
    {
      font-size: 25px;
      font-family: sans-serif;
      text-align: center;
    }
		.d
		{
			display: none;

		}
		.be
		{
		 	list-style-type: none;
		  	margin: 0;
		  	padding: 0;
  			width: 1500px;
  			background-color: #f1f1f1;
		}
		.bd a
		{	
			display: block;
  			color: #000;
  			padding: 20px 16px;
  			text-align: center;
  			text-decoration: none;
		}
		.bd a:hover
		{
			background-color: #555;
			color: white;
		}
		.slider-holder
        {
            width: 800px;
            height: 400px;
            background-color: yellow;
            margin-left: auto;
            margin-right: auto;
            margin-top: 0px;
            text-align: center;
            overflow: hidden;
        }
       
        .image-holder
        {
            width: 2400px;
            background-color: red;
            height: 400px;
            clear: both;
            position: relative;
           
            -webkit-transition: left 2s;
            -moz-transition: left 2s;
            -o-transition: left 2s;
            transition: left 2s;
        }
       
        .slider-image
        {
            float: left;
            margin: 0px;
            padding: 0px;
            position: relative;
        }
       
        #slider-image-1:target ~ .image-holder
        {
            left: 0px;
        }
       
        #slider-image-2:target ~ .image-holder
        {
            left: -800px;
        }
       
        #slider-image-3:target ~ .image-holder
        {
            left: -1600px;
        }
        .button-holder
        {
            position: relative;
            top: -20px;
        }
       
        .slider-change
        {
            display: inline-block;
            height: 10px;
            width: 10px;
            border-radius: 5px;
            background-color: #f1f1f1;
        }
        div.gallery {
 		  margin: 5px;
		  border: 1px solid #ccc;
		  float: left;
		  width: 280px;
		  height: 280px;
		}

		div.gallery:hover {
		  border: 1px solid #777;
		}

		div.gallery img {
		  width: 100%;
		  height: auto;
		}

		div.desc {
		  padding: 15px;
		  text-align: center;
		}
	</style>
<body>
	<br>
	<br>
  <ul class="cv">
  <li class="cs"><a href="#WEBSITE"><i class="fa fa-car" aria-hidden="true"></i>TopCars<br><div class="ct">.com</div></a></li>
  <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search..." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</ul>
	<ul class="b"> 
		<li class="c"><a href="sell.html" class="g" >SELL A CAR</a></li>
		<li class="c"><a href="#WEBSITE">HOME</a></li>
		<li class="c"><a href="about.html">ABOUT US</a></li>
		<li class="c"><a href="#brands">BRANDS</a></li>
  		<li class="c"><a href="#r">TOP RATED</a></li>
		<li class="c"><a href="used.html">USED CARS</a></li>
		<li class="c"><a href="login.html" class="f">LOGIN/SIGN IN</a></li>
	</ul>
	<br>
	 <div class="slider-holder">
        <span id="slider-image-1"></span>
        <span id="slider-image-2"></span>
        <span id="slider-image-3"></span>
        <div class="image-holder">
        <a href="about.html" target="_blank"><img src="slide1.jpg" class="slider-image"  width="800" height="400" /></a>
            <img src="3series.jpg" class="slider-image" width="800" height="400" />
            <img src="slide3.webp" class="slider-image" width="800" height="400" />
        </div>
        <div class="button-holder">
            <a href="#slider-image-1" class="slider-change"></a>
            <a href="#slider-image-2" class="slider-change"></a>
            <a href="#slider-image-3" class="slider-change"></a>
        </div>
    </div>
    <br>
	    <p><b>Latest cars:</b></p>
	<hr>
	<div class="gallery">
  <a href="celerio.jpg">
    <img src="celeriox.webp" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Maruti Celerio X Rs4.9 - 5.67 Lakh</a></div>
</div>
<div class="gallery">
  <a target="_blank" href="img_forest.jpg">
    <img src="i10 nios.webp" alt="Forest" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Hyundai Grand i10 Nios Rs.5.04 - 8.04 Lakh</a></div>
</div>

<div class="gallery">
  <a target="_blank" href="img_lights.jpg">
    <img src="dzire.webp" alt="Northern Lights" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Maruti Dzire Rs5.89 - 8.8 Lakh</a></div>
</div>

<div class="gallery">
  <a target="_blank" href="img_mountains.jpg">
    <img src="x7.jpg" alt="Mountains" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">BMW X7 Rs92.5 Lakh - 1.06 Cr</a></div>
</div>
 <div class="gallery">
  <a target="_blank" href="img_5terre.jpg">
    <img src="3series.jpg" alt="Cinque Terre" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">BMW 3 Series Rs. 41.7 - 48.5 Lakh</a></div>
</div>
<div class="gallery">
  <a target="_blank" href="img_forest.jpg">
    <img src="troc.jpg" alt="Forest" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Volkswagen T-Roc Rs. 19.99 Lakh</a></div>
</div>

<div class="gallery">
  <a target="_blank" href="img_lights.jpg">
    <img src="audiq7.jpg" alt="Northern Lights" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Audi Q7 Rs.69.21 - 81.11 Lakh</a></div>
</div>
</div>
<div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br>
  <hr>
  <div class="be" id="brands">
      <ul class="be">
        <li class="bd"><a href="bmw.html" class="bd">BMW</a></li>
        <li class="bd"><a href="audi.html">Audi</a></li>
        <li class="bd"><a href="maruti.html">Maruti Suzuki</a></li>
        <li class="bd"><a href="hyundai.html">Hyundai</a></li>
        <li class="bd"><a href="kia.html">Kia</a></li>
        <li class="bd"><a href="volkswagan.html">Volkswagan</a></li>
      </ul>
  </div>
	<p><b>Top rated cars:</b></p>
	<hr>
</div>
<div class="gallery">
  <a href="celerio.jpg">
    <img src="creta.webp" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Hyundai Creta Rs.9.99 - 17.2 Lakh</a></div>
</div>
<div class="gallery">
  <a target="_blank" href="img_forest.jpg">
    <img src="venue.webp" alt="Forest" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Hyundai Venue Rs.6.7 - 11.39 Lakh</a></div>
</div>

<div class="gallery">
  <a target="_blank" href="img_lights.jpg">
    <img src="dzire.webp" alt="Northern Lights" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Maruti Dzire Rs5.89 - 8.8 Lakh</a></div>
</div>

<div class="gallery" id="r">
  <a target="_blank" href="img_mountains.jpg">
    <img src="x7.jpg" alt="Mountains" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">BMW X7 Rs92.5 Lakh - 1.06 Cr</a></div>
</div>
 <div class="gallery">
  <a target="_blank" href="img_5terre.jpg">
    <img src="seltos.jpg" alt="Cinque Terre" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Kia Seltos Rs. 9.89 - 17 Lakh</a></div>
</div>
<div class="gallery">
  <a target="_blank" href="img_forest.jpg">
    <img src="brezza.webp" alt="Forest" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Maruti Vitara Brezza Rs. 7.34 - 11.4 Lakh</a></div>
</div>

<div class="gallery">
  <a target="_blank" href="img_lights.jpg">
    <img src="audiq7.jpg" alt="Northern Lights" width="600" height="400">
  </a>
  <div class="desc"><a href="" style="text-decoration: none;color: black;">Audi Q7 Rs.69.21 - 81.11 Lakh</a></div>
</div>
</div>
</body>
</html>
