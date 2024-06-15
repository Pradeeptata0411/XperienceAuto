<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Customer Profile</title>
        <link rel="icon" type="image/peg" href="images/logo.jpeg">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: aliceblue;
        }

        .navbar {
            background-color: #2B2E4A;
            border-color: #2B2E4A;
        }

        .navbar-nav {
            padding-top: 13.5px;
            padding-bottom: 13.5px;
            font-size: 18px;
        }

        .container {
            margin-top: 0;
            background-color: aliceblue;
            width: 100%;
            padding: 0;
        }

        nav .navbar-nav li a {
            color: rgb(239, 118, 6) !important;
        }

        .navbar-inverse .navbar-brand {
            color: white;
        }

        .navbar-inverse .navbar-nav>li>a {
            color: white;
        }

        /* Navbar Styles for Mobile View */
        @media (max-width: 768px) {
            .navbar {
                background-color: #2B2E4A;
                border-color: #2B2E4A;
                padding: 5px 0;
            }

            .navbar-nav {
                font-size: 14px;
            }

            /* Hide XperienceAuto in mobile view */
            .navbar-brand .logo-mobile {
                display: none;
            }

            /* Adjust the mobile navigation width */
            .navbar-collapse {
                max-height: calc(100vh - 55px);
                /* Subtract the height of the navbar */
                overflow-y: auto;
            }

            /* Center align mobile logo and icons */
            .navbar-brand {
                display: flex;
                align-items: center;
                text-align: center;
                padding: 10px;
            }

            /* Move the toggle button to the left */
            .navbar-toggle {
                float: left;
                margin-left: 15px;
                margin-right: 0;
            }

            /* Adjust padding for navbar links */
            .navbar-nav {
                padding-top: 0;
                padding-bottom: 0;
            }

            /* Style the mobile navigation links */
            .navbar-nav li a {
                padding: 10px 20px;
                /* Adjust the padding as needed */
                color: #fff;
                /* Change link color */
            }

            /* Hide the image in mobile view */
            .hide-in-mobile {
                display: none;
            }
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .profile-info {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-pic {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }

        .profile-name {
            font-size: 24px;
            font-weight: bold;
            margin-top: 10px;
        }

        .profile-email {
            color: #777;
            margin-top: 5px;
        }

        .user-dropdown {
            display: inline-block;
            margin-left: 20px;
        }

        .user-dropdown .dropdown-toggle {
            color: #333;
            cursor: pointer;
        }

        .change-password-form {
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .btn-primary {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        @media (max-width: 768px) {
            .user-dropdown {
                position: relative;
                display: inline-block;
                margin-left: 0px;
            }

            .user-dropdown .dropdown-menu {
                position: absolute;
                top: 100%;
                left: 0;
            }
        }
        
        
        .password-input {
    position: relative;
}

.toggle-password {
    position: absolute;
    top: 50%;
    right: 10px;
    transform: translateY(-50%);
    cursor: pointer;
}
    </style>
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container1-fluid">
            <ul class="nav navbar-nav">
                <li><span class="logo-mobile hide-in-mobile"><img src="/images/logo.jpeg" height="55px" width="65px"></span>
                </li>
                <li><a href="/customerHome">XperienceAuto</a></li>
            </ul>
            <button type="button" class="navbar-toggle right" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/customerHome"><i class="fas fa-home"></i> HOME</a></li>
                    <li><a href="#"><i class="fas fa-shopping-cart"></i>&nbspPRODUCTS</a></li>
                    <li><a href="/servicesRequestpage"><i class="fas fa-cogs"></i>&nbspSERVICES</a></li>
                      <li><a href="/viewmyrequests"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbspMy requests</a></li>
                    <li class="user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user-circle"></i>&nbsp${fname}
                        </a>
                        <ul class="dropdown-menu" >
                            <li style="font-size: 18px"><a href="/customerHome/customerprofile">Profile</a></li>
                             <li style="font-size: 18px"><a href="#">Update Profile</a></li>
                            <li style="font-size: 18px"><a href="/customerlogout">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container">
        <div class="profile-info">
           <i><h1 style="font-size: 50px;"><div >${fname} &#128522</div></h1></i>
            <h4><div > ${cust.email} &#128231</div></h4>
             <h4><div>${cust.gender}</div></h4>
            <h4><div >${cust.contactno} &#128241</div></h4>
        </div>

       <div class="change-password-form">
    <center><h2>Change Password</h2></center>
    <form action="#" method="post" onsubmit="return validatePassword()">
        <div class="form-group">
            <label for="new-password"><i class="fas fa-key"></i> New Password:</label>
            <div class="password-input">
                <input type="password" id="new-password" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,30})" placeholder="Enter password" title="Password must contain at least one number [0-9], uppercase [A-Z], special character [!@#$%^&*], length > 8!! try again!!" name="new-password" required>
                <span class="toggle-password" onclick="togglePasswordVisibility('new-password')"><i class="fas fa-eye"></i></span>
            </div>
        </div>
        <div class="form-group">
          
            <div class="password-input">
               <label for="confirm-password"><i class="fas fa-key"></i> Confirm New Password:</label>
            <input type="password" id="confirm-password" placeholder="Re-Enter password" name="confirm-password" required>
            </div>
        </div>
        <button class="btn-primary" type="submit"><i class="fas fa-check"></i> Change Password</button>
    </form>
</div>
    </div>
</body>
<script>
function togglePasswordVisibility(inputId) {
    var input = document.getElementById(inputId);
    var toggle = document.querySelector(".toggle-password");

    if (input.type === "password") {
        input.type = "text";
        toggle.innerHTML = '<i class="fas fa-eye-slash"></i>'; // Change eye icon to eye-slash
    } else {
        input.type = "password";
        toggle.innerHTML = '<i class="fas fa-eye"></i>'; // Change eye-slash icon back to eye
    }
}

function validatePassword() {
    var newPassword = document.getElementById("new-password").value;
    var confirmNewPassword = document.getElementById("confirm-password").value;

    if (newPassword !== confirmNewPassword) {
        alert("Passwords do not match. Please try again.");
        return false; // Prevent form submission
    }

    return true; // Allow form submission if passwords match
}
</script>
</html>
