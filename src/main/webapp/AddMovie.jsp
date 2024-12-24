<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Movie data</title>
<link rel="stylesheet" href="AddMovie1.css">
</head>
<body>
      <section>
      
       <h2>Enter Movie Details</h2>
       <form action="add-movie" method="post">
       
         <input type="number" placeholder="Enter Movie Id" name="movieId" >
         <br>
         <br>      
         <input type="text" placeholder="Enter Movie Title" name="movieTitle" >
         <br>
         <br>      
         <input type="text" placeholder="Enter Movie Genre" name="movieGenre" >
         <br>
         <br>      
         <input type="text" placeholder="Enter Movie Director" name="movieDirector" >
         <br>
         <br>      
         <input type="number" placeholder="Enter Movie rating between(O to 10)" name="movieRating" >
         <br>
         <br>
         <input class="buttom" type="submit" value="Add">
       </form>
       
       </section>
</body>
</html>