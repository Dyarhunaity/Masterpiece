<?php
    $conn=mysqli_connect('localhost','root','','master');

    if ($conn->connect_error) 
    {
        echo 'not connected, error';
    }
    // else
    // {
    //     echo 'Connected Successfully';
    // }
?>