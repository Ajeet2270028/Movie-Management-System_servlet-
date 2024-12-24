<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update movie</title>
<link rel="stylesheet" href="UpdateMovies.css">
</head>
<body>
<% ResultSet rs=(ResultSet) request.getAttribute("movie"); 
rs.next();
%>
 <section>
<h2>Enter The Details</h2>

<form action="save-update-movie" method="post">

  <input type="number" value="<%=rs.getInt(1) %>" name="movieId" readonly="readonly">
         <br>
         <br>      
         <input type="text" value="<%=rs.getString(2) %>" name="movieTitle" >
         <br>
         <br>      
         <input type="text" value="<%=rs.getString(3) %>" name="movieGenre" >
         <br>
         <br>      
         <input type="text" value="<%=rs.getString(4) %>" name="movieDirector" >
         <br>
         <br>      
         <input type="number" value="<%=rs.getInt(5) %>" name="movieRating" >
         <br>
         <br>
         <input class="buttom" type="submit" value="Update">

</form>
</section>
</body>
</html>