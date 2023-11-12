<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add an Item</title>
    <style>
        html {
            height: 100%;
            padding-bottom: 9.7rem;
            box-sizing: border-box;
        }
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            position: relative;
            min-height: 100%;
            box-sizing: inherit;
        }

        #footer {
            bottom: 0;
            position: absolute;
            left: 0;
            right: 0;
        }

        .container {
            max-width: 400px;
            margin: 70px auto;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .heading {
            margin: 0 0 20px;
            color: #333;
            text-align: center;
        }

        .form {
            padding: 0 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: 600;
            display: block;
        }

        .form-group textarea,
        .form-group input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            resize: vertical;
        }

        .form-group input[type="file"] {
            cursor: pointer;
        }

        .text-center {
            text-align: center;
        }

        .btn {
            background: #333;
            color: #fff;
            cursor: pointer;
            padding: 15px;
            border: none;
            border-radius: 10px;
            border: black 2px solid;
        }
        .btn:hover{
            background-color: white;
            color: black;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="heading">Add an Item</h2>
        <form action="foundItemsConnectivity.jsp" method="post"  class="form" " >
            <div class="form-group">
                <label for="itemName">Item Name:</label>
                <input type="text" id="itemName" name="itemName" required class="input">
            </div>
            <div class="form-group">
                <label for="itemDescription">Item Description:</label>
                <textarea id="itemDescription" name="itemDescription" rows="4" required class="input"></textarea>
            </div>
            <div class="form-group">
                <label for="itemImage">Item Image:</label>
                <input type="file" id="itemImage" name="itemImage" accept="image/*" required>
            </div>
            <div class="text-center">
                <input type="submit" value="Add Item" class="btn">
            </div>
        </form>
    </div>

    <div id="footer"></div>
   

</body>

</html>
