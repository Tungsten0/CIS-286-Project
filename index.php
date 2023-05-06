<?php
  require "header.php";
?>

        <!-- Include Bootstrap 5 CSS and JavaScript files -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.js"></script>

        <style> 
        body {
            margin: 0px;
            padding: 0px;
        }
        .myimg {
            height: 300px;
            width: 300px;
            border-radius: 3px;
        }
        .mycard {
            height: 300px;
            width: 300px;
            box-shadow: 5px 5px 20px black;
            overflow: hidden;
        }
        .intro {
            height: 50px;
            width: 300px;
            box-sizing: border-box;
            padding: 6px;
            position: absolute;
            background: rgb(27, 27, 27, .5);
            color: white;
            bottom: -260px;
            transition: .5s;
        }
        .content {
            font-size: 15px;
            margin: 5px;
            visibility: hidden;
            opacity: 0;
        }
        .mycard:hover {
            cursor: pointer;
        }
        .mycard:hover .intro {
            height: 200px;
            bottom: -260px;
            background: black;
        }
        .mycard:hover .content {
            opacity: 1;
            visibility: visible;
        }

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
                    <div class="toast align-items-center" style="width:175px; top: 200px;" role="alert" aria-live="assertive" aria-atomic="true">
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
                    <div class="toast align-items-center" style="width:175px;" role="alert" aria-live="assertive" aria-atomic="true">
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
                        <div class="card" style="width: 500px; height: 325px; position: relative; left: 50px; background-color: #200174;">
                            <div class="card-body">
                                <h5 class="card-title" style="color: white; font-size: 350%; font-weight: bold;">St. John's College Junior College</h5>
                                <p class="card-text" style="font-size: xx-large; color: white;">
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

        
        
        <section class="container-fluid" style="margin-top: 10px; background: witesmoke;">
        <div class="row mb-3 justify-content-center">
            <div class="col-2 themed-grid-col">
                <a href="program-list.php?#CS" style="text-decoration: none;">
                    <div class="mycard">
                        <img class="myimg" src="media/index/computerscience.jpg" alt="computer science">
                        <div class="intro">
                            <h4>Computer Science</h4>
                            <p class="content">Computer Science Track</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-2 themed-grid-col">
                <a href="program-list.php?#MTHSCI" style="text-decoration: none;">
                    <div class="mycard">
                        <img class="myimg" src="media/index/mathscience.jpg" alt="math & science">
                        <div class="intro">
                            <h4>Math & Science</h4>
                            <p class="content">Math & Physics Track</p>
                            <p class="content">Biology & Chemistry Track</p>
                            <p class="content">Interdisciplinary Science Track</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-2 themed-grid-col">
                <a href="program-list.php?#SOCSCI" style="text-decoration: none;">
                    <div class="mycard">
                        <img class="myimg" src="media/index/socialscience.jpg" alt="social sciences">
                        <div class="intro">
                            <h4>Social Sciences</h4>
                            <p class="content">History & Economics Track</p>
                            <p class="content">Sociology & Psychology Track</p>
                            <p class="content">Criminal Justice & Law Track</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-2 themed-grid-col">
                <a href="program-list.php?#HUMAN" style="text-decoration: none;">
                    <div class="mycard">
                        <img class="myimg" src="media/index/humanitieseducation.jpg" alt="humanities and education">
                        <div class="intro">
                            <h4>Humanities and Education</h4>
                            <p class="content">Education Track</p>
                            <p class="content">Fine Arts & Music</p>
                            <p class="content">Liberal Arts Track</p>
                            <p class="content">History & Literature Track</p>
                            <p class="content">Comercial Graphic Design Track</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-2 themed-grid-col">
                <a href="program-list.php?#BUS" style="text-decoration: none;">
                    <div class="mycard">
                        <img class="myimg" src="media/index/business.jpg" alt="business">
                        <div class="intro">
                            <h4>Business</h4>
                            <p class="content">Entrepreneurship Track</p>
                            <p class="content">ourism Management Track</p>
                            <p class="content">Business Administration Track</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
            
        </section>


    </main>
    
<?php
  require "footer.php";
?>