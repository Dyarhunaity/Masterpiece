<?php include 'config/connect.php';
session_start();?>

<?php include 'config/config.php';
$sql = "SELECT * from products p;";
$handle = $db->prepare($sql);
$handle->execute();
$getAllProducts = $handle->fetchAll(PDO::FETCH_ASSOC);

if (isset($_POST['singalProduct'])) {
    $_SESSION['product_id']=$_POST['id_value'];
    header('location: single-product.php');
}
include 'include/header.php'; ?>
<br>

<style>
    body{
    background-color:#FFFFFF;
}
</style>
  
<section class="slider_section">
    <div class="banner_main header-bg">
        <div class="container-fluid">
        
            <div style="margin-top:-55px;  height: 800px; background: url(https://media-exp1.licdn.com/dms/image/C4D1BAQHPdCug5wSO7Q/company-background_10000/0/1597565414556?e=2147483647&v=beta&t=wlIan7n-GukItPOFQNkg-dWSD6iAaW4riWncE4rwBUM" ); class="row">
            
                <div  class="col-xl-6 col-lg-6 col-md-6 col-sm-12 mapimg">
                    <div class="text-bg text-h1">
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>  <h1 style="margin-bottom: -60px; margin-left: 28%; color:white; font-size:75px;" >Explore<br> <strong style="color:#fff" class="black_bold">Aqaba </strong>Now.<br></h1>
                        <p style=" font-size: 17px; margin-left: 28%; color:white; ">We are committed to offer you the best experience by combining our energy and enthusiasm with you. </p>
                        <a style="margin-left: 28%;background: #ff8100; color:white;  box-shadow: #fff -7px 7px 0px -1px; " href="main.php">Explore Now<i class='fa fa-angle-right'></i></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="text-img">
                        <br>
                        <br>
                        <br>
                        <!-- <figure><img src="" id="headerimg"/></figure> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</section>



<!-- end header -->
<!-- trending -->
<br>
<br>
<!-- <i style="color:; margin-left:22%;" class="fa fa-cogs fa-4x"><h3 style="margin-left: 70%;margin-top: -30%;font-size: 50%;">Services </h3></i> -->


<span style="margin-left:375px;" class="title-icon pull-center"><i style="color:blue;" class="fa fa-cogs fa-4x"></i></span>
<h1 style="font-family:georgia,garamond,serif; font-size:43px; margin-top:-50px; margin-left:450px;">Service We Provide</h1>			
<p style="color:gray; margin-left:460px; margin-top:-10px;">A Quality Experienced Team With 4 Years Experience</p>

<br>
<br>
<br>

<span class="fa-stack fa-2x">
<span style="margin-left:495px;" class="title-icon pull-center"><i style="color:blue;" class="fa fa-tachometer fa-2x"></i></span>
<h1 style=" font-family:georgia,garamond,serif; font-size:23px; margin-top: 8px; margin-left:495px;">24/7 <span style="margin-left:-20px;"> concierge</span></h1>			
<p style="font-size:18px; margin-left:430px; width: 500000px;">Available round-the-clock,</p>
<p style="font-size:18px; margin-left:430px; width: 500000px; margin-top:-45px">your personal concierge</p>
<p style="font-size:18px; margin-left:430px; width: 500000px; margin-top:-45px">will handle all the details.</p>

<!-- <p style="font-size:13px; color:gray; margin-left:400px; margin-top:-10px;">Available round-the-clock, your personal concierge </p> -->

</span>



<span class="fa-stack fa-2x">
<span style="margin-left:715px;" class="title-icon pull-center"><i style="color:blue;" class="fa fa-street-view fa-2x"></i></span>
<h1 style=" font-family:georgia,garamond,serif; font-size:23px; margin-top: 8px; margin-left:705px;">Diverse <span style="margin-left:-20px;"> Destinations</span></h1>			
<p style="font-size:18px; margin-left:650px; width: 500000px;">there is potentially a much </p>
<p style="font-size:18px; margin-left:650px; width: 500000px; margin-top:-45px"> more impactful upside to </p>
<p style="font-size:18px; margin-left:650px; width: 500000px; margin-top:-45px">diverse travel. And when </p>
<p style="font-size:18px; margin-left:650px; width: 500000px; margin-top:-45px"> we state “diverse,” we mean it. </p>
<!-- <p style="font-size:13px; color:gray; margin-left:400px; margin-top:-10px;">Available round-the-clock, your personal concierge </p> -->
</span>



