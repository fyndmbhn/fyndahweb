<!--	Header start  -->
<?php include("include/headers.php");?>
<!--	Header end  -->
<?php 
					
					$query=mysqli_query($con,"SELECT * FROM about");
					while($row=mysqli_fetch_array($query))
					{
				?>
<!-- Sub banner start -->
<div class="sub-banner">
  <div class="overlay">
    <div class="container">
      <div class="breadcrumb-area">
        <h1><?php echo $row['1'];?></h1>
        <ul class="breadcrumbs">
          <li><a href="index.php">Home</a></li>
          <li class="active"><?php echo $row['1'];?></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Sub Banner end -->


<!-- About city estate start -->
<div class="about-city-estate">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
        <div class="properties-detail-slider simple-slider pds-2">
          <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/properties/properties-1.jpg" class="d-block w-100 img-fluid" alt="photo">
              </div>
              <div class="carousel-item">
                <img src="img/properties/properties-2.jpg" class="d-block w-100 img-fluid" alt="photo">
              </div>
              <div class="carousel-item">
                <img src="img/properties/properties-3.jpg" class="d-block w-100 img-fluid" alt="photo">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
              data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 align-self-center">
        <div class="about-text">

          <h3>Welcome to The Fyndah </h3>
          <?php echo $row['2'];?>
          <a class="btn-2 btn-defaults" href="#">
            <span>Read More</span> <i class="arrow"></i>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- About city estate end -->
<?php } ?>
<!-- Agent section start -->

<!-- Agent section end -->
<hr>
<!-- Counters 3 strat -->
<div class="counters-3">
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-12 col-sm-12 col-xs-12 align-self-center">
        <div class="sec-title-three">
          <div class="main-title main-title-3 mb-0">
            <h1>More than 10 Years of Experience</h1>
            <p>We are the best bet to fynding your dream home.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-7 col-md-12 col-sm-12 col-xs-12">
        <div class="counters-3-inner">
          <div class="counter-box-3 d-flex">
            <i class="flaticon-tag"></i>
            <div class="detail">
              <h1 class="counter">104967</h1>
              <p>Listings For Sale</p>
            </div>
          </div>
          <div class="counter-box-3 d-flex">
            <i class="flaticon-symbol-1"></i>
            <div class="detail">
              <h1 class="counter">32709</h1>
              <p>Listings For Rent</p>
            </div>
          </div>
          <div class="counter-box-3 d-flex">
            <i class="flaticon-people"></i>
            <div class="detail">
              <h1 class="counter">3201</h1>
              <p>Agents</p>
            </div>
          </div>
          <div class="counter-box-3 d-flex">
            <i class="flaticon-people-1"></i>
            <div class="detail">
              <h1 class="counter">208000</h1>
              <p>Monthly Visits</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Counters 3 end -->

<div class="clearfix"></div>
<!-- Testimonials 2 -->
<div class="testimonials-2 comon-slick">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 align-self-center wow fadeInLeft delay-04s">
        <div class="sec-title-three">
          <h2>Testimonials</h2>
          <p>These is just some of the reviews from some of ourur many clients.</p>
        </div>
      </div>
      <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12 wow fadeInRight delay-04s">
        <div class="slick row comon-slick-inner"
          data-slick='{"slidesToShow": 2, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
          <div class="item slide-box">
            <div class="testimonials-box">
              <div class="detail clearfix">
                <p><i class="fa fa-quote-left"></i> I have used other property platforms in the past but fyndah.com is
                  exceptional. I got four buyers within my first month of signing up on fyndah.com. <i
                    class="fa fa-quote-right"></i></p>
                <div class="user-info d-flex">
                  <a class="pr-3" href="#">
                    <img src="img/avatar/" class="flex-shrink-0 me-3">
                  </a>
                  <div class="detail align-self-center">
                    <h5>
                      <a href="#">~Samuel </a>
                    </h5>
                    <p>Estate Agent</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item slide-box">
            <div class="testimonials-box">
              <div class="detail clearfix">
                <p><i class="fa fa-quote-left"></i>I had a bungalow for sale being marketed by many agents for years
                  but
                  none made any progress. I signed up to fyndah.com
                  to try marketing and within 2 weeks my property was sold. <i class="fa fa-quote-right"></i></p>
                <div class="user-info d-flex">
                  <a class="pr-3" href="#">
                    <img src="img/avatar/" class="flex-shrink-0 me-3">
                  </a>
                  <div class="detail align-self-center">
                    <h5>
                      <a href="#">~Mr Johnson</a>
                    </h5>
                    <p>Property Owner</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item slide-box">
            <div class="testimonials-box">
              <div class="detail clearfix">
                <p><i class="fa fa-quote-left"></i> As a brokerage firm we always
                  look out for the best platforms to market properties for our clients
                  and we are pleased with what the fyndah.com platform has helped us achieve.
                  <i class="fa fa-quote-right"></i>
                </p>
                <div class="user-info d-flex">
                  <a class="pr-3" href="#">
                    <img src="img/avatar" class="flex-shrink-0 me-3">
                  </a>
                  <div class="detail align-self-center">
                    <h5>
                      <a href="#">~KC Properties</a>
                    </h5>
                    <p>Real Estate Consultants</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Testimonial 2 end -->
<div class="clearfix"></div>

<!-- Intro section start -->
<div class="intro-section">
  <div class="intro-section-inner">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-7 col-sm-12">
          <h3>Looking To Sell Or Rent Your Property?</h3>
        </div>
        <div class="col-lg-3 col-md-5 col-sm-12">
          <a class="btn-2 btn-white" href="contact-us.php">
            <span>Get in Touch</span> <i class="arrow"></i>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Intro section end -->

<!--	Footer   start-->
<?php include("include/footer.php");?>
<!--	Footer   start-->
