<!-- footer -->
<!-- //////////////////////////////// -->
<!-- Remove the container if you want to extend the Footer to full width. -->
<div class="container-fluid">
    <!-- Footer -->
    <footer class="text-center text-lg-start text-white" style="background-color: #051D40">
        <!-- Grid container -->
        <div class="container p-4 pb-0">
            <!-- Section: Links -->
            <section class="">
                <!--Grid row-->
                <div class="row">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                        <!-- <h6 class="text-uppercase mb-4 font-weight-bold">
              Luxury Furnitue
            </h6> --><img style="margin-top:-40px;" class="logo1" src="images/footer.png" />
            <br><br>
                       

                    </div>
                    <!-- Grid column -->

                    <hr class="w-100 clearfix d-md-none" />

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold text-white">Take a look</h6>
                        <p>
                            <a href="./index.php" class="text-white">Home</a>
                        </p>
                        <p>
                            <a href="./main.php" class="text-white">Aqaba</a>
                        </p>
                        <p>
                            <a href="./about.php" class="text-white">About us</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <hr class="w-100 clearfix d-md-none" />

                    <!-- Grid column -->
                    <hr class="w-100 clearfix d-md-none" />

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold text-white">Contact</h6>
                        <p><i class="fas fa-home mr-3"></i>Aqaba</p>
                        <p><i class="fas fa-envelope mr-3"></i> aqabaforyou@gmail.com</p>
                        <p><i class="fas fa-phone mr-3"></i> +962 773298642</p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="text-uppercase mb-4 font-weight-bold text-white">Follow us</h6>

                        <!-- Facebook -->
                        <a class="btn btn-primary btn-floating m-1" style="background-color: #3b5998" href="" role="button" target="_blank"><i class="fab fa-facebook-f"></i></a>

                        <!-- Twitter -->
                        <a class="btn btn-primary btn-floating m-1" style="background-color: #55acee" href="" role="button" target="_blank"><i class="fab fa-twitter"></i></a>

                        <!-- Google -->
                        <a class="btn btn-primary btn-floating m-1" style="background-color: #dd4b39" href="" role="button" target="_blank"><i class="fab fa-google"></i></a>

                        <!-- Instagram -->
                        <a class="btn btn-primary btn-floating m-1" style="background-color: #ac2bac" href="" role="button" target="_blank"><i class="fab fa-instagram"></i></a>

                        <!-- Linkedin -->
                        <a class="btn btn-primary btn-floating m-1" style="background-color: #0082ca" href="#!" role="button"><i class="fab fa-linkedin-in" target="_blank"></i></a>
                        <!-- Github -->
                        <a class="btn btn-primary btn-floating m-1" style="background-color:#E60023" href="" role="button" target="_blank"><i class="fa-brands fa-pinterest-p"></i></a>
                    </div>
                </div>
                <!--Grid row-->
            </section>
            <!-- Section: Links -->
        </div>
        <!-- Grid container -->

        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: #051D40">
            © 2022 Copyright:
            <a class="text-white" href=" " target="_blank">AQABA FOR YOU</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->
</div>
<!-- End of .container -->


<!-- /////////////////////////////// -->
<!-- end footer -->
</div>

</div>

<div class="overlay"></div>

<!-- Javascript files-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery-3.0.0.min.js"></script>
<!-- sidebar -->
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/custom.js"></script>
<script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        $("#sidebar").mCustomScrollbar({
            theme: "minimal"
        });

        $('#dismiss, .overlay').on('click', function() {
            $('#sidebar').removeClass('active');
            $('.overlay').removeClass('active');
        });

        $('#sidebarCollapse').on('click', function() {
            $('#sidebar').addClass('active');
            $('.overlay').addClass('active');
            $('.collapse.in').toggleClass('in');
            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });

    });
</script>
<script>
    // This example adds a marker to indicate the position of Aqaba,
    // Jordan.
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 11,
            center: {
                lat: 29.523985875711585,
                lng: 35.00098067068055
            },
        });

        var image = 'images/maps-and-flags.png';
        var beachMarker = new google.maps.Marker({
            position: {
                lat: 29.523985875711585,
                lng: 35.00098067068055
            },
            map: map,
            icon: image
        });
    }
</script>
<!-- google map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
<!-- end google map js -->
</body>

</html>