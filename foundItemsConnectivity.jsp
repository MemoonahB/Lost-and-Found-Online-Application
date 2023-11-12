<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
String itemName = request.getParameter("itemName");
String itemDescription = request.getParameter("itemDescription");
String itemImage = request.getParameter("itemImage"); // If you want to handle image uploads, you should use a different approach and not a regular parameter.

Connection conn = null;
Statement stmt = null;

try {
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lostandfound", "root", "");

    // Proceed to insert the item into the database
    String insertQuery = "INSERT INTO foundItems (itemName, itemDescription, itemImage) VALUES (?, ?, ?)";
    PreparedStatement preparedStatement = conn.prepareStatement(insertQuery);
    preparedStatement.setString(1, itemName);
    preparedStatement.setString(2, itemDescription);
    preparedStatement.setString(3, itemImage);

    preparedStatement.executeUpdate();
    response.sendRedirect("findItems.jsp");
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
