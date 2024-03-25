<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.form-main{

}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body
{
 content: "";
  position: static;
  top: 0px;
  right: 0px;
  bottom: 0px;
  left: 0px;
  background-image:url('https://wallpapercave.com/wp/wp9619694.jpg');
  background-size: cover;
  
  }
  
.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.0);
  display: flex;
  justify-content: center;
  align-items: center;
}
.overlay h1 {
  color: white;
  font-family: New Times Roman;
  font-size: 18px;
}
 .link {
  display: block;
  width: 200px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  background-color: white;
  color: white;
  border-radius: 5px;
  text-decoration: none;
  font-family: Arial, sans-serif;
  font-size: 16px;
  font-weight: bold;
  text-transform: uppercase;
  transition: background-color 0.3s ease;
  text-decoration: none;
}

.link:hover {
  background-color: lightblue;
}
</style>
</head>
<body class="bck">

<h1><center> PET Clinic World </center></h1>
<div class="container">
<div class="overlay">
<form action="home" method="post" >
<div class="link">
<a href="Home.jsp">Home</a></div>
<div class="link">
<a href="login.jsp">Login</a></div>
<div class="link">
<a href="insertpage.jsp">Register</a></div>
<div class="link">
<a href="/getall">Records of Pet</a></div>

</form>
</div>
</div>

</body>
</html>