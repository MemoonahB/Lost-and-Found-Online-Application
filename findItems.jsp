
<%@ page import="java.sql.*" %>



<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Found Items</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        .container {
            max-width: 100%;
            margin: 0 auto;
        }
       
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(400px, 1fr));
            gap: 20px;
            margin-top: 30px
        }
        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .card:hover{
           box-shadow:  0 0 3px 1px rgba(0, 0, 0, 0.5);

             
        }
        .card img {
            max-width: 100%;
            height: auto;
        }
        
        .add-button button {
            background-color: black;
            color: white;
            border: black solid 2px;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }
        .add-button button:hover {
            background-color: white;
            color: black;
        }

        /* Style for preventing text overflow */
        .card h2, .card p {
            overflow-wrap: break-word;
        }
        .btn{
            text-decoration: none;
            color: white;
        }
        .btn:hover{
            color: black;
        }
        a{
            text-decoration: none;
            color: black;
        }
    </style>
</head>


    
        <div style="display: flex;justify-content: space-around;align-items: center;border: solid black 2px">
            <h1>Found Items</h1>
            <div class="add-button">
                <a class="btn" href="addFoundItems.jsp"><button id="add-card-button">Add Items </button></a>
            </div>
        </div>
     



        <div class="grid" id="card-grid">
            <%-- Your existing code for displaying items --%>
            <%
            Connection conn = null;
            Statement stmt = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lostandfound", "root", "");
                stmt = conn.createStatement();
                String query = "SELECT itemName, itemDescription, itemImage FROM founditems";
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {
                    String itemName = rs.getString("itemName");
                    String itemDescription = rs.getString("itemDescription");
                    String itemImage = rs.getString("itemImage");
            %>
            <a href="foundItemsDecription.jsp">
            <div class="card">
                <img src="<%= itemImage %>">
                <h2><%= itemName %></h2>
                <p><%= itemDescription %></p>
            </div>
            </a>
           

          
            <%
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



        </div>
    

    

  

</html>
