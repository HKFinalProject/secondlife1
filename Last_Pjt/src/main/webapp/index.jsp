<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

a { text-decoration:none }

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//code.jquery.com/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" type="text/css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" type="text/css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
 <div class="col-md-20" draggable="true" >
          <div class="btn-group" >
          <a href="#" class="btn btn-lg mx-1 btn-secondary">HOME</a>
          <a href="#" class="btn btn-lg mx-1 btn-secondary">공지사항</a>
            <button class="btn btn-lg mx-1 btn-secondary dropdown-toggle" data-toggle="dropdown">교육</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">온라인</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">오프라인</a>
            </div>
          </div>
          <div class="btn-group">
            <button class="btn btn-lg mx-1 btn-secondary dropdown-toggle" data-toggle="dropdown">운동</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">걷기</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">등산</a>
            </div>
          </div>
          <div class="btn-group">
            <button class="btn btn-lg mx-1 btn-secondary dropdown-toggle" data-toggle="dropdown">음식</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">건강식단</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">맛집</a>
            </div>
          </div>
          <div class="btn-group">
            <button class="btn btn-lg mx-1 btn-secondary dropdown-toggle" data-toggle="dropdown">여가</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">문화행사</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">도서관</a>
           <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">공원</a>
            <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">노인교실/경로당</a>
            </div>
          </div>
          <div class="btn-group">
            <a href="#" class="btn btn-lg mx-1 btn-secondary">자유게시판</a>
          </div>
        </div>
<div class="py-5 text-white bg-dark" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p align="right"><a href="list.do" class="btn btn-lg mx-1 btn-secondary">로그인[관리자]</a><br/></p>
          <p align="right"><a href="#" class="btn btn-lg mx-1 btn-secondary">회원가입</a></p><br/><br/>
        </div>
      </div>
      <div class="row">
        <div class="col-md-7 text-md-left text-center align-self-center my-5">
          <h3 class="display-1">메인</h3>
          <p class="lead">공지사항</p>
        </div>
        <div class="col-md-5">
          <div class="embed-responsive embed-responsive-4by3  rounded">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/i__1Z5a9Sak?autoplay=0" allowfullscreen=""> </iframe>
          </div>
        </div>
      </div>
    </div>
  </div>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://v40.pingendo.com/assets/4.0.0/default/theme.css" type="text/css"> </head>


  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>
</body>
</html>