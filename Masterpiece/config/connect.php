<?php
    $conn=mysqli_connect('localhost','root','','aqaba');

    if ($conn->connect_error) 
    {
        echo 'not connected, error';
    }
    // else
    // {
    //     echo 'Connected Successfully';
    // }
?>