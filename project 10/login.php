<?php 
include 'config/connect.php';
session_start();
// login Validation function 



$le= $lp="none";
$lpErr="";
// $passwordlogin = md5($passwordlogin);
$login=mysqli_fetch_all(mysqli_query($conn,'select * from users'),MYSQLI_ASSOC);

if (isset($_POST['login'])) 
{

    $lemail=$_POST['email'];
    $lpassword=md5($_POST['password']);
    if (empty($_POST['email']) || empty($_POST['password'])) {
        $lp="block";
        $lpErr="please insert email and Password";
    }
    else if ($lemail == 'admin@admin.com' && $lpassword == '123456') 
        {
            $ldate=date("d-m-Y H:i:s");
            $sql="INSERT INTO logins (updated_at) VALUE ('$ldate') WHERE users.fname='admin'";
            mysqli_query($conn , $sql);
            header('location: admin.php');
            // break;
        }
    else {
        foreach($login as $user )
        {
            if ($lemail == $user['email'] && $lpassword == $user['pass'])
            {
                $_SESSION['id']=$user['id'];
                $_SESSION['name']=$user['fname'];
                $name=$user['fname'];
                $_SESSION['lname']=$user['lname'];
                $_SESSION['email']=$user['email'];
                $_SESSION['phone']=$user['phone'];
                $_SESSION['city']=$user['city'];
                $_SESSION['address']=$user['address'];
                $_SESSION['pass']=$user['pass'];
                $_SESSION['users'];
                $ldate=date("d-m-Y H:i:s");
                $sql="INSERT INTO users (login date) VALUE ('$ldate') WHERE users.name='$name'";
                mysqli_query($conn , $sql);
                header('location: user.php');
            }
            else
            {
                $lp="block";
                $lpErr="Wrong email or Password";
            }
        }
    }
}
include 'include/header.php'; 
?>
<br>
<br>
<br>
<br>
<br>
<br>

<div class="hr-theme-slash-2">

</div>
<br>
<!-- Log In form -->
<style>


body{
  background: url("https://www.wadirumnightluxury.com/sites/default/files/_MGL2732sss.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  height: 600px;
 
 }

 

</style>
<form  action="login.php" method="POST" id="logForm">

    
        <h2 style="text-align:center; font-family: 'FontAwesome'; color:white;
    font-weight: bolder;">Log In form</h2>
    

    <div class="form-row">
        <div class="col-md-4 offset-md-4">
        <label style="color:white;" for="email">Your E-mail</label>   
        <input type="email" name="email" id="email" class="form-control is-inavalid" placeholder="test@test.com" value="">
        </div>
    </div>
    <div class="form-row">
        <div class="col-md-4 offset-md-4">
        <label style="color:white;" for="password">Password</label>   
        <input type="password" name="password" id="password" class="form-control is-inavalid" placeholder="********" value="">
        <div class="invalid-feedback" style="display:<?php echo $lp ?>">
        <?php echo $lpErr ?>
        </div>
        </div>
    </div>

    <button class="btn col-md-4 offset-md-4" type="submit" name="login" style="background-color:orange; color:white;">LOG IN</button>
    <br><br>
<!-- End Log In form -->

<!-- switch to signup form -->
</form>
<form  action="login.php" method="POST" id="sForm">
<button class="btn col-md-4 offset-md-4" type="submit" name="switch" style="background-color:#051D40 ; "><a style="color:#fff" href="./register.php">Sign Up </a></button>
<br>
<!-- <button style="width:180px; margin-top:20px;background-color:red; " class="col-md-4 offset-md-4" type="submit"><a style="color:white;" href="./reset.php">Forgot your password?</a></button> -->
</form>
<!-- end of switch to signup form -->

<br>
<br>





<br><br>
<?php require 'include/footer.php'; ?>


