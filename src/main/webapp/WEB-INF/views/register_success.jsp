<%@ page language="java" contentType="text/html"
pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> Registeration Success </title>
        <style type="text/css">
            span{
                display: inline-block;
                width: 200px;
                text-align: left;
            }
        </style>
    </head>
    <body>
        <div align="center">
            <h2> Registeration Succeeded! </h2>
            <span> Name: </span><span>${user.name}</span><br>
            <span> Email: </span><span>${user.email}</span><br>
            <span> Password: </span><span>${user.password}</span><br>
            <span> Birthday: </span><span>${user.birthday}</span><br>
            <span> Profession: </span><span>${user.profession}</span><br>
            <span> Gender: </span><span>${user.gender}</span><br>
            <span> Income: </span><span>${user.income}</span><br>
            <span> Married: </span><span>${user.married}</span><br>
            <span> Note: </span><span>${user.note}</span><br>

        </div>
        
    </body>
</html>