<?php
include 'config/connect.php';


//switch page 
$checkemailexist=mysqli_fetch_all(mysqli_query($conn,'SELECT * FROM users'),MYSQLI_ASSOC);

// Register Validation function


// regular expressions
// $pwd_expression = "/(^[A-Z])(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/";
$pwd_expression = "/^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])(?=\S*[\W])\S*$/";
// $ps_regex = "/^[A-Z](?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])(?=\S*[\W])\S*$/";
$letters = "/(^[A-Z][a-z]+)(\s)([A-Z][a-z]+)(\s)([A-Z][a-z]+)(\s)([A-Z][a-z]+)/";
$filter = "/([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/";
$pfilter = "/[0-9]{10}/";
// $newLetters = "/(^[A-Z][a-z]+)/";
$newLetters = "/^[A-Za-z]+$/";

$fn = $ln = $em = $ad = $ps = $cps = $tl = $bd = $lp = $le = "none";

// define variables and set to empty values
$fnErr = $lnErr = $emailErr = $telErr = $adErr = $passwordErr = $cpasswordErr =  $dateErr = $lpErr = $leErr = "";

// validation function

if (isset($_POST["signup"])) {
    // echo 'taken';
    $bdate = $_POST["date"];
    $ndate = date("Y-m-d");
    $diff = date_diff(date_create($bdate), date_create($ndate));


    // for first name check
    if (empty($_POST["fName"])) {

        $fnErr = "please insert your first name ";
        $fn = "block";
    } else if (!preg_match($newLetters, $_POST["fName"])) {

        $fnErr = "First Name must contain alphabet characters";
        $fn = "block";
    }

    // for last name check
    else if (empty($_POST["lName"])) {

        $lnErr = "please insert your last name ";
        $ln = "block";
    } else if (!preg_match($newLetters, $_POST["lName"])) {
        $lnErr = "Last Name must contain alphabet characters";
        $ln = "block";
    }

     //for Email check  
     else if (empty($_POST["registerEmail"]))
     {
         $emailErr="Please insert your email";
         $em="block";
     }
     // for dublicate email check
    //  else if (!empty($_POST["registerEmail"]))
    //  {
    //    foreach ($checkemailexist as $key => $email){
    //      if ($_POST["registerEmail"] == $email['email']) {
    //        $emailErr="This Email already exist";
    //        $em="block";
    //        break;
    //      }
    //    }
    //  }
     else if (!preg_match($filter, $_POST["registerEmail"]))
     {
         $emailErr="Email should be like this: test@test.com";
         $em="block";
     }

    //for phone number check
    else if (empty($_POST["phoneNumber"])) {
        $telErr = "Please insert your phone number";
        $tl = "block";
    } else if (!preg_match($pfilter, $_POST["phoneNumber"])) {
        $telErr = "phone number should contain 14 digits only";
        $tl = "block";
    }

    //for city check 
    else if ($_POST["city"] == "Choose...") {
        $telErr = "Please insert your city";
        $tl = "block";
    }

    //for address check
    // else if (empty($_POST["address"])) {

    //     $adErr = "please insert your address ";
    //     $ad = "block";
    // }

    // for password check
    else if (empty($_POST["registerPass"])) {
        $passwordErr = "Please insert your Password";
        $ps = "block";
    } else if (!preg_match($pwd_expression, $_POST["registerPass"])) {
        $passwordErr = "Upper case, Lower case, Special character and Numeric letter are required in Password filed";
        $ps = "block";
    }

    // for confirmation password check
    else if (empty($_POST["registerConfPass"])) {
        $cpasswordErr = "Please insert your confirmation password";
        $cps = "block";
    } else if ($_POST["registerConfPass"] != $_POST["registerPass"]) {
        $cpasswordErr = "Password does not match";
        $cps = "block";
    }


    // for birth date check
    else if (empty($_POST["date"])) {
        $dateErr = "Please insert your birth date";
        $bd = "block";
    } else if ($diff->format('%y') < 18) {
        $dateErr = "You must be at least 18 years old";
        $bd = "block";
    } else {
        $fname = $_POST["fName"];
        $lname = $_POST["lName"];
        $email = $_POST["registerEmail"];
        $phone = $_POST["phoneNumber"];
        $city = $_POST['city'];
        $addres = $_POST['address'];
        $password =md5($_POST["registerPass"]) ;
        $bdate = $_POST["date"];
        $sqlr="INSERT INTO users (fname, lname, email, phone, city, addres, pass, bdate) 
                VALUES('$fname','$lname','$email','$phone','$city','$addres','$password','$bdate')";
        mysqli_query($conn, $sqlr);

        header("location: login.php");
    }
}

include 'include/header.php';
?>
<br>
<br>
<br>
<div class="hr-theme-slash-2">
   
</div>
<br>

<!-- <link rel="stylesheet" href="./css/sighnup.css">
<link rel="stylesheet" href="./css/"> -->
<style>
        body{
            background: url("https://img.buzzfeed.com/buzzfeed-static/static/2021-07/26/23/asset/c117b00ab084/sub-buzz-14569-1627342097-1.jpg" );
            background-repeat: no-repeat;
            
        }
     

    </style>
