<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BIPJ_sharedcopy.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/fontstyle.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Login #7</title>
  </head>
<body>
    <form id="form1" runat="server">
  <div class="content">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="/Images/Black_And_White_Modern_Eagle_logo_-removebg-preview.png" alt="Image" class="img-fluid">
        </div>
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-8">
              <div class="mb-4">
                  <br />
                  <br />
                  <br />
              <h3>Sign In</h3>
              <p class="mb-4"></p>
            </div>
            <form action="#" method="post">
              <div class="form-group first">
                  <asp:TextBox placeholder="Username" style="font-size:12px;" ID="tb_email" runat="server" class="form-control"></asp:TextBox>

              </div>
              <div class="form-group last mb-4">
                  <asp:TextBox ID="tb_password" placeholder="Password" style="font-size:12px;" runat="server" type="password" class="form-control"></asp:TextBox>
              </div>
                                  <asp:Label style="color:red" ID="lbl_wrong" runat="server" />

              
              <div class="d-flex mb-5 align-items-center">
                  <span class="caption"><a href="signup.aspx"">Sign up</a></span>

              </div>
                <asp:Button ID="btn_login" runat="server" class="btn btn-block btn-primary" Text="Log In" OnClick="btn_login_Click" />

              
              
            </form>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</form>
</body>
</html>
