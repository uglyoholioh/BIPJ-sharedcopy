<%@ Page Title="" Language="C#" MasterPageFile="~/loggedinnavbar.Master" AutoEventWireup="true" CodeBehind="TokenDetails.aspx.cs" Inherits="BIPJ_sharedcopy.TokenDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Demiswap Crypto</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
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
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xxl-4 col-md-6">
    <div class="card info-card revenue-card" style="width:450px">
        <center>
           
    <asp:Image ID="TknImage" runat="server" width="128" height="128" />
            <h2>
            <b>
                <br />
    <asp:Label ID="TknLabel" runat="server" Text=""></asp:Label>
                <br />
    <asp:Label ID="TknValue" runat="server" Text=""></asp:Label>       
                </b>
                </h2>
            </center>
        </div>
        </div>


     <% if (TknLabel.Text == "BTC")
         { %>
     <section class="section">
      <div class="row">

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
               
              <h5 class="card-title">Bitcoin Value Overtime (2022)</h5>






              <!-- Line Chart -->
               
              <canvas id="lineChart" style="max-height: 400px;"></canvas>
              <script>
                  document.addEventListener("DOMContentLoaded", () => {
                      new Chart(document.querySelector('#lineChart'), {
                          type: 'line',
                          data: {
                              labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                              datasets: [{
                                  label: 'Line Chart',
                                  data: [47686.81, 38743.27, 44354.64, 46281.64, 38469.09, 29799.08, 23646.32],
                                  fill: false,
                                  borderColor: 'rgb(75, 192, 192)',
                                  tension: 0.1
                              }]
                          },
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true
                                  }
                              }
                          }
                      });
                  });
              </script>
                   
              <!-- End Line CHart -->

            </div>
          </div>
        </div>
          </div>
         </section>
       <% } %>

    <% else if (TknLabel.Text == "ETH")
        { %>
    <section class="section">
      <div class="row">

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Ethereum Value Overtime (2022)</h5>

              <!-- Line Chart -->
              <canvas id="lineChart" style="max-height: 400px;"></canvas>
              <script>
                  document.addEventListener("DOMContentLoaded", () => {
                      new Chart(document.querySelector('#lineChart'), {
                          type: 'line',
                          data: {
                              labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                              datasets: [{
                                  label: 'Line Chart',
                                  data: [3769.7, 2792.12, 2972.49, 3449.55, 2827.76, 1823.57, 1059.77],
                                  fill: false,
                                  borderColor: 'rgb(75, 192, 192)',
                                  tension: 0.1
                              }]
                          },
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true
                                  }
                              }
                          }
                      });
                  });
              </script>
              <!-- End Line CHart -->

            </div>
          </div>
        </div>
          </div>
         </section>
    <% } %>

     <% else if (TknLabel.Text == "DOGE"){ %>
     <section class="section">
      <div class="row">

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Dogecoin Value Overtime (2022)</h5>

              <!-- Line Chart -->
              <canvas id="lineChart" style="max-height: 400px;"></canvas>
              <script>
                  document.addEventListener("DOMContentLoaded", () => {
                      new Chart(document.querySelector('#lineChart'), {
                          type: 'line',
                          data: {
                              labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                              datasets: [{
                                  label: 'Line Chart',
                                  data: [0.173, 0.1426, 0.1339, 0.1413, 0.1328, 0.08106, 0.06617],
                                  fill: false,
                                  borderColor: 'rgb(75, 192, 192)',
                                  tension: 0.1
                              }]
                          },
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true
                                  }
                              }
                          }
                      });
                  });
              </script>
              <!-- End Line CHart -->

            </div>
          </div>
        </div>
          </div>
         </section>
    <% } %>

    <% if (TknLabel.Text == "USDT")
        {  %>
    <section class="section">
      <div class="row">

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Tether Value Overtime (2022)</h5>

              <!-- Line Chart -->
              <canvas id="lineChart" style="max-height: 400px;"></canvas>
              <script>
                  document.addEventListener("DOMContentLoaded", () => {
                      new Chart(document.querySelector('#lineChart'), {
                          type: 'line',
                          data: {
                              labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                              datasets: [{
                                  label: 'Line Chart',
                                  data: [1.0005, 1.0004, 1.0003, 1.0002, 0.9994, 0.9988, 1.0003],
                                  fill: false,
                                  borderColor: 'rgb(75, 192, 192)',
                                  tension: 0.1
                              }]
                          },
                          options: {
                              scales: {
                                  y: {
                                      beginAtZero: true
                                  }
                              }
                          }
                      });
                  });
              </script>
              <!-- End Line CHart -->

            </div>
          </div>
        </div>
          </div>
         </section>
    <% } %>

     
       
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.min.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.min.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
</asp:Content>

