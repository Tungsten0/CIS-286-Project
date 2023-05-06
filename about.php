<?php
  require "header.php";
?>

    <style>

        .aboutus{
            padding:0; 
            margin:0;
            box-sizing: border-box;
            text-decoration: none;
        }
        

        .team-members{
            display:flex; 
            justify-content: space-around;
            align-items: center; 
            min-height: 50v; 
            position: relative;
            background-color: rgb(13,31,79);
            color: #f2f2f2;
            padding: 3.5rem 0;

        }

        .members{
            display: grid; 
            grid-template-column: 1fr 1fr; 
            grid-template-rows: auto auto;
            gap: 20px; 
            padding: 2rem;
        }

        .members .member-card{
            padding:1rem 2.5rem;
            background-color: #fff;
            border-radius: 10px; 
            display: flex; 
            align-items: center; 
            justify-content: center; 
            flex-direction:column;
            position: relative; 
            box-shadow:5px 10px 10px rgba(0,0,0,0.6);
            transition: 0.5s;

        }

        .member-card img{
            border-radius:50%;
            object-fit: cover;
        }

        .member-card h2{
            text-align: center;
            color:#222;
            font-weight:400;
            font-size: 1.2rem;
            margin: 1rem;
        }

        .member-card h5{
            text-align: center;
            color:#222;
            font-weight:400;
            font-size: 1.2rem;
            background-color: #fdfdfd;
            padding: 5px 10px;
            border-radius: 30px;
            margin:5px;
        }

        .content{
            max-width: 700px;
        }

        .content h1{
            font-size: 3.5rem;
            color: #fff;
            margin:1.3rem;
        }

        .content h3{
            font-size: 24px;
            color: #fff;
            margin:1.3rem;
        }

        .content p{
            color: #41258f;
            font-size: 18px;
            margin-bottom: 1rem;
        }
    
    </style>
    <main style="background-color: #200174;">

    <div class="aboutus">
        <!--top text and description-->
    <div class ="team-members">
        <div class = "members">
            <div class="member-card">
                <img src="media/Head Programmer.png" alt="Head-Programmer Icon";
                <h2>Marco Lee-Shi</h2>
                <h5>Head Programmer </h5>
            </div>
        </div>
    </div>

    <div class ="team-members">
        <div class = "members">
            <div class="member-card">
                <img src="media/Head Researcher.png" alt="Head-Researcher Icon";
                <h2>Leanna Guitterez</h2>
                <h5>Head Researcher </h5>
            </div>
        </div>
    </div>

    <div class ="team-members">
        <div class = "members">
            <div class="member-card">
                <img src="media/designer.png" alt="UI-Designer Icon";
                <h2>Marco Lee-Shi</h2>
                <h5>UI Designer </h5>
            </div>
        </div>
    </div>

        <div class="content">
            <h1>CIS -286 Project</h1>
            <p>This assessment affords you the opportunity to put 
            into practice the concepts and technologies learned in class by tackling a "real-world" 
            project. The task was to design and develop a web application using PHP that caters to
            the academic programs of SJCJC. </p>
            
            <h3>Individual Contribution</h3>
            <p >Head Programmer: Is responsible for leading and managing the team of the project. He oversaw the development process, ensure that the code is of high quality, and ensure that the project meets the necessary technical specifications.</p>

            <p>Head Researcher: Is responsible for overseeing the reasearch , and leading the research and development of the project. She identified and analyzed the information for this project and compiled and present her findings in an organized manner. </p>

            <p >UI Designer: Is responsible for designing the visual layout and interaction of the project. She creates user-centered deigns that are both visually appealing and intuitive to use.</p>



            <h3>Group Contribution</h3>
            <p>The group members collaborated to validate the data displayed on the website and stored in the databases. They ensured that the data was accurate, consistent, and up-to-date. They also conducted several tests to validate the security controls and ensure that the system was robust and efficient, with high user-friendliness. The group members worked together to analyze the test results and implement necessary changes to improve the system's overall performance and usability.</p>
        </div>


    </div>

    <br>
</main>


<?php
  require "footer.php";
?>