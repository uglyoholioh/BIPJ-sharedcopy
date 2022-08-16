<%@ Page Title="" Language="C#" MasterPageFile="~/loggedinnavbar.Master" AutoEventWireup="true" CodeBehind="CryptoList.aspx.cs" Inherits="BIPJ_sharedcopy.CryptoList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

<body>


       
          
  
       
        </body>
           

        



            
              

        

            

           
         
      


  <!-- ======= Sidebar ======= -->

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>
                Tokens
            </h1>
        </div>
        <div>
            <h5>
                Our currently available tokens you can invest in.
            </h5>
        </div>
        <div>
            <h5>
                Token values are updated regularly.
            </h5>
        </div>


        <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">

           
                <asp:DataList ID="DataList2" runat="server" DataKeyField="crypto">
                    <ItemTemplate>
                        
                        <a href="TokenDetails.aspx?Token=<%# Eval("crypto") %>">
                        <div class="col-xxl-4 col-md-6">
                           <div class="card info-card revenue-card" style="width:450px">
                               <center>
                               <img src="<%# Eval("logo") %>" alt="Alternate Text" width="128" height="128" />
                        
                        <br />
                                   <h2>
                                   <b>
                        <asp:Label ID="TokenIDLabel" runat="server" Text='<%# Eval("crypto") %>' />
                        <br />
                      
                        <asp:Label ID="RankLabel" runat="server" Text='<%# Eval("price") %>' />
                            </center>
                               </b>
                               </h2>
                        <br />
                        
                        <br />
                               </div>
                            </div>
                            <br />
                            </a>
                    </ItemTemplate>
                </asp:DataList>
            </div>


              </div>
          
              </section>
        
        <section>
            <div class="pagetitle">
            <h1>
                Liquidity Pools
            </h1>
        </div>
             <div>
            <h5>
                Our currently available liquidity pools.
            </h5>
                 <asp:Label Text="text" ID="lbl_Test" runat="server" />
        </div>

            <!-- Uniswap -->
            <div class="col-xxl-8 col-xl-6">
                <a href="uniswappage.aspx">
              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">Uniswap <span>| Ranked #1</span></h5>

                  <div class="d-flex align-items-center">
                    <div><img src="assets/img/uniswap.png" width="80" height="80">
                    </div>
                    <div class="ps-3">
                      <h2>A decentralized ERC-20 token liqudity pool supportng ETH and ERC-20 token contracts in 1:1 ratio.</h2>
                    </div>
                  </div>
                    </div>
                </div>
                    </a>
              </div><!-- End Uniswap -->

                        <!-- Balancer -->
            <div class="col-xxl-8 col-xl-6">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">Balancer <span>| Ranked #2</span></h5>

                  <div class="d-flex align-items-center">
                    <div><img src="assets/img/balancer.png" width="80" height="80">
                    </div>
                    <div class="ps-3">
                      <h2>A decentralized liquidity pool, which also serves as a price sensor and non-custodial portfolio manager.</h2>
                    </div>
                  </div>
                    </div>
                </div>
              </div><!-- End Balancer -->

                <!-- Bancor -->
            <div class="col-xxl-8 col-xl-6">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">Bancor <span>| Ranked #3</span></h5>

                  <div class="d-flex align-items-center">
                    <div><img src="assets/img/bancor.png" width="80" height="80">
                    </div>
                    <div class="ps-3">
                      <h2>Ethereum-based platform using algorithmic market-making methods for leveraging pooled liquidity.</h2>
                    </div>
                  </div>
                    </div>
                </div>
              </div><!-- End Balancer -->

                <!-- Deversifi -->
            <div class="col-xxl-8 col-xl-6">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">Diversefi <span>| Ranked #4</span></h5>

                  <div class="d-flex align-items-center">
                    <div><img src="assets/img/deversifi.png" width="80" height="80">
                    </div>
                    <div class="ps-3">
                      <h2>Decentralized, non-custodial liquidity pool powered by STARKEX smart contract.</h2>
                    </div>
                  </div>
                    </div>
                </div>
              </div><!-- End Deversifi -->

                <!-- OIN -->
            <div class="col-xxl-8 col-xl-6">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">OIN <span class="new" style="color:red">(NEW!) </span> <span> | Ranked #5</span></h5>

                  <div class="d-flex align-items-center">
                    <div><img src="assets/img/oin.jpg" width="80" height="80">
                    </div>
                    <div class="ps-3">
                      <h2>New liquidity pool with focus on DeFi services.</h2>
                    </div>
                  </div>
                    </div>
                </div>
              </div><!-- End OIN -->

        </section>
     </main>

        

    </html>

<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.min.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.min.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>


</asp:Content>