<span class="fa-stack fa-2x">
<span style="margin-left:945px;" class="title-icon pull-center"><i style="color:blue;" class="fa fa-angle-double-down fa-2x"></i></span>
<h1 style=" font-family:georgia,garamond,serif; font-size:23px; margin-top: 8px; margin-left:915px;">Beautifull <span style="margin-left:15px;"> Places</span> </h1>			
<p style="font-size:18px; margin-left:875px; width: 500000px;">See with your own eyes </p>
<p style="font-size:18px; margin-left:875px; width: 500000px; margin-top:-45px"> our most beautiful sites.</p>

<!-- <p style="font-size:13px; color:gray; margin-left:400px; margin-top:-10px;">Available round-the-clock, your personal concierge </p> -->
</span>



<span class="fa-stack fa-2x">
<span style="margin-left:1150px;" class="title-icon pull-center"><i style="color:blue;" class="fa-solid fa-envelope-o fa-2x"></i></span>
<h1 style=" font-family:georgia,garamond,serif; font-size:23px; margin-top: 8px; margin-left:1145px;">Instant <span style="margin-left:7px;"> Help</span> </h1>			
<p style="font-size:18px; margin-left:1100px; width: 500000px;">Call for help and tell  </p>
<p style="font-size:18px; margin-left:1100px; width: 500000px; margin-top:-45px"> us  what the problem is. </p>

<!-- <p style="font-size:13px; color:gray; margin-left:400px; margin-top:-10px;">Available round-the-clock, your personal concierge </p> -->
</span>


<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>




<span style="margin-left:375px;" class="title-icon pull-center"><i style="color:blue;" class="fa fa-heart-o fa-4x"></i></span>
<h1 style="font-family:georgia,garamond,serif; font-size:43px; margin-top:-50px; margin-left:450px;">AQABA</h1>			
<p style="color:gray; margin-left:460px; margin-top:-10px;"></p>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
  
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}


</style>
</head>
<body>

<!-- MAIN (Center website) -->
<div class="main">



<div style="margin-left:400px;" id="myBtnContainer">
<br>


  <button style="background-color:blue; color:white;" class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button style="background-color:blue; color:white;" class="btn" onclick="filterSelection('activities')"> Activities</button>
  <button style="background-color:blue; color:white;" class="btn" onclick="filterSelection('tours')"> Tours</button>
  <button style="background-color:blue; color:white;" class="btn" onclick="filterSelection('culture')"> Culture & History </button>
</div>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column activities">
    <div class="content">
      <img src="images/activities-cate/Flyboard.jpg" alt="Mountains" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
  <div class="column activities">
    <div class="content">
    <img src="images/activities-cate/Banana-Ride.jpg" alt="Lights" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
  <div class="column activities">
    <div class="content">
    <img style="hieght:20px;" src="images/activities-cate/diving.jpg" alt="activities" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
  
  <div class="column tours">
    <div class="content">
      <img style="height:420px;" src="images/tours-cate/wadi.jpg" alt="Car" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
  <div class="column tours">
    <div class="content">
    <img style="height:420px;" src="images/tours-cate/city.jpg" alt="Car" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
  <div class="column tours">
    <div class="content">
    <img src="images/tours-cate/bus.jpg" alt="Car" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>

  <div class="column culture">
    <div class="content">
      <img src="images/culture-cate/lorance.jpg" alt="Car" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
  <div class="column culture">
    <div class="content">
    <img src="images/culture-cate/sand.jpg" alt="Car" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
  <div class="column culture">
    <div class="content">
    <img src="images/culture-cate/soviener.jpg" alt="Car" style="width:100%">
      <h4></h4>
      <p></p>
    </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>

<!-- end trending -->

<!-- discount -->
<div class="container">
    <!-- <div id="myCarousel" class="carousel slide banner_Client" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>  -->
    <!-- <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="container">
                <div class="carousel-caption text carsol">
                    <div class="row">
                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                            <div class="img_bg"> -->
                                <!-- <h3 id="">Up To 10% DISCOUNT<br> <strong class="black_nolmal">the latest collection</strong></h3> -->
                            <!-- </div>
                        </div>
                        
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                            <div class="img_bg"> -->
                                <!-- <figure><img src="https://i.gifer.com/HZ4J.gif" /></figure> -->
                            <!-- </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div> -->
    <!-- </div> -->
</div>
<br>
<!--start sale show-->
<div class="container">
<div class="row">

