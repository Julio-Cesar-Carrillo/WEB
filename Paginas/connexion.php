<?php
try {
$connection=mysqli_connect('localhost','root','','DB_PROJECTE');
# echo "<script>alert('connexion establecida')</script>";
} catch (\Exception $e) {
echo "$te->getMessage()";
}