<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Maven App</title>
</head>
<body>
    <%
        String name = "Nidhi";
        java.time.LocalTime currentTime = java.time.LocalTime.now();
        String timeString = currentTime.format(java.time.format.DateTimeFormatter.ofPattern("hh:mm a"));
        String greeting = "";
        if (currentTime.isBefore(java.time.LocalTime.NOON)) {
            greeting = "Good morning, " + name + ", Welcome to COMP367!";
        } else {
            greeting = "Good afternoon, " + name + ", Welcome to COMP367!";
        }
    %>
    <h1><%= greeting %></h1>
    <p>The current time is <%= timeString %></p>
</body>
</html>
