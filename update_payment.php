<?php

session_start();

include('include/config.php');

$email = $_SESSION['email'];

//Update admin status
$update = "UPDATE sub_admins set status='ACTIVE', payment_status ='PAID' WHERE email='$email'";

if (mysqli_query($con, $update)){
    
    //Redirect to login page 
    ?>
<script>
window.location = "http://127.0.0.1:8000/Agent-login.php";
</script>';

<?php
}else {
    
    echo mysqli_error($con);
}




?>
