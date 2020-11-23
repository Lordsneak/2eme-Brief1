<?php 
require('config.php');

function query($sql){
    global $connection;
    return mysqli_query($connection,$sql);
}
function fetch_array($result){
    return mysqli_fetch_array($result);
}
?>