<?php
session_start();
include 'include/header.php'; ?>
<br>
<br>
<br>

<body>

  <div style="background-image: url('https://fshoq.com/images/blog/entry/jordan-5-aqaba-big-177.jpg'); 
  background-size: cover; height:480px; padding-top:80px;margin-top:-132px;">
  </div>
</body>

<div class="hr-theme-slash-2">
 
</div>

<!-- map -->
<div class="contact">
   <div class="container padddd">
      <div class="row">
         <div class="col-xl-12 col-lg-6 col-md-12 col-sm-12 padddd">
            <div class="map_section">
               <div id="map">
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<br>
<!-- end map -->

<div class="contactus">
   <div class="container-fluid">
      <div class="row">
         <div class="col-md-8 offset-md-2">
            <div class="title">
               <h2 style="color:#051D40;" class="contact">Contact Us</h2>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="container">
   <!--Section: Contact v.2-->
   <section class="mb-4">

      <!--Section heading-->
      <!--Section description-->
      <p class="text-center w-responsive mx-auto mb-5 p-contact"> Please do not hesitate to contact us directly with anything that is on your mind</p>

      <div class="row">

         <!--Grid column-->
         <div class="col-md-9 mb-md-0 mb-5">
            <form id="contact-form" name="contact-form" action="" method="POST">

               <!--Grid row-->
               <div class="row">

                  <!--Grid column-->
                  <div class="col-md-6">
                     <div class="md-form mb-0">
                        <input style="margin-left:100px;" type="text" placeholder="Name" id="name" name="name" class="form-control" required>
                        <label for="name" class=""> </label>
                     </div>
                  </div>
                  <!--Grid column-->

                  <!--Grid column-->
                  <div class="col-md-6">
                     <div class="md-form mb-0">
                        <input style="margin-left:125px;" type="text" placeholder="Email" id="email" name="email" class="form-control" required>
                        <label for="email" class=""></label>
                     </div>
                  </div>
                  <!--Grid column-->

               </div>
               <!--Grid row-->

               <!--Grid row-->
               <div class="row">
                  <div class="col-md-12">
                     <div class="md-form mb-0">
                        <input style="margin-left:100px;" type="text" placeholder="Subject" id="subject" name="subject" class="form-control" required>
                        <label for="subject" class=""></label>
                     </div>
                  </div>
               </div>
               <!--Grid row-->

               <!--Grid row-->
               <div class="row">

                  <!--Grid column-->
                  <div class="col-md-12">

                     <div class="md-form">
                        <textarea style="margin-left:100px;" type="text" placeholder="Your Subject" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                        <label  for="message"></label>
                     </div>

                  </div>
               </div>
               <!--Grid row-->

            </form>

            <div class="text-center text-md-left">
               <a style="margin-left:475px;background-color:blue; " class="btn btn-secondary btn-lg text-light" onclick="document.getElementById('contact-form').submit(alert('Thank You For Contacting With Us, We Will Get Back To You Shortly')
                );">Send</a>
            </div>
            <div class="status"></div>
         </div>
         <!--Grid column-->

         <!--Grid column-->
         <div class="col-md-3 text-center">
            <ul class="list-unstyled mb-0">
               <li><i class="fas fa--alt fa-2x"></i>
                  <p></p>
               </li>

               <li><i class="fas fa- mt-4 fa-2x"></i>
                  <p></p>
               </li>

               <li><i class="fas fa- mt-4 fa-2x"></i>
                  <p></p>
               </li>
            </ul>
         </div>
         <!--Grid column-->

      </div>

   </section>
   <!--Section: Contact v.2-->
</div>




<?php include 'include/footer.php'; ?>