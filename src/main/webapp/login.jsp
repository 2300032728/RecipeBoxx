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
        background-image: url('images/background.jpg'); /* Background image */
        background-size: cover;
        background-position: center;
    }

    /* Style the title */
    .title {
        position: absolute;
        top: 10%; /* Adjusted to move title slightly higher */
        font-size: 56px; /* Increased font size */
        font-weight: bold;
        text-align: center;
        color: #ffffff; /* White color for better contrast against the background */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Added text shadow for better readability */
    }

    /* Style the form container */
    .login-container {
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
        padding: 40px;
        border-radius: 15px; /* Rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        width: 300px;
        text-align: center;
        backdrop-filter: blur(10px); /* Adds a blur effect to the background */
        transition: transform 0.3s ease-in-out;
    }

    /* Hover effect for form container */
    .login-container:hover {
        transform: scale(1.05); /* Slightly enlarge the container on hover */
    }

    h3 {
        margin-bottom: 20px;
        font-size: 24px;
        color: #333;
    }

    table {
        margin: 0 auto;
    }

    td {
        padding: 8px;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
        font-size: 16px;
        transition: border 0.3s ease;
    }

    /* Input focus effect */
    input[type="text"]:focus, input[type="password"]:focus {
        border-color: #3498db; /* Blue border when focused */
        outline: none;
    }

    /* Customize the Login button color */
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: orange; /* New button color */
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    /* Hover effect for the Login button */
    input[type="submit"]:hover {
        background-color: #0056b3; /* Slightly darker shade for hover effect */
    }

    /* Footer text style */
    .footer {
        position: absolute;
        bottom: 10px;
        font-size: 14px;
        color: #ffffff;
        text-align: center;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
    }

    .footer a {
        color: #ffffff;
        text-decoration: none;
    }

    .footer a:hover {
        text-decoration: underline;
    }

    /* Small text below the login container */
    .extra-text {
        text-align: center;
        font-size: 16px;
        color: #555;
        margin-top: 20px;
        max-width: 600px;
        padding: 10px;
        background-color: rgba(255, 255, 255, 0.6); /* Slightly translucent background */
        border-radius: 12px; /* Rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .extra-text p {
        margin: 0;
        font-size: 14px;
        color: #666;
    }

</style>
</head>
<body>
  <!-- Title Container -->
  <div class="title">RecipeBoxx</div>
	<br>
<br>
<br>
<br>
<br>
<br>
  <!-- Login Form Container -->
  <div class="login-container">
    <h3>Login to Your Account</h3>
    <form action="main.html" method="post"> 
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
<br>
<br>
<br>

  <!-- Small Text Below the Login Container -->
  <div class="extra-text">
    <p>New to RecipeBoxx? Explore hundreds of recipes, tips, and culinary secrets to make your meals extraordinary. Sign up today and start your culinary journey!</p>
  </div>

  <!-- Footer Section -->
  <div class="footer">
    <p>&copy; 2024 RecipeBoxx | All Rights Reserved</p>
  </div>

</body>
</html>
