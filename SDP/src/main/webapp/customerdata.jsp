<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
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
      top: 300px;
      left: 450px;
      width: 40%;
      height: 15%;
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
        
        
    </style>


</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container1-fluid">
      <ul class="nav navbar-nav">
        <li><span class="logo-mobile hide-in-mobile"><img src="/images/logo.jpeg" height="55px"
              width="65px"></span>
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
          <li><a href="viewallrequests"><i class="fa fa-cloud"></i>request data</a></li>
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
                            <li><a href="customerlogin.html">Logout</a></li>
                        </ul>
                    </li>
        </ul>
      </div>
    </div>
  </nav>
   
<br>
<br>
<br>
  
    <div class="container12">
    <h2 class="table-title">Customer Data</h2>
    <br>
    <div class="column">
        <c:forEach items="${cdata}" var="cus">
            <div class="data-card">
                <div class="customer-info">
                    <h3>ID : <c:out value="${cus.id}" /></h3>
                    <h2 style="color: highlight;">Name:<c:out value="${cus.fullname}"></c:out></h2>
                    <h5>Email:<c:out value="${cus.email}"></c:out></h5>
                    
                </div>
                <div class="buttons">
                    <a href='<c:url value="view?id=${cus.id}"></c:url>'>
							  <button style="background-color: #F9AD46;">
							    <i class="fa fa-eye" aria-hidden="true"></i> View
							  </button>
							</a>
                    
	                    	<div class="delete-container">
							  <a href='<c:url value="delete/${cus.id}"></c:url>'>
							    <button id="delete-button" class="delete-button">
							      <i class="fas fa-trash"></i> Delete
							    </button>
							  </a>
							</div>


						
                </div>
            </div>
        </c:forEach>
    </div>
    <!-- Add more data cards for customer data as needed -->
</div>

<div class="download-button" style="margin-right: 39px;">
    <button id="download-csv-button" onclick="downloadCSVdata()">Download customer Data</button>
</div>

<script>
function downloadCSVdata() {
    // Get all data cards
    const dataCards = document.querySelectorAll('.data-card');

    // Create an array to hold the CSV data
    const csvData = [];

    // Add a header row
    csvData.push('Name,Email,Gender,Contact No');

    // Loop through each data card and extract data
    dataCards.forEach(function (card) {
        const name = card.querySelector('h2').innerText;
        const email = card.querySelector('h5').innerText.replace('Email: ', '');
        const gender = card.querySelector('p:nth-child(3)').innerText.replace('Gender: ', '');
        const contactNo = card.querySelector('p:nth-child(4)').innerText.replace('Contact No: +91 ', '');

        // Push data as a CSV row
        csvData.push(`"${name}","${email}","${gender}","${contactNo}"`);
    });

    // Combine the data into a CSV string
    const csvContent = csvData.join('\n');

    // Create a blob with the CSV data
    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });

    // Create a URL for the blob
    const url = window.URL.createObjectURL(blob);

    // Create a hidden anchor element to trigger the download
    const a = document.createElement('a');
    a.style.display = 'none';
    a.href = url;
    a.download = 'customer_data.csv';

    // Trigger the click event to download the file
    document.body.appendChild(a);
    a.click();

    // Clean up
    window.URL.revokeObjectURL(url);
    document.body.removeChild(a);
}
</script>


    <script>
        function downloadCSV() {
            // Get all table rows and headers
            const table = document.querySelector('table');
            const rows = table.querySelectorAll('tr');

            // Create an array to hold the CSV data
            const csvData = [];

            // Loop through each row and extract cell values
            rows.forEach(function (row) {
                const rowData = [];
                row.querySelectorAll('td').forEach(function (cell) {
                    rowData.push(cell.innerText);
                });
                csvData.push(rowData.join(','));
            });

            // Combine the header row with the data rows
            const csvContent = ['Name,Applied Service,Service Type,Date,Time,Description'].concat(csvData).join('\n');

            // Create a blob with the CSV data
            const blob = new Blob([csvContent], { type: 'text/csv' });

            // Create a URL for the blob
            const url = window.URL.createObjectURL(blob);

            // Create a hidden anchor element to trigger the download
            const a = document.createElement('a');
            a.style.display = 'none';
            a.href = url;
            a.download = 'customer_appliedinformation_data.csv';

            // Trigger the click event to download the file
            document.body.appendChild(a);
            a.click();

            // Clean up
            window.URL.revokeObjectURL(url);
            document.body.removeChild(a);
        }
    </script>
    <script>
    document.getElementById('delete-button').addEventListener('click', function() {
      var confirmation = confirm("Are you sure you want to delete?");
      if (confirmation) {
        // Perform the delete action here
        alert("Item deleted.");
        // You can add your delete logic here
      } else {
        // User canceled the delete action
        alert("Delete canceled.");
      }
    });
  </script>
<script>
    // Get the delete link and modal
    const deleteLink = document.getElementById('delete-link');
    const modal = document.getElementById('delete-modal');

    // Get the confirm and cancel buttons in the modal
    const confirmButton = document.getElementById('confirm-delete');
    const cancelButton = document.getElementById('cancel-delete');

    // Function to open the modal
    function openModal() {
      modal.style.display = 'block';
    }

    // Function to close the modal
    function closeModal() {
      modal.style.display = 'none';
    }

    // Attach click event to the delete link
    deleteLink.addEventListener('click', openModal);

    // Attach click events to the buttons in the modal
    confirmButton.addEventListener('click', function() {
      // Perform the delete action here
      alert("Item deleted.");
      closeModal();
    });

    cancelButton.addEventListener('click', function() {
      // User canceled the delete action
      closeModal();
    });
  </script>
  
  <script>
  // Get the delete button and delete modal
  const deleteButton = document.getElementById('delete-button');
  const modal = document.getElementById('delete-modal');

  // Function to open the modal
  function openModal() {
    modal.style.display = 'block';
  }

  // Attach click event to the delete button to open the modal
  deleteButton.addEventListener('click', openModal);
</script>
  
  

  
  
</body>

</html>