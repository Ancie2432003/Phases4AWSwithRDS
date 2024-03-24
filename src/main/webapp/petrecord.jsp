<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import="com.example.demo.*" %>
   <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table {border-collapse: collapse; font-family: helvetica}
td, th {border:  1px solid;
      padding: 10px;
      min-width: 200px;
      background: white;
      box-sizing: border-box;
      text-align: left;
}
.table-container {
  position: relative;
  max-height:  300px;
  width: 500px;
  overflow: scroll;
}
tr > :first-child {
  position: -webkit-sticky;
  position: sticky; 
  background: hsl(180, 50%, 70%);
  left: 0; 
}
/* don't do this */
tr > :first-child {
  box-shadow: inset 0px 1px black;
}

.button-27 {
  appearance: none;
  background-color: #000000;
  border: 2px solid #1A1A1A;
  border-radius: 15px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Roobert,-apple-system,BlinkMacSystemFont,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
  font-size: 16px;
  font-weight: 600;
  line-height: normal;
  margin: 0;
  min-height: 60px;
  min-width: 0;
  outline: none;
  padding: 16px 24px;
  text-align: center;
  text-decoration: none;
  transition: all 300ms cubic-bezier(.23, 1, 0.32, 1);
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  width: 100%;
  will-change: transform;
}

.button-27:disabled {
  pointer-events: none;
}

.button-27:hover {
  box-shadow: rgba(0, 0, 0, 0.25) 0 8px 15px;
  transform: translateY(-2px);
}

.button-27:active {
  box-shadow: none;
  transform: translateY(0);
}
</style>
<title>Insert title here</title>
</head>
<body><center>
<% 
List<Petname> list= (List<Petname>) request.getAttribute("list"); 
%>
<div class="table-horizontal-container">
<table border="1" class="unfixed-table">
<tr><th>Pet Id</th><th>Pet Owner Name</th><th>Pet Name</th><th>Rate</th><th>Total Rate</th><th>Delete</th><th>Edit</th><th>Book</th></tr>
<%for(Petname ss:list){ %>
<tr>
<td><%=ss.getId() %></td>
<td><%=ss.getOwnername() %></td>
<td><%=ss.getPetname() %></td>
<td><%= ss.getRate() %></td>
<td><%=ss.getTotalprice() %></td> 
<td><input type="button" value="Delete"></td>
<td><input type="button" value="Edit"></td>
<td><input type="button" value="Book"></td>
</tr>

<%} %>
</table>
<form action="/home" method="post">
<button class="button-27" role="button" click="Home.jsp">Got to Home</button>
</form>
</center>
</div>
</body>
</html>