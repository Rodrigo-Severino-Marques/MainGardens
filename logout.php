
    <!--  Check if session is terminated, then head back to login page! ( Used for security and prevention of data leaks. )  -->

<?php
session_start();
if (session_destroy()) {
    header("Location:front-office/login.php");
}
 ?>
