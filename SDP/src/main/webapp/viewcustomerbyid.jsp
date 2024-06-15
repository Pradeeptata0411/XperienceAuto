<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<tittle>Customer By Id</tittle>
    <meta charset='utf-8'>
        <link rel="icon" type="image/peg" href="images/logo.jpeg">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <script src='main.js'></script>
    
    <style>
    .column {
    display: flex;
    flex-direction: column;
}
    
        body {
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            font-family: 'Poppins', sans-serif;
            background-color: aliceblue;
        }

        .navbar {
            font-family: 'Poppins', sans-serif;
            background-color: #2B2E4A;
            border-color: #2B2E4A;
        }

        .navbar-nav {
            padding-top: 13.5px;
            padding-bottom: 13.5px;
            font-size: 18px;
        }

        .container-fluid1 {
            background-color: #2B2E4A;
            color: aliceblue;
        }

        nav .navbar-nav li a {
            color: rgb(239, 118, 6) !important;
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

        /* Logo and App Name Styles */
        .navbar-brand i {
            margin-right: 5px;
            font-size: 20px;
            color: white;
        }

        /* Display the logo in desktop mode */
        .navbar-brand img.desktop-show {
            height: 40px;
            width: auto;
            margin-right: 5px;
        }

        .navbar-brand .app-name {
            font-size: 20px;
            color: white;
        }

        #product-list {
            display: flex;
            flex-wrap: wrap;
            /* Allow items to wrap to the next row */
            justify-content: space-between;
            /* Add space between items */
            padding: 20px;
        }

        .product {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            width: calc(25% - 20px);
            /* Set a maximum of 4 items in a row */
            margin: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }


        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        #shopping-cart {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            width: 300px;
            margin: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        @media (max-width: 768px) {
            .product {
                width: calc(50% - 20px);
                /* Set a maximum of 2 items in a row for smaller screens */
            }
        }

        h1 {
            text-align: center;
            margin-top: 90px;
            /* Add some top margin to separate from the navbar */
            font-size: 40px;
            color: #2B2E4A;
            /* Change the color to your preferred style */
        }

        .ag-format-container {
            width: 1142px;
            margin: 0 auto;
        }

        body,
        h1,
        h2,
        h3,
        p,
        div,
        ul,
        li {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            background-image: url('/img/bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;

        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            margin-top: 8%;
            font-family: 'Poppins', sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            border: 1px solid #0e0101;
        }

        th,
        td {
            border: 1px solid #131212;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #333;
            color: white;
        }

        .table-title {
            text-align: center;
            margin-bottom: 20px;
            font-size: 40px;
        }

        /* Apply alternating row colors */
        tr:nth-child(even) {
            background-color: #f8f2f2;
        }

        tr:nth-child(odd) {
            background-color: #beb3b3;
        }




        .container12 {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            font-family: 'Poppins', sans-serif;
            
        }

        .data-card {
            background-color: #b9aeae;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(212, 94, 94, 0.2);
            padding: 20px;
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .customer-info {
            flex: 1;
            margin-right: 20px;
        }

        .customer-info h3 {
            margin-bottom: 10px;
        }

        .customer-info p {
            margin: 5px 0;
        }

        .buttons {
            display: flex;
            align-items: center;
        }

        .buttons button {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 6px 10px;
            border-radius: 3px;
            cursor: pointer;
            margin-left: 10px;
        }

        .buttons button:hover {
            background-color: #c82333;
        }

        /* CSS for the "Download Data" button */
        .download-button {

            text-align: right;
            margin-top: 50px;
            /* Adjust the margin as needed */
        }

        #download-csv-button {
            background-color: #007bff;
            /* Change this to your desired button color */
            color: #fff;
            /* Text color for the button */
            border: none;
            padding: 10px 20px;
            /* Adjust padding as needed */
            font-size: 16px;
            /* Adjust font size as needed */
            cursor: pointer;
            border-radius: 5px;
            /* Rounded corners for the button */
            transition: background-color 0.3s ease;
            /* Add a transition effect for hover */
        }

        #download-csv-button:hover {
            background-color: #0056b3;
            /* Change the hover color */
        }

        /* mobile */
        /* Navbar Styles for Mobile View */
        @media (max-width: 768px) {
            .navbar {
                background-color: #2B2E4A;
                border-color: #2B2E4A;
                padding: 5px 0;
            }

            .table-title {
                text-align: center;
                margin-bottom: 20px;
                font-size: 40px;
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

            /* Additional mobile-specific styles go here */

            /* For example, you can add styles for smaller screens */
            .product {
                width: calc(50% - 20px);
                /* Set a maximum of 2 items in a row for smaller screens */
            }

            /* Style the "Download Data" button for mobile */
            .download-button {
                text-align: center;
                margin-top: 10px;
                /* Adjust the margin as needed */
            }

            #download-csv-button {
                background-color: #007bff;
                /* Change this to your desired button color */
                color: #fff;
                /* Text color for the button */
                border: none;
                padding: 10px 20px;
                /* Adjust padding as needed */
                font-size: 16px;
                /* Adjust font size as needed */
                cursor: pointer;
                border-radius: 5px;
                /* Rounded corners for the button */
                transition: background-color 0.3s ease;
                /* Add a transition effect for hover */
            }

            #download-csv-button:hover {
                background-color: #0056b3;
                /* Change the hover color */
            }
        }
        
        
        .modal {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      z-index: 1;
      justify-content: center;
      align-items: center;
    }
    
    /* Styling for the modal content */
    .modal-content {
      background-color: #fff;
      border: 1px solid #ccc;
      border-radius: 5px;
      text-align: center;
      padding: 20px;
    }

    /* Styling for the buttons */
    .button-container {
      margin-top: 20px;
    }
        
        /* Center the card */
        .center-card {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 400px;
        }

        /* Card Styles */
        .card {
            width: 500px;
            background-color: #fff;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
            height: 280px;
        }

        /* Card Header Style */
        .card-header {
            background-color: #3498db;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        /* Other Text Styles */
        .card h3, .card h2, .card h5, .card p {
            font-size: 26px;
            color: #333;
            margin: 10px;
        }
    </style>


</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container1-fluid">
            <ul class="nav navbar-nav">
                <li><span class="logo-mobile hide-in-mobile"><img src="/images/logo.jpeg"
                            height="55px" width="65px"></span>
                </li>
                <li><a href="adminhome">XperienceAuto</a></li>
            </ul>
            <button type="button" class="navbar-toggle right" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="adminhome"><i class="fas fa-home"></i> HOME</a></li>
                    <li><a href="#"><i class="fa fa-cloud"></i>Manage Products</a></li>
                    <li><a href="#"><i class="fa fa-wrench"></i>Display product</a></li>
             
                     <li class="user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-database"></i>data
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="customerdata">Customer Data</a></li>
                            <li><a href="#">Seller data</a></li>
                        </ul>
                       
                    </li>
                    <li class="user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fas fa-user-circle"></i>&nbsp&nbsp${aname}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="adminlogin">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
        <div class="center-card">
        <div class="card">
            <div class="card-header">
                <h1>ID : <c:out value="${cus.id}" /></h1>
            </div>
            <div class="card-content">
                <h2>Name: <c:out value="${cus.fullname}" /></h2>
                <h5>Email: <c:out value="${cus.email}" /></h5>
                <p>Gender: <c:out value="${cus.gender}" /></p>
                <p>Contact No: <c:out value="+91 ${cus.contactno}" /></p>
            </div>
        </div>
    </div>
</body>
</html>