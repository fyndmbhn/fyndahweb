<?php
session_start();

  $cname = $_SESSION['cname']; 
  $phone = $_SESSION['cphone'];
  $cemail = $_SESSION['cemail'];
?>
<html>

<head>
  <!-- Google Tag Manager -->
  <script>
  (function(w, d, s, l, i) {
    w[l] = w[l] || [];
    w[l].push({
      'gtm.start': new Date().getTime(),
      event: 'gtm.js'
    });
    var f = d.getElementsByTagName(s)[0],
      j = d.createElement(s),
      dl = l != 'dataLayer' ? '&l=' + l : '';
    j.async = true;
    j.src =
      '../../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
    f.parentNode.insertBefore(j, f);
  })(window, document, 'script', 'dataLayer', 'GTM-PDTWJ3Z');
  </script>
  <!-- End Google Tag Manager -->
  <title> property Dealer</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="UTF-8">
  <!-- External CSS libraries -->
  <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="assets/css/magnific-popup.css">
  <link type="text/css" rel="stylesheet" href="assets/css/jquery.selectBox.css">
  <link type="text/css" rel="stylesheet" href="assets/css/dropzone.css">
  <link type="text/css" rel="stylesheet" href="assets/css/rangeslider.css">
  <link type="text/css" rel="stylesheet" href="assets/css/animate.min.css">
  <link type="text/css" rel="stylesheet" href="assets/css/leaflet.css">
  <link type="text/css" rel="stylesheet" href="assets/css/slick.css">
  <link type="text/css" rel="stylesheet" href="assets/css/slick-theme.css">
  <link type="text/css" rel="stylesheet" href="assets/css/map.css">
  <link type="text/css" rel="stylesheet" href="assets/css/jquery.mCustomScrollbar.css">
  <link type="text/css" rel="stylesheet" href="assets/fonts/font-awesome/css/font-awesome.min.css">
  <link type="text/css" rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">
  <script src="https://checkout.flutterwave.com/v3.js"></script>

  <!-- Favicon icon -->
  <link rel="shortcut icon" href="assets/img/logo.jpg" type="image/x-icon">

  <!-- Google fonts -->
  <link rel="stylesheet" type="text/css"
    href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800%7CPoppins:400,500,700,800,900%7CRoboto:100,300,400,400i,500,700">

  <!-- Custom Stylesheet -->
  <link type="text/css" rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" type="text/css" id="style_sheet" href="assets/css/skins/default.css">

</head>

<div id="loading"></div>

<body onload="makePayment()">

</body>

<script>
function makePayment() {
  FlutterwaveCheckout({
    public_key: "FLWPUBK-86cd759522ffa4f9cda30afe95eb61db-X",
    tx_ref: "titanic-48981487343MDI0NzMx",
    amount: 2500,
    currency: "NGN",
    payment_options: "card, banktransfer, ussd",
    redirect_url: "https://fyndah.com/update_payment.php",
    meta: {
      consumer_id: 23,
      consumer_mac: "92a3-912ba-1192a",
    },
    customer: {
      email: "<?php echo $cemail; ?>",
      phone_number: "<?php echo $phone; ?>",
      name: "<?php echo $cname; ?>",
    },
    customizations: {
      title: "Fyndah Real Estate",
      description: "Payment for activating account",
      logo: "https://www.logolynx.com/images/logolynx/22/2239ca38f5505fbfce7e55bbc0604386.jpeg",
    },
  });
}
</script>

<script>
function onReady(callback) {
  var intervalId = window.setInterval(function() {
    if (document.getElementsByTagName('body')[0] !== undefined) {
      window.clearInterval(intervalId);
      callback.call(this);
    }
  }, 1000);
}

function setVisible(selector, visible) {
  document.querySelector(selector).style.display = visible ? 'block' : 'none';
}

onReady(function() {
  setVisible('.page', true);
  setVisible('#loading', false);
});
</script>


</html>
