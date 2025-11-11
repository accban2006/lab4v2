<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
response.setContentType("text/csv");
response.setHeader("Content-Disposition", "attachment; filename=\"students.csv\"");

out.println("ID,Student Code,Full Name,Email,Major");

// Query and loop through students
while (rs.next()) {
    out.println(rs.getInt("id") + "," + 
                rs.getString("student_code") + "," +
                rs.getString("full_name") + "," +
                rs.getString("email") + "," +
                rs.getString("major"));
}
%>
