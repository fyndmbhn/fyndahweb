 <!--	Header start  -->
 <?php include("include/headers.php");?>
 <!--	Header end  -->


 <!-- Sub banner start -->
 <div class="sub-banner">
   <div class="overlay">
     <div class="container">
       <div class="breadcrumb-area">
         <h1>Get In Touch</h1>
         <ul class="breadcrumbs">
           <li><a href="index.html">Home</a></li>
           <li class="active">Get In Touch</li>
         </ul>
       </div>
     </div>
   </div>
 </div>
 <!-- Sub Banner end -->

 <!-- Contact 1 start -->
 <div class="contact-1 content-area-7">
   <div class="container">
     <!-- Main title -->
     <div class="main-title text-center">
       <h1>Get In Touch</h1>
       <p>We are always ready to hear from you, get in touch by completing the mail below or using any of the
         official channels listed below..</p>
     </div>
     <div class="bg-white">
       <div class="row g-0">
         <div class="col-lg-7 col-md-12 col-sm-12 col-pad2">
           <!-- Contact form start -->
           <div class="contact-form contact-pad">
             <h3>Send us a Message</h3>
             <form id="contact_form" action="sendmail2.php" method="POST" enctype="multipart/form-data">
               <div class="row">
                 <div class="col-md-6">
                   <div class="form-group name">
                     <input type="text" name="name" class="form-control" placeholder="Name" aria-label="Full Name">
                   </div>
                 </div>
                 <div class="col-md-6">
                   <div class="form-group email">
                     <input type="email" name="email" class="form-control" placeholder="Email Address"
                       aria-label="Email Address">
                   </div>
                 </div>
                 <div class="col-md-6">
                   <div class="form-group subject">
                     <input type="text" name="subject" class="form-control" placeholder="Subject" aria-label="Subject">
                   </div>
                 </div>
                 <div class="col-md-6">
                   <div class="form-group number">
                     <input type="text" name="phone" class="form-control" placeholder="Phone" aria-label="Phone Number">
                   </div>
                 </div>
                 <div class="col-md-12">
                   <div class="form-group message">
                     <textarea class="form-control" name="message" placeholder="Write message"
                       aria-label="Write message"></textarea>
                   </div>
                 </div>
                 <div class="col-md-12">
                   <div class="send-btn text-center">
                     <button type="submit" name="pay" class="button-md button-theme btn-3">Send Message</button>
                   </div>
                 </div>
               </div>
             </form>
           </div>
           <!-- Contact form end -->
         </div>
         <div class="col-lg-5 col-md-12 col-sm-12 col-pad2">
           <!-- Contact details start -->
           <div class="contact-details">
             <h3>Opening Hours</h3>
             <div class="ci-box d-flex">
               <div class="icon">
                 <i class="fa fa-map-marker"></i>
               </div>
               <div class="detail align-self-center">
                 <h4>Office Address</h4>
                 <p>12d Wole Ariyo, Lekki phase 1, Lagos.</p>
               </div>
             </div>
             <div class="ci-box d-flex">
               <div class="icon">
                 <i class="fa fa-phone"></i>
               </div>
               <div class="detail align-self-center">
                 <h4>Phone Number</h4>
                 <p>
                   <a href="tel:+2347065346076">Office: +234-706-534-6076</a>
                 </p>
               </div>
             </div>
             <div class="ci-box d-flex">
               <div class="icon">
                 <i class="fa fa-envelope"></i>
               </div>
               <div class="detail align-self-center">
                 <h4>Email Address</h4>
                 <p>
                   <a href="mailto:info@fyndah.com">info@fyndah.com</a>
                 </p>
               </div>
             </div>
             <div class="ci-box d-flex mb-30">
               <div class="icon">
                 <i class="fa fa-fax"></i>
               </div>
               <div class="detail align-self-center">
                 <h4>Whats App:</h4>
                 <p>
                   <a href="https://wa.me/+2347065346076">+234-706-534-6076</a>
                 </p>
               </div>
             </div>

             <h3>Follow Us</h3>
             <ul class="social-list clearfix">
               <li>
                 <a href="https://www.facebook.com/PropertyFyndah/" class="facebook-bg">
                   <i class="fa fa-facebook"></i>
                 </a>
               </li>
               <li>
                 <a href="#" class="twitter-bg">
                   <i class="fa fa-twitter"></i>
                 </a>
               </li>
               <li>
                 <a href="#" class="linkedin-bg">
                   <i class="fa fa-linkedin"></i>
                 </a>
               </li>
               <li>
                 <a href="#" class="google-bg">
                   <i class="fa fa-google-plus"></i>
                 </a>
               </li>
               <li>
                 <a href="#" class="rss-bg">
                   <i class="fa fa-rss"></i>
                 </a>
               </li>
             </ul>
           </div>
           <!-- Contact details end -->
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Contact 1 end -->

 <!-- Google map start -->
 <div class="section">
   <div class="map">
     <div id="map" class="contact-map"></div>
   </div>
 </div>
 <!-- Google map end -->

 <!--	Footer   start-->
 <?php include("include/footer.php");?>
 <!--	Footer   start-->
