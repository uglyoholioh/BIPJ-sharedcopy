<%@ Page Title="" Language="C#" MasterPageFile="~/loggedinnavbar.Master" AutoEventWireup="true" CodeBehind="poolslist.aspx.cs" Inherits="BIPJ_sharedcopy.poolslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <section class="section">
            <div class="row">
                <div class="col-8 col-md-8>
<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
<HeaderTemplate>

            <div class="col-lg-16">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Liquidity Pools <span>| DemiSwap Pools</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr> 
                        <th scope="col"><div style="display:inline;">#</div><div style="display:inline-block;"><p style="font-size:12px;display:inline"></p></div>
 </th>
                        <th scope="col">Assets <div style="display:inline;"></div><div style="display:inline-block;"><p style="font-size:12px;display:inline"></p></div>
                        <th scope="col">Balance</th>
                                                  <th scope="col">Fees</th>

                      </tr>
                    </thead>

                    <tbody></HeaderTemplate>
                                                                                               <ItemTemplate>
                                            
                                              <tr>

                                    
 

                        <th scope="row"><a href="pooltrade.aspx?id=<%# Eval("id") %>">#<%# Eval("id") %></a></th>
                        <td id="decimal"><%# Eval("crypto") %><br /><%# Eval("crypto2") %></td>
                        <td><%# Eval("bal") %><br /><%# Eval("bal2") %></td>

                        <td><%# Eval("fees") %>%</td>
                                                  <td>
                                                      <a class="btn btn-primary" href="pooltrade.aspx?id=<%# Eval("id") %>">Trade</a>
                                                  </td>

                      </tr>
                              </ItemTemplate>
                                          <FooterTemplate>

                    </tbody>
                  </table>

                </div>

              </div>
            </div></FooterTemplate>
          </asp:DataList>               
                    <a href="createpool.aspx" class="btn btn-primary" style="width:100%">Create a pool</a>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersContext %>" SelectCommand="SELECT * FROM [pools]"></asp:SqlDataSource>
            </div>
          </div>
            </section></body>
</asp:Content>
