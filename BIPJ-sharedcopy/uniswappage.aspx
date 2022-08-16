<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Demiswap Uniswap</title>
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

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/demiswap.png" width="40" height="40" /><span class="d-none d-lg-block">DEMISWAP</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="CryptoList.aspx">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->
         </ul> 
      
    </nav>

  </header><!-- End Header -->

  


    </body>
    </html>

<main id="main" class="main">

    <div class="pagetitle">
        <h1 style="font-size:60px">Uniswap</h1>
    </div>

    <section class="section dashboard">
        <div class="row">

            <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">
              <div class="card info-card sales-card">

              <!-- Information -->

              <div class="col-xxl-10 col-md-8">
                  <div class="card-body">
                      <h5 class="card-title">Current Rank: #1</h5>

                    <div class="d-flex align-items-center">
                        <div><img src="assets/img/uniswap.png" width="80" height="80">
                         </div>
                        <div class="ps-3">
                            <h2>Liquidity: 4.57 USD</h2>
                        </div>
                        <div class="ps-3">
                            <h2>24h Volume: 0.00 USD</h2>
                        </div>
                        <div class="ps-3">
                            <h2>24h ROI: 0.00%</h2>
                        </div>

                    </div>
                  </div>

              </div>



                  </div>
              </div>
            </div>

        </div>



    </section>
    <!-- End Information -->


     <section class="section">
      <div class="row">

        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Liquidity</h5>

              <!-- Line Chart -->
              <canvas id="lineChart" style="max-height: 400px;"></canvas>
              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  new Chart(document.querySelector('#lineChart'), {
                    type: 'line',
                    data: {
                      labels: ['May 24', 'May 26', 'May 28', 'May 30', 'June 1', 'June 3', 'June 5'],
                      datasets: [{
                        label: 'Line Chart',
                        data: [1, 1, 0.9, 0.9, 0.9, 0.9, 0.9],
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

        <section class="section">
        <div class="row">

           <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Invest into Pool</h5>
                    <form>
                        <label for="Token">Token:</label><br />
                        <input type="text" id="Token" name="Token"><br />
                        <label for="Value">Value: </label><br />
                        <input type="number" id="Value" name="Value"><br /><br />
                        <input type="submit" value="Invest!" />
                    </form>

                    </div>
                </div>
               </div>

          </section>

       

    
    </main>

<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.min.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.min.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>