<?php foreach($getAllProducts as $product): ?>
<?php    $imgUrl =$product['image'];

    // if ($product['sale'] == 1 && $product['id'] <= 10){

    //  echo "<div class='col-md-4  mt-2'>
    //             <div class='card prodheigh'>
    //                  <a href='single-product.php?product=".$product['id']."'>
    //                     <img class='card-img-top' src='".$imgUrl."' alt='".$product['pname']."'>
    //                 </a>

    //                 <div class='card-body'>
    //                     <h4 class='card-title'>
    //                         <a href='single-product.php?product=".$product['id']."'>
    //                             ".$product['pname']."
    //                         </a>

    //                         </h4><span class='product_price'>JD".$product['new_price']."</span>
    //                             <span class ='old-price' STYLE='text-decoration:line-through'>JD".$product['price']."</span>
    //                             <p class='card-text'>
    //                         <a href='single-product.php?product=".$product['id']."' class='btn btn-secondary btn-sm'>
    //                             View
    //                         </a>
    //                     </p>
    //                 </div>
    //             </div>
    //         </div>";
    // }
?>
<?php endforeach; ?>
</div>
</div>
<br><br>

<!-- End sale show -->
<!-- end discount -->
<!--start slide show-->




<section id="image-block" class="image-block no-padding">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 ts-padding" style="height:650px;background:url(https://www.wideworldtrips.com/wp-content/uploads/2020/05/places-to-visit-in-aqaba.jpg) 50% 50% / cover no-repeat;">
				</div>
				<div style="background-color:#F5F5F5" class="col-md-6 ts-padding img-block-right">
					<div class="img-block-head text-center">
						<h4 style="margin-top:65px;">KNOW MORE ABOUT AQABA</h4>
						<h1 style="font-size:40px; margin-top:20px; font-family: 'JaapokkiRegular'; color:#323232;">WHY CHOOSE AQABA</h1>
						<p>On the shores of the Red Sea, Aqaba is a wonderful beach destination. What is more, it has something for everyone. Those in search of R&R can head to Berenice Beach Club, with a wonderful resort-style beach and loads of activities on offer, from snorkelling, to jet skiing and kite surfing .</p>
						
					</div>
<br>
<br>
					<div class="gap-30"></div>

					<div class="image-block-content">
						<span class="feature-icon pull-left" ><i style="color:blue; margin-left:80px;" class="fa-solid fa-shield fa-4x"></i></span>
						<div class="feature-content">
							<h2 style="margin-left:175px; font-family: 'JaapokkiRegular';">Atmosphere and Safety</h2>
							<p  style="margin-left:175px;" >Aqaba folk in particular are very courteous and friendly.</p>
						</div>
					</div><!--/ End 1st block -->
<br>
					<div class="image-block-content">
						<span class="feature-icon pull-left" ><i style="color:blue; margin-left:80px;" class="fa fa-umbrella-beach fa-4x"></i></span>
						<div class="feature-content">
							<h2 style="margin-left:175px; font-family: 'JaapokkiRegular';">Beach Life</h2>
							<p  style="margin-left:175px;">On the shores of the Red Sea, Aqaba is a wonderful beach destination. What is more, it has something for everyone. </p> 
						</div>
					</div><!--/ End 1st block -->
<br>
					<div class="image-block-content">
						<span class="feature-icon pull-left" ><i style="color:blue; margin-left:80px;" class="fa fa-cloud fa-4x"></i></span>
						<div class="feature-content">
							<h2 style="margin-left:175px; font-family: 'JaapokkiRegular'; ">Perfect Weather</h2>
							<p  style="margin-left:175px;">Aqaba has distinguished beauty and awesome natural features in addition to perfect weather which gives the city a warm climate most of the year.</p>
						</div>
					</div><!--/ End 1st block -->

				</div>
			</div>
		</div>
	</section><!--/ Image block end -->



<br>
<br>
<br>
<br>
<br>
<br>








<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style="height:1000px;" class="d-block w-100" src="./images/sliderphoto/wadi-slider.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img style="height:1000px;" class="d-block w-100" src="./images/sliderphoto/ayla.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="./images/sliderphoto/tank.jpg" alt="Third slide">
    </div>

    <div class="carousel-item">
      <img class="d-block w-100" src="./images/sliderphoto/street.jpg" alt="ffourth slide">
    </div>

  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br>
<br>
<br>
<br>
<!-- end slideshow -->
<!-- 
<div class="card mb-3">
  <img src="https://i.gifer.com/HZ4J.gif" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">50% DISCOUNT</h5>
    <p class="card-text">the latest collection</p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div> -->
<!-- footer -->


<?php include 'include/footer.php'; ?>