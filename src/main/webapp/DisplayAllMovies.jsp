<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display All movie Table</title>
<link rel="stylesheet" href="DisplayAllMovies.css">
</head>
<body>
     
      <%
        ResultSet rs=(ResultSet) request.getAttribute("resultSet");
      %>
      
      <h1>All Movie Details</h1>
      <table>
        <tr>
        <th>movieId</th>
        <th>movieTitle</th>
        <th>movieGenre</th>
        <th>movieDirector</th>
        <th>movieRating</th>
        <th>Update</th>
        <th>Delete</th>
        
        </tr>
        <tr>
        <% while(rs.next()) { %>
        <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getInt(5) %></td>
        <td><a href="update-movie?movieId=<%= rs.getInt(1) %>">Update</a></td>
        <td><a href="delete-movie?movieId=<%= rs.getInt(1) %>">Delete</a></td>
        </tr>
       <%} %>
       
      </table>
       <h2><a href="index.jsp">Go Back to DashBoard</a></h2>
       
</body>
</html>