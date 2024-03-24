<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  outline: none;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  padding: 10px;
  font-family: 'Poppins', sans-serif;
  background: linear-gradient(115deg, #56d8e4 10%, #9f01ea 90%);
}
.container{
  max-width: 800px;
  background: #fff;
  width: 800px;
  padding: 25px 40px 10px 40px;
  box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}
.container .text{
  text-align: center;
  font-size: 41px;
  font-weight: 600;
  font-family: 'Poppins', sans-serif;
  background: -webkit-linear-gradient(right, #56d8e4, #9f01ea, #56d8e4, #9f01ea);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
.container form{
  padding: 80px 0 0 0;
}
.container form .form-row{
  display: block;
  margin: 40px 0;
}
form .form-row .input-data{
  width: 200%;
  height: 40px;
  margin: 6px 20px;
  position: relative;
}

.input-data input,
.textarea textarea{
  display: block;
  width: 50%;
  height: 30%;
  border: none;
  font-size: 17px;
  border-bottom: 2px solid rgba(0,0,0, 0.12);
}
.input-data input:focus ~ label, .textarea textarea:focus ~ label,
.input-data input:valid ~ label, .textarea textarea:valid ~ label{
  transform: translateY(-20px);
  font-size: 14px;
  color: #3498db;
}

.input-data label{
  position: absolute;
  pointer-events: none;
  bottom: 50px;
  font-size: 13px;
  transition: all 0.3s ease;
}

.input-data .underline{
  position: absolute;
  bottom: 0;
  height: 2px;
  width: 100%;
}
.input-data .underline:before{
  position: absolute;
  content: "";
  height: 5px;
  width: 60%;
  background: #3498db;
  transform: scaleX(0);
  transform-origin: center;
  transition: transform 0.3s ease;
}
.input-data input:focus ~ .underline:before,
.input-data input:valid ~ .underline:before,
.textarea textarea:focus ~ .underline:before,
.textarea textarea:valid ~ .underline:before{
  transform: scale(1);
}
.submit-btn .input-data{
  overflow: hidden;
  height: 45px!important;
  width: 25%!important;
}
.submit-btn .input-data .inner{
  height: 100%;
  width: 300%;
  position: absolute;
  left: -100%;
  background: -webkit-linear-gradient(right, #56d8e4, #9f01ea, #56d8e4, #9f01ea);
  transition: all 0.4s;
}
.submit-btn .input-data:hover .inner{
  left: 0;
}
.submit-btn .input-data input{
  background: none;
  border: none;
  color: #fff;
  font-size: 17px;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 1px;
  cursor: pointer;
  position: relative;
  z-index: 2;
}
@media (max-width: 900px) {
  .container .text{
    font-size: 70px;
  }
  .container form{
    padding: 7px 0 0 0;
  }
  .container form .form-row{
    display: block;
  }
  form .form-row .input-data{
    margin: 75px 0!important;
  }
  .submit-btn .input-data{
    width: 50%!important;
  }
}

.button-36 {
  background-image: linear-gradient(92.88deg, #455EB5 9.16%, #5643CC 43.89%, #673FD7 64.72%);
  border-radius: 8px;
  border-style: none;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  flex-shrink: 0;
  font-family: "Inter UI","SF Pro Display",-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen,Ubuntu,Cantarell,"Open Sans","Helvetica Neue",sans-serif;
  font-size: 16px;
  font-weight: 500;
  height: 4rem;
  padding: 0 1.6rem;
  text-align: center;
  text-shadow: rgba(0, 0, 0, 0.25) 0 3px 8px;
  transition: all .5s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-36:hover {
  box-shadow: rgba(80, 63, 205, 0.5) 0 1px 30px;
  transition-duration: .1s;
}

@media (min-width: 768px) {
  .button-36 {
    padding: 0 2.6rem;
  }
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
      <div class="text">
         Form Submission
      </div>
      <form action="insert" method="post">
         <div class="form-row">
         
            <div class="input-data">
               <input type="text" name="petname" required>
               <div class="underline"></div>
               <label for="petname">Pet Name :</label>
            </div>
            
            <div class="input-data">
               <input type="text" name="petownername" required>
               <div class="underline"></div>
               <label for="">Pet Owner Name :</label>
            </div>
         
          <div class="input-data">
               <input type="text" name="doctorname" required>
               <div class="underline"></div>
               <label for="doctorname">Doctor Name :</label>
            </div>
         
         <!-- rate -->
         <div class="input-data">
               <input type="number" name="rate" required>
               <div class="underline"></div>
               <label for="rate">Rate :</label>
            </div>
            <!-- total rate -->
         <div class="input-data">
               <input type="number" name="totalrate" required>
               <div class="underline"></div>
               <label for="totalrate">Total Rate :</label>
            </div>
             <div class="form-row submit-btn">
                  <a href="petrecord.jsp" ><button class="button-36" role="button" >Submit</button></a>
               </div>
      </form>
      </div>
</body>
</html>