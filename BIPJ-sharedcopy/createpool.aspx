﻿<%@ Page Title="" Language="C#" MasterPageFile="~/loggedinnavbar.Master" AutoEventWireup="true" CodeBehind="createpool.aspx.cs" Inherits="BIPJ_sharedcopy.createpool" %>
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
        <nav><ol class="breadcrumb"><li class="breadcrumb-item"><a href="index.aspx">Home</a></li><li class="breadcrumb-item active"><a href="wallet.aspx">Wallet</a></li><li class="breadcrumb-item active">Create pool</li></ol></nav>
        <section class="section">
            <div class="row">
                <div class="col-lg-8"><div class="card"><div class="card-body"><h5 class="card-title">Create pool</h5>
            <p>Select cryptocurrency pair to deposit:</p>
                    <br />
                             <asp:DropDownList class="form-select" Width="50%" ID="ddl_cryptos" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="crypto" DataValueField="crypto" OnSelectedIndexChanged="ddl_cryptos_SelectedIndexChanged">

                    </asp:DropDownList>
                    <br />
                    <asp:TextBox ID="tb_withdrawamt" step="any" type="number" min="0" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_bal" runat="server"></asp:Label>
                    <br />
                             <asp:DropDownList class="form-select" Width="50%" ID="ddl_cryptos2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="crypto" DataValueField="crypto" OnSelectedIndexChanged="ddl_cryptos2_SelectedIndexChanged">

                    </asp:DropDownList>
                    <br />
                    <asp:TextBox ID="tb_withdrawamt2" step="any" type="number" min="0" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_bal2" runat="server"></asp:Label>

                    <br />
                    <br />
                    <p>Trading fees on pool: %</p><asp:TextBox runat="server" ID="tb_fees" min="0" step="0.01" type="number"/>
                    <br />
                    <br />
                                        <asp:Button ID="btn_ConfirmPair" runat="server" class="btn btn-primary" Text="Confirm Pair and Fees" OnClick="btn_ConfirmPair_Click"/>

                    
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersContext %>" SelectCommand="SELECT * FROM [Balances] WHERE ([email] = @email)">
                            <SelectParameters>
                                <asp:SessionParameter Name="email" SessionField="email" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    
<div></div></div></div></div><div class="col-lg-4"><div class="card"><div class="card-body"><h5 class="card-title">Chosen ratio:</h5><asp:Label ID="lbl_ratio" runat="server" Text=""></asp:Label>
<br />
<h5 class="card-title">Chosen fees:<asp:Label ID="lbl_fees" color="black" runat="server"></asp:Label>
%</h5>
    <br />
    <br />
    <asp:Button ID="btn_Confirm" class="btn btn-success" runat="server" Text="Confirm pool creation" OnClick="btn_Confirm_Click" />
    <asp:Label ID="lbl_error" runat="server" />
                                                                     </div></div></div>
            </div></section>      


    </body>
</asp:Content>