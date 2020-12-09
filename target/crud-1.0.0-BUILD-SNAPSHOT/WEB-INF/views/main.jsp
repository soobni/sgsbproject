<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <title>Cinema</title>
  <meta charset="utf-8">
  <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>
    body{
        font-family: 'Do Hyeon', sans-serif;
        font-size: large;
        font-weight: 100;
    }
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .nav .navbar-nav .icon-bar {
      margin-bottom: 0;
      border-radius: 0;
      
    }
    
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
    
    
    
  .carousel-inner img {
      width: 90%; /* Set width to 100% */
      margin: auto;
      
  }
  .container .text-center{
        margin : 0px;

  }
  .well{
        word-break: keep-all;
        }
    .dropdown-menu{
        background-color: blanchedalmond;
    }
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
        width: 70%;
        margin: auto;
    }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Cinema</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOMEPAGE</a></li>

        
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Genre <span class="badge"> 7 </span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="https://www.netflix.com/kr/browse/genre/6548">Comedy</a></li>
                <li><a href="https://www.netflix.com/kr/browse/genre/1365">Action</a></li>
                <li><a href="https://www.netflix.com/kr/browse/genre/8711">Horror</a></li>
                <li><a href="https://www.netflix.com/kr/browse/genre/5763">Drama</a></li>
                <li><a href="https://www.netflix.com/kr/browse/genre/8883">Romance</a></li>
                <li><a href="https://www.netflix.com/kr/browse/genre/1492">SF</a></li>
                <li class="divider"></li>
                <li><a href="https://www.netflix.com/kr/browse/genre/5685">POPULAR IN KOREA</a></li>
            </ul>
            
        </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="logout2"><a href="../login/logout">Logout</a></li>
            
        </ul>

        </div>
        
  </div>
</nav>



    
    
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="../resources/img/wallpaperbetter.jpg" alt="Image" >  
        
      </div>

      <div class="item">
        <img src="../resources/img/God.jpg" alt="Image" width="1500" height="700">
      </div>
        <div class="item">
            <div class="carousel-caption" style="color:darksalmon" >
                
               
              </div>
            <a href="https://www.youtube.com/watch?v=Vg8VH4BH6uo"><img src="../resources/img/1917.jpeg" width="2100" height="1000" alt="Image"></a>
            
        
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
<div class="text-center">

<img src="../resources/img/logo.png" height = "100">


</div>

<div class="container text-center"> 
    <h4>Recommend</h4>
    <div class="col-sm-3">
        <img src="../resources/img/catchme.png" class="img-responsive" style="width:100%" alt="Image">
        <p>Catch me If you can</p> 
      </div>
      <div class="col-sm-3"> 
        <img src="../resources/img/game.png" class="img-responsive" style="width:100%" alt="Image">
        <p>헝거게임</p>    
      </div>
  
      <div class="col-sm-3"> 
          <img src="../resources/img/little.png" class="img-responsive" style="width:100%" alt="Image">
          <p>little women</p>    
        </div>



    <div class="col-sm-3">
        <img src="../resources/img/lucky.png" class="img-responsive" style="width:100%" alt="Image">
        <p>lucky</p> 
      </div>
      <div class="col-sm-3"> 
        <img src="../resources/img/hide.png" class="img-responsive" style="width:100%" alt="Image">
        <p>숨바꼭질</p>    
      </div>
  
      <div class="col-sm-3"> 
          <img src="../resources/img/castle.png" class="img-responsive" style="width:100%" alt="Image">
          <p>하울의 움직이는 성 </p>    
        </div>
              <div class="col-sm-3"> 
        <img src="../resources/img/spider.png" class="img-responsive" style="width:100%" alt="Image">
        <p>스파이더 맨</p>    
      </div>
  
      <div class="col-sm-3"> 
          <img src="../resources/img/note.png" class="img-responsive" style="width:100%" alt="Image">
          <p>노트북</p>    
        </div>
        

</div>



   

<footer class="container-fluid text-center">
  <p>made by Cinema</p>
<div class="pagination pagination-lg">
    <p>↓ You can watch these movies here ↓ </p> 
    <ul class="pagination">
      <li><a href="">«</a></li>
      <li><a href="https://www.youtube.com/">1</a></li>
      <li><a href="https://www.netflix.com/kr/">2</a></li>
      <li><a href="https://watcha.com/">3</a></li>
      <li><a href="http://www.tving.com/main.do">4</a></li>
      <li><a href="https://product.kt.com/wDic/productDetail.do?ItemCode=190">5</a></li>
      <li><a href="">»</a></li>
    </ul>
    
  </div>


  
</footer>

</body>
</html>