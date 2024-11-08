<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    /* Set the background color and center the form and title */
    body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #C5D3E8; /* Light blue background color */
    }
    /* Style the title */
    .title {
        position: absolute;
        top: 10%; /* Adjusted to move title slightly higher */
        font-size: 56px; /* Increased font size */
        font-weight: bold;
        text-align: center;
        color: #333333; /* Darker text color for contrast */
    }
    /* Style the form container */
    .login-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 300px;
        text-align: center;
    }
    h3 {
        margin-bottom: 20px;
    }
    table {
        margin: 0 auto;
    }
    td {
        padding: 8px;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 15px;
        background-color: orange;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
  <!-- Title Container -->
  <div class="title">Recipe Management System</div>

  <!-- Login Form Container -->
  <div class="login-container">
    <h3>Login</h3>
    <form action="LoginServlet" method="post"> 
      <table>
        <tr>
          <td>Username*</td>
          <td><input type="text" name="username" required /></td>
        </tr>
        <tr>
          <td>Password*</td>
          <td><input type="password" name="password" required /></td>
        </tr>
      </table>
      <input type="submit" value="Login" />
    </form> 
  </div>
</body>
</html>
