<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Blackspot.gov.in</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="logo.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.3.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

</head>
<body>
<center>
<main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="logo.png" alt="">
                  <span class="d-none d-lg-block">Blackspot.gov.in</span>
                </a>
              </div><!-- End Logo -->

<br><br>

<%@ page import="java.sql.*" %>
<%@ page import="blackspot.DBconnect" %>
<%@ page import="blackspot.get" %>

<%
Connection con=DBconnect.connect();
PreparedStatement pstmt=con.prepareStatement("select * from blackspot where Reason='Murder' ");
ResultSet rs=pstmt.executeQuery();
%>
<h3>Spot where Murder took place</h3>
<table class="table table-hover" >
<thead>
<tr>
<th> Location Name</th>
<th>Location Address</th>
<th>Reason</th>
<th>Latitude</th>
<th>Longitude</th>
<th>Level</th>
<th>City</th>
</tr>
</thead>

<% while(rs.next()){ %>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
</tr>
<% } %>	
</table>

<%
PreparedStatement pstmt1=con.prepareStatement("select * from blackspot where Reason='Criminals' ");
ResultSet rs1=pstmt1.executeQuery();
%>
<h3>Spot where there are more criminals</h3>
<table class="table table-hover">
<thead>
<tr>
<th> Location Name</th>
<th>Location Address</th>
<th>Reason</th>
<th>Latitude</th>
<th>Longitude</th>
<th>Level</th>
<th>City</th>
</tr>
</thead>

<% while(rs1.next()){ %>
<tr>
<td><%=rs1.getString(1) %></td>
<td><%=rs1.getString(2) %></td>
<td><%=rs1.getString(3) %></td>
<td><%=rs1.getString(4) %></td>
<td><%=rs1.getString(5) %></td>
<td><%=rs1.getString(6) %></td>
<td><%=rs1.getString(7) %></td>
</tr>
<% } %>	
</table>

<%
PreparedStatement pstmt2=con.prepareStatement("select * from blackspot where Reason='Accident' ");
ResultSet rs2=pstmt2.executeQuery();
%>
<h3>spot where accident took place</h3>

<table class="table table-hover">
<thead>
<tr>
<th> Location Name</th>
<th>Location Address</th>
<th>Reason</th>
<th>Latitude</th>
<th>Longitude</th>
<th>Level</th>
<th>City</th>
</tr>
</thead>
<% while(rs2.next()){ %>
<tr>
<td><%=rs2.getString(1) %></td>
<td><%=rs2.getString(2) %></td>
<td><%=rs2.getString(3) %></td>
<td><%=rs2.getString(4) %></td>
<td><%=rs2.getString(5) %></td>
<td><%=rs2.getString(6) %></td>
<td><%=rs2.getString(7) %></td>
</tr>
<% } %>	
</table>


<div class="card mb-3">

                <div class="card-body">

                  

				        <form action="GenerateReport.html" method="post">
                        <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Go to Back Menu</button>
                    </div>
                    
                  </form>

                </div>
              </div>

             

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>


</center>


</body>
</html>