<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
        <link rel="icon" type="image/peg" href="images/logo.jpeg">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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

       
        
    </style>
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container1-fluid">
            <ul class="nav navbar-nav">
                <li><span class="logo-mobile hide-in-mobile"><img src="/images/logo.jpeg" height="55px" width="65px"></span>
                </li>
                <li><a href="customerHome">XperienceAuto</a></li>
            </ul>
            <button type="button" class="navbar-toggle right" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="customerHome"><i class="fas fa-home"></i> HOME</a></li>
                    <li><a href="#"><i class="fas fa-shopping-cart"></i>&nbspPRODUCTS</a></li>
                    <li><a href="#"><i class="fas fa-cogs"></i>&nbspSERVICES</a></li>
                    <li class="user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user-circle"></i>&nbsp&nbsp${cname}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Profile</a></li>
                            <li><a href="#">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

</body>

</html>