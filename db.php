
<?php                          //Database details and connection to mysql server
  $server = 'localhost';
  $user = 'root';
  $password = '';
  $dbname = 'main_gardens';
  $conn =new mysqli($server, $user, $password, $dbname);
  mysqli_set_charset($conn,"utf8");
  if ($conn->connect_error)
  {
      die("Falha na conecção: " . $conn->connect_error);
  }
?>
