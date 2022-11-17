<?php
session_start();
include('include/headers.php');
include('config.php');
error_reporting(1);




    $firstname = addslashes($_SESSION['firstname']);
    $lastname = addslashes($_SESSION['lastname']);
    $address = addslashes($_SESSION['address']);
    $phone_number = addslashes($_SESSION['phone']);
    $role = addslashes($_SESSION['role']);
    $email = addslashes($_SESSION['email']);
    $password = $_SESSION['password'];

    
    $newpass = md5($password); 
    $query = "INSERT INTO sub_admins(firstname, lastname, address, phone, role, email, password, date, status, payment_status) VALUES('$firstname', '$lastname', '$address', '$phone', '$role', '$email', '$newpass',now(), 'INACTIVE', 'PENDING')";  

  if(mysqli_query($con, $query)) {
    echo "<script>window.location='update_payment.php'</script>";
  }

    else
    {
    var_dump(mysqli_error($con));
    }
mysqli_close($con);



include('include/footer.php');

?>


<script type="text/javascript">
var alphaExp = /^[a-zA-Z]+$/; //Variable to validate only alphabets
var alphaspaceExp = /^[a-zA-Z\s]+$/; //Variable to validate only alphabets and space
var numericExpression = /^[0-9]+$/; //Variable to validate only numbers
var alphanumericExp = /^[0-9a-zA-Z]+$/; //Variable to validate numbers and alphabets
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/; //Variable to validate Email ID 

function validateform() {
  if (document.frmregistration.firstname.value == "") {
    alert("First name should not be empty..");
    document.frmregistration.firstname.focus();
    return false;
  } else if (!document.frmregistration.firstname.value.match(alphaspaceExp)) {
    alert("first name not valid..");
    document.frmregistration.firstname.focus();
    return false;
  } else if (document.frmregistration.lastname.value == "") {
    alert("lastname should not be empty..");
    document.frmregistration.lastname.focus();
    return false;
  } else if (document.frmregistration.address.value == "") {
    alert("address should not be empty..");
    document.frmregistration.address.focus();
    return false;
  } else if (document.frmregistration.role.value == "") {
    alert("role should not be empty..");
    document.frmregistration.role.focus();
    return false;
  } else if (document.frmregistration.email.value == "") {
    alert("email should not be empty..");
    document.frmregistration.email.focus();
    return false;
  } else if (document.frmregistration.password.value.length < 8) {
    alert("Password length should be more than 8 characters...");
    document.frmregistration.password.focus();
    return false;
  }

}
</script>