<!-- Sign Up form -->
<main class="regmain">
    <div>
        <br>
        <form class="needs-validation" action="register.php" method="POST" novalidate style="display:<?php echo $s2; ?> ;">
            <h2 style="text-align:center ; font-family: 'FontAwesome';
               font-weight: bolder; color:#051D40;">Sign Up form</h2>

            <div class="form-row">
                <div class="col-md-2 offset-md-4">
                    <label for="validationCustom01"></label>
                    <input type="text" class="form-control is-inavalid" id="validationCustom01" name="fName" placeholder="First Name" class="loginBox" value="<?php if (isset($_POST['fName'])) {
                                                                                                    echo $_POST['fName'];
                                                                                                } ?>" required>
                    <div class="invalid-feedback" style="display:<?php echo $fn ?>">
                        <?php echo $fnErr ?>
                    </div>
                </div>
                <div class="col-md-2 ">
                    <label for="validationCustom02"></label>
                    <input type="text" class="form-control is-inavalid" id="validationCustom02" name="lName" placeholder="Last Name" class="loginBox" value="<?php if (isset($_POST['lName'])) {
                                                                                                    echo $_POST['lName'];
                                                                                                } ?>" required>
                    <div class="invalid-feedback" style="display:<?php echo $ln ?>">
                        <?php echo $lnErr ?>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-4 offset-md-4">
                    <label for="validationemail"></label>
                    <div class="input-group">
                        <input style="margin-top:-20px;" type="email" class="form-control is-inavalid" id="validationemail" name="registerEmail" placeholder="Email" aria-describedby="inputGroupPrepend" class="loginBox" value="<?php if (isset($_POST['registerEmail'])) {
                                                                                                    echo $_POST['registerEmail'];
                                                                                                } ?>" required>
                        <div class="invalid-feedback" style="display:<?php echo $em ?>">
                            <?php echo $emailErr ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-4 offset-md-4">
                    <label for="validationemail"></label>
                    <div class="input-group">
                        <input type="number" class="form-control is-inavalid" id="validationemail" name="phoneNumber" placeholder="0777777777" aria-describedby="inputGroupPrepend" pattern="[0-9]{10}" class="loginBox" value="<?php if (isset($_POST['phoneNumber'])) {
                                                                                                    echo $_POST['phoneNumber'];
                                                                                                } ?>" required>
                        <div class="invalid-feedback" style="display:<?php echo $tl ?>">
                            <?php echo $telErr ?>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-md-4 offset-md-4">
                    <label for="inputState"></label>
                    <input id="inputState" name="city" placeholder="Country" class="form-control is-inavalid" style="height:7vh ;">
           
                    </input>
                </div>
            </div>
            
           
            <div class="form-row">
                <div class="col-md-2 offset-md-4">
                    <label for="validationpass"></label>
                    <input style="margin-top:-20px;" type="password" class="form-control is-inavalid" id="validationpass" name="registerPass" placeholder="Password" class="loginBox" required>
                    <div class="invalid-feedback" style="display:<?php echo $ps ?>">
                        <?php echo $passwordErr ?>
                    </div>
                </div>

                <div class="col-md-2 ">
                    <label for="validationConPass"> </label>
                    <input style="margin-top:-20px;" type="password" class="form-control is-inavalid" id="validationConPass" name="registerConfPass" placeholder="Confirm Password" class="loginBox" required>
                    <div class="invalid-feedback" style="display:<?php echo $cps ?>">
                        <?php echo $cpasswordErr ?>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-4 offset-md-4">
                    <label for="validationbdate"></label>
                    <div class="input-group">
                        <input style="margin-top:-20px;" type="date" class="form-control is-inavalid" id="validationbdate" name="date" placeholder="" aria-describedby="inputGroupPrepend" class="loginBox" value="<?php if (isset($_POST['date'])) {
                                                                                                    echo $_POST['date'];
                                                                                                } ?>" required>
                        <div class="invalid-feedback" style="display:<?php echo $bd ?>">
                            <?php echo $dateErr ?>
                        </div>
                    </div>
                </div>
            </div>

            <!-- <div class="form-group">
            <div class="form-check col-md-4 offset-md-4">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Agree to terms and conditions
      </label> -->
      <!-- <div class="invalid-feedback" style="display: -->
      <?php
    //    echo $us 
       ?>
       <!-- "> -->
        <?php
        //  echo $userErr 
        ?>
      <!-- </div>
    </div>
            </div> -->
            
            <!-- End Sign Up form -->
<br>
            <button type="submit" class="btn col-md-2 offset-md-4" name="signup" style="background-color:blue; color:white;"> Sign Up</button>
            <!-- switch to login form -->
            <form class="needs-validation" action="register.php" method="POST" novalidate style="display:<?php echo $s2; ?> ;">
                <button class="btn col-md-2 " type="submit" name="switch" style="background-color:white; "><a style="color:blue;" href="./login.php">Log In </a></button>
            </form>
            <!-- end of switch to login form -->
            <br><br>

        </form>

    </div>
</main>
<!-- end of switch to login form -->
<br><br>
<?php
require 'include/footer.php';
?>