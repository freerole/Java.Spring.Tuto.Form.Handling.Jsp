<%@ page language="java" contentType="text/html"
pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title> User Registeration Form </title>
    </head>
    <style type="text/css">
    label{
        display: block;
        width: 200px;
        margin: 5px;
        text-align: left;
    }
    button{
        display: block;
        padding: 10px;
        margin: 10px;
    }

    input[type=text], input[type=password], select, textarea {
        width: 200px;
        margin: 5px;
    }
    
    input[type=radio]{
        display: inline-block;
        margin-left: 45px;
    }
    input[type=checkbox]{
        display: block;
        margin-right: 190px;
    }
    .error{
        color: red;
        font-size: 14px;
    }

    </style>
    <body>
        <div align="center">
            <h2>User Registeration </h2>
            <form:form action="register" method="post" modelAttribute="user">
            <div>
                <form:label path = "name"> Name: </form:label>
                <form:input path ="name" /> <br>
                <form:errors path="name" cssClass="error"/>
            </div>
            <div>
                <form:label path = "email"> Email: </form:label>
                <form:input path ="email" /><br>
                <form:errors path="email" cssClass="error"/>
            </div>
            <div>
                <form:label path = "password"> Password: </form:label>
                <form:password path ="password" /><br>
                <form:errors path="password" cssClass="error"/>
            </div>
            <div>
                <form:label path = "birthday"> birthday (yyyy-mm-dd): </form:label>
                <form:input type="date" path ="birthday" /><br>
                <form:errors path="birthday" cssClass="error"/>
            </div>
            <div>
                <form:label path = "profession"> Profession: </form:label>
                <form:select path ="profession" items="${professionList}"></form:select><br>
                <form:errors path="profession" cssClass="error"/>
            </div>
            <div>
                <form:label path = "gender"> Gender: </form:label>
                <form:radiobutton path = "gender" value ="Male" />Male
                <form:radiobutton path = "gender" value ="Female" />Female
                <br>
                <form:errors path="gender" cssClass="error"/>
            </div>   
            <div>
                <form:label path = "married">Married?</form:label>
                <form:checkbox path ="married" /> <br>
                <form:errors path="married" cssClass="error"/>
            </div>
            <div>
                <form:label path = "income">Annual Income:</form:label>
                <form:input path ="income" /> <br>
                <form:errors path="income" cssClass="error"/>
            </div>
            <div>
                <form:label path = "note">Note</form:label>
                <form:textarea path ="note" rows = "5" cols = "25" /> <br>
                <form:errors path="note" cssClass="error"/>
            </div>
                <form:button> Register </form:button>
            </form:form>
        </div>
        
    </body>
</html>