<?php
  require "header.php";
?>

    <!--margin-top cus header will always take up around 100px of the top screen-->
    <main>
        <!-- Include Bootstrap 5 CSS and JavaScript files -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.js"></script>

        <style> 
        .toast {
            position: fixed;
            top: 100px;
            right: 10px;
            z-index: 9999;
        }
        </style>

        <div>
            <?php
                // popup(toast): if is true then logged in - else logged out
                if(isset($_SESSION['userid'])) {
                    echo '
                    <div class="toast align-items-center" style="width:200px;" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="d-flex">
                            <div class="toast-body">
                                <p style="margin-bottom:-3px;" class="login-status"> You are logged in </p>
                            </div>
                            <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                    </div>
                        ';
                } else {
                    echo '
                    <div class="toast align-items-center" style="width:200px;" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="d-flex">
                            <div class="toast-body">
                                <p style="margin-bottom:-3px;" class="login-status"> You are logged out </p>
                            </div>
                            <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                    </div>
                        ';
                }
            ?>
        </div>

        <script>
            // Initialize the 'you are logged in/out' Toast object and show it
            var toastEl = document.querySelector('.toast')
            var toast = new bootstrap.Toast(toastEl)
            toast.show()
	    </script>
        
        <!--Infocard w/ fixed background-->
        <section>
            <div class="container-fluid" style="background-image: url('media/schoolgate.png'); height: 750px; 
            background-attachment: fixed, fixed, fixed, scroll; background-repeat: no-repeat; background-position: center center">

                <div class="row justify-content-start align-items-center h-100">
                    <div class="col-md-6">
                        <div class="card" style="width: 500px; height: 325px; position: relative; left: 50px; background-color: #7a85b3;">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #200174; font-size: 350%; font-weight: bold;">St. John's College Junior College</h5>
                                <p class="card-text" style="font-size: xx-large; color: #200174;">
                                    Welcomes everyone, from students, parents, and to teachers. 
                                    <a href="about.php" class="btn btn-primary" style="background-color: white; color: black;">About Us</a> 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>  
        </section>

        <div class="p-3" style="height: 40px; background-color: #200174;"></div>

        <!--Departments and Tracks Info Cards-->

        
        
        <section class="container" style="margin-top: 10px;">

            <div class="card" style="margin-bottom:15px;">
                <div class="card-body">
                    <h5 class="card-title" style="color: #200174;">Computer Science Department</h5>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="program-list.php?#CS" style="text-decoration: none;">Computer Science Track</a></li>
                </ul>
            </div>

            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title" style="color: #200174;">Humanities and Education Department</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="program-list.php?#CGD" style="text-decoration: none;">Comercial Graphic Design Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#EDU" style="text-decoration: none;">Education Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#HISLIT" style="text-decoration: none;">History & Literature Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#LA" style="text-decoration: none;">Liberal Arts Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#FA" style="text-decoration: none;">Fine Arts & Music</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title" style="color: #200174;">Math & Science Department</h5>
                        </div>
                        <ul class="list-group list-group-flush" style="text-decoration: none;">
                            <li class="list-group-item"><a href="program-list.php?#BIOCHE" style="text-decoration: none;">Biology & Chemistry Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#MTHPHY" style="text-decoration: none;">Math & Physics Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#IS" style="text-decoration: none;">Interdisciplinary Science Track</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title" style="color: #200174;">Social Sciences Department</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="program-list.php?#HISECO" style="text-decoration: none;">History & Economics Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#SOCPSY" style="text-decoration: none;">Sociology & Psychology Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#CJ" style="text-decoration: none;">Criminal Justice & Law Track</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title" style="color: #200174;">Business Department</h5>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="program-list.php?#BA" style="text-decoration: none;">Business Administration Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#TM" style="text-decoration: none;">Tourism Management Track</a></li>
                            <li class="list-group-item"><a href="program-list.php?#ENT" style="text-decoration: none;">Entrepreneurship Track</a></li>
                        </ul>
                    </div>
                </div>
                </div>
                <div class="col">
                    
                </div>
            </div>
        </section>

        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    </main>
    
<?php
  require "footer.php";
?>