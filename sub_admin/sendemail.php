<?php 

    /**
     * This example shows how to handle a simple contact form.
     */
    //Import PHPMailer classes into the global namespace
    //use PHPMailer\PHPMailer\PHPMailer;
    $msg = '';
    $output = '';
    //Don't run this unless we're handling a form submission
      if(isset($_POST['pay'])) {
       $content = $_POST['content'];
       $title = $_POST['title'];
        // date_default_timezone_set('Etc/UTC');

         require 'phpmailer/class.phpmailer.php';
          require 'phpmailer/Exception.php';
          require 'phpmailer/class.smtp.php';
          

        $mail = new PHPMailer();

        //$mail->isSMTP();
        $mail->Host = 'agentmessages@fyndah.com';
        $mail->SMTPAuth = false;
        $mail->SMTPAutoTLS = false;
        $mail->Port = 25;

        	$mail->Username='agentmessages@fyndah.com';   //   auth mail
	       $mail->Password='EzinwokE1@'; 
        // $mail->Password = '';   // password is optional


        //Use a fixed address in your own domain as the from address
        //**DO NOT** use the submitter's address here as it will be forgery
        //and will cause your messages to fail SPF checks
        $mail->setFrom('agentmessages@fyndah.com', 'FYNDAH PLATFORMS');


        $mail->addAddress('agentmessages@fyndah.com', 'FYNDAH PLATFORMS');
        $mail->addAddress('agentmessages@fyndah.com', 'FYNDAH PLATFORMS');


        //Put the submitter's address in a reply-to header
        //This will fail if the address provided is invalid,
        //in which case we should ignore the whole request
        if ($mail->addReplyTo( 'hectorgoodman1@gmail.com', 'FYNDAH PLATFORMS')) {
            $mail->Subject = 'MESSAGES FROM AGENTS DASHBOARD FYNDAH PLATFORMS ';
            //Keep it simple - don't use HTML
            $mail->isHTML(true);
            //Build a simple message body
            $mail->Body = "<h3>Message : $content <br>Subject : $title  
            </h3>";

            //Send the message, check for errors
            if (!$mail->send()) {
                //The reason for failing to send will be in $mail->ErrorInfo
                //but you shouldn't display errors to users - process the error, log it on your server.
                echo "<b class='text-danger'>Sorry, something went wrong. Please try again later.</b>";
            } else {

      echo " <html>
  <head>
   <link href='https://fonts.googleapis.com/css2?family=Lato&display=swap' rel='stylesheet>
    <link href='https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap' rel='stylesheet'>
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: 'Nunito Sans', 'Helvetica Neue', sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: 'Nunito Sans', 'Helvetica Neue', sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }

  .frame {
  width: 90%;
  margin: 40px auto;
  text-align: center;
}
button {
  margin: 20px;
}
.custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}

/* 7 */
.btn-7 {
background: linear-gradient(0deg, rgba(255,151,0,1) 0%, rgba(251,75,2,1) 100%);
  line-height: 42px;
  padding: 0;
  border: none;
}
.btn-7 span {
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
}
.btn-7:before,
.btn-7:after {
  position: absolute;
  content: '';
  right: 0;
  bottom: 0;
  background: rgba(251,75,2,1);
  box-shadow:
   -7px -7px 20px 0px rgba(255,255,255,.9),
   -4px -4px 5px 0px rgba(255,255,255,.9),
   7px 7px 20px 0px rgba(0,0,0,.2),
   4px 4px 5px 0px rgba(0,0,0,.3);
  transition: all 0.3s ease;
}
.btn-7:before{
   height: 0%;
   width: 2px;
}
.btn-7:after {
  width: 0%;
  height: 2px;
}
.btn-7:hover{
  color: rgba(251,75,2,1);
  background: transparent;
}
.btn-7:hover:before {
  height: 100%;
}
.btn-7:hover:after {
  width: 100%;
}
.btn-7 span:before,
.btn-7 span:after {
  position: absolute;
  content: '';
  left: 0;
  top: 0;
  background: rgba(251,75,2,1);
  box-shadow:
   -7px -7px 20px 0px rgba(255,255,255,.9),
   -4px -4px 5px 0px rgba(255,255,255,.9),
   7px 7px 20px 0px rgba(0,0,0,.2),
   4px 4px 5px 0px rgba(0,0,0,.3);
  transition: all 0.3s ease;
}
.btn-7 span:before {
  width: 2px;
  height: 0%;
}
.btn-7 span:after {
  height: 2px;
  width: 0%;
}
.btn-7 span:hover:before {
  height: 100%;
}
.btn-7 span:hover:after {
  width: 100%;
}

    </style>
    <body>
      <div class='card'>
      <div style='border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;'>
        <i class='checkmark'>✓</i>
      </div>
        <h1>Success</h1> 
        <p>Hi <?php echo $_SESSION[name];?> We received your Message And we would get back to you shortly;<br />
we'll be in touch shortly!</p>
<center>
  <div class='frame'>
    <a href='dashboard.php'>
      <button class='custom-btn btn-7'><span>Go Back Home</span></button>
    </a>
  </div>
</center>

</div>

</body>

</html>


";
// Success message
}
} else {

echo "<b class='text-danger'>Invalid email address, message ignored.</b>";
}
}else {
echo "<b class='text-danger'>Sorry, something went wrong. Please try again later.</b>";
}
?>
