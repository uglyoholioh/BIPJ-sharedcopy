<%@ Page Title="" Language="C#" MasterPageFile="~/loggedinnavbar.Master" AutoEventWireup="true" CodeBehind="wallet.aspx.cs" Inherits="BIPJ_sharedcopy.wallet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
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
  

   
    <section class="section dashboard">
      <div class="row">
          <div class="col-lg-1"></div>
        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">



            <!-- Revenue Card -->
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="crypto" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="2" RepeatDirection="Horizontal">
                      <ItemTemplate>
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card" style="width:450px">



                <div class="card-body">
                  <h5 class="card-title" style="text-transform:uppercase;"><%# Eval("crypto") %></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                        <img src="https://assets.coincap.io/assets/icons/<%# Eval("logo") %>@2x.png" />
                    </div>

                    <div class="ps-3" id="tokendiv">
                      <h6>
                          <asp:Label ID="lbl_bal" style="font-size:25px;" runat="server"><%# Eval("tokenamt") %>&nbsp<%# Eval("crypto") %></asp:Label>

                          <br />                      

                                                    <asp:Label ID="lbl_total"  runat="server" style="font-size:25px;">$<%# Eval("total") %></asp:Label>

</h6>
<%--                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>--%>

                    </div>
                  </div>
                </div>



              </div>
            </div><!-- End Revenue Card -->
                                  </ItemTemplate>
                  </asp:DataList>
              <!-- HTML !-->
              <asp:Button ID="btn_Deposit" runat="server" Text="Make a deposit" style="margin-left:25%;" width="50%" class="btn btn-primary" OnClick="btn_Deposit_Click" />
                            <asp:Button ID="btn_Withdraw" runat="server" Text="Withdraw" style="margin-left:25%;" width="50%" class="btn btn-secondary" OnClick="btn_Withdraw_Click" />

                  <asp:SqlDataSource ID="txDS" runat="server" ConnectionString="<%$ ConnectionStrings:usersContext %>" SelectCommand="SELECT * FROM [Transactions] WHERE ([email] = @email)">
                      <SelectParameters>
                          <asp:SessionParameter Name="email" SessionField="email" Type="String" />
                      </SelectParameters>

                  </asp:SqlDataSource>



            <!-- Reports -->
           

            <!-- Recent Sales -->

             
                                                      <asp:DataList ID="DataList2" runat="server" DataKeyField="txID" DataSourceID="txDS">
<HeaderTemplate>

            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon"</a>

                </div>

                <div class="card-body">
                  <h5 class="card-title">Recent Transactions <span></span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr> 
                        <th scope="col"><div style="display:inline;">#</div><div style="display:inline-block;"><p style="font-size:12px;display:inline"><asp:LinkButton ID="lb_txid_asc" runat="server" OnClick="lb_txid_asc_Click">▲</asp:LinkButton><br /><asp:LinkButton ID="lb_txid" runat="server" OnClick="lb_txid_Click">▼</asp:LinkButton></p></div>
 </th>
                        <th scope="col">Amount <div style="display:inline;"></div><div style="display:inline-block;"><p style="font-size:12px;display:inline"><asp:LinkButton ID="lb_amount_asc" runat="server" OnClick="lb_amount_asc_Click">▲</asp:LinkButton><br /><asp:LinkButton ID="lb_amount" runat="server" OnClick="lb_amount_Click">▼</asp:LinkButton></p></div>
                        <th scope="col">Time</th>
                        <th scope="col">Type</th>
                        <th scope="col">Asset<div style="display:inline;"></div><div style="display:inline-block;"><p style="font-size:12px;display:inline"><asp:LinkButton ID="lb_asset_asc" runat="server" OnClick="lb_asset_asc_Click">▲</asp:LinkButton><br /><asp:LinkButton ID="lb_asset" runat="server" OnClick="lb_asset_Click">▼</asp:LinkButton></p></div>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>

                    <tbody></HeaderTemplate>
                                                                                               <ItemTemplate>
                                            
                                              <tr>

                                    
 

                        <th scope="row"><a href="#">#<%# Eval("txID") %></a></th>
                        <td id="decimal"><%# Eval("amount") %></td>
                        <td><a href="#" class="text-primary"><%# Eval("time") %></a></td>
                        <td><%# Eval("type") %></td>
                        <td><%# Eval("asset") %></td>
                        <td><span class="badge bg-success"><%# Eval("status") %></span></td>
                      </tr>
                              </ItemTemplate>
                                          <FooterTemplate>

                    </tbody>
                  </table>

                </div>

              </div>
            </div></FooterTemplate>
          </asp:DataList>                                                    

                  <!-- End Recent Sales -->



          </div>
        </div><!-- End Left side columns -->

       

      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

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



</body>

</html>
</asp:Content>
