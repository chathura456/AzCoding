<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="home page.css">
    
    
</head>
<body>

    <div class="head"><!--Navigation Bar create-->

        <ul>

            <div class="dropdown" ><li><button id="logo"></button></li></div>
            <div class="dropdown"><li><button><a href="#">Home</a></button></li></div>
            <div class="dropdown">
            <li><button class="dropbtn" id="1"><a href="#">Category  <i class="fa fa-caret-down"></i></a></button></li>
            <div class="dropdown-content">
                <a href="category-branch/Cprogramming.html">C Programming</a>
                <a href="#">C++</a>
                <a href="#">HTML</a>
                <a href="#">CSS</a>
                <a href="#">JAVA</a>
            </div>
        </div>

        <div class="dropdown">
            <li><button class="dropbtn" id="1"><a href="#">Recources  <i class="fa fa-caret-down"></i></a></button></li>
            <div class="dropdown-content">
                <a href="#">YouTube</a>
                <a href="https://www.w3schools.com/">W3School</a>
                <a href="https://github.com/">GitHub</a>
                <a href="https://www.codecademy.com/">CodeAcademy</a>
            </div>
        </div>

        <div class="dropdown">
            <li><button class="dropbtn" id="1"><a href="#">Community <i class="fa fa-caret-down"></i></a></button></li>
            <div class="dropdown-content">
                <a href="#">Q & A</a>
                <a href="ourteam.php">Our Team</a>
                
            </div>
        </div>
            
            <div class="dropdown"><li><button><a href="community-branch/downloads.html">Downloads</a></button></li></div>
            
        </ul>
    </div><!--End of the nav bar-->

    
<center>
<div class="bgcolor">
    <!--Slider create-->
    <div class="slider">
   
        <figure>

            <div class="slide"><img src="home-images/2.jpg" alt=""></div>
            <div class="slide"><img src="images/13.jpg" alt=""></div>
            <div class="slide"><img src="images/14.jpg" alt=""></div> 
            <div class="slide"><img src="images/12.jpg" alt=""></div>
            
            <div class="slide"><img src="images/11.jpeg" alt=""></div>
            
        </figure>
    </div>
<!--End of the Slider-->

<hr id="hr1"></center>
<div class="learn1">
<h1>Learn Programming</h1>



<!--Category photos and links-->
<div class="Cprograming"><a href="category-branch/Cprogramming.html">
    <div class="learn" >Learn More..</div></a>
</div>
<div class="html"><a href="category-branch/htmlsession.html">
    <div class="learn">Learn More..</div></a>
</div>
<div class="css"><a href="category-branch/css.html">
    <div class="learn">Learn More..</div></a>
</div>
<div class="java"><a href="category-branch/java.html">
    <div class="learn">Learn More..</div></a>
    
</div>

<div class="footer"><p>Copyright &copy; AzCoding 2021</p></div>
</div>
 <!-- Option 1: Bootstrap Bundle with Popper -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
