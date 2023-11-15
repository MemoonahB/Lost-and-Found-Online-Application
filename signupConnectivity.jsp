<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name1");
String email = request.getParameter("email");
String password = request.getParameter("password");
Connection conn = null;
Statement stmt = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lostandfound", "root", "");

    // Check if the email already exists
    String checkEmailQuery = "SELECT * FROM login WHERE email = '" + email + "'";
    ResultSet result = conn.createStatement().executeQuery(checkEmailQuery);

    if (result.next()) {
        out.println("Error: Email already registered.");
    } else {
        // If email is not registered, proceed to insert
        String insertQuery = "INSERT INTO login (name, email, password) VALUES ('" + name + "', '" + email + "','" + password + "')";
        stmt = conn.createStatement();
        stmt.executeUpdate(insertQuery);
       response.sendRedirect("dashBoard.jsp");
    }
} catch (Exception e) {
    out.println("Something went wrong! Please try again.");
    e.printStackTrace();
} finally {
    try {
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
