<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="CheckoutForm1.aspx.cs" Inherits="BIPJ_sharedcopy.CheckoutForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!DOCTYPE html> 
    <style type="text/css">
        .auto-style3 {
            width: 50%;
        }
        .auto-style8 {
            height: 77px;
        }
        .auto-style9 {
            width: 128px;
        }
        .auto-style10 {
            height: 77px;
            width: 161px;
        }
        .auto-style11 {
            width: 218px;
        }
        .auto-style12 {
            height: 77px;
            width: 218px;
        }
        .auto-style13 {
            height: 33px;
        }
        .auto-style14 {
            width: 218px;
            height: 33px;
        }
        .auto-style15 {
            width: 161px;
            height: 33px;
        }
        .auto-style16 {
            height: 45px;
        }
        .auto-style17 {
            width: 218px;
            height: 45px;
        }
        .auto-style18 {
            width: 161px;
            height: 45px;
        }
        .auto-style19 {
        height: 126px;
    }
    .auto-style20 {
        height: 126px;
        width: 218px;
    }
    .auto-style21 {
        height: 126px;
        width: 161px;
    }
        .auto-style22 {
            width: 161px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <table class="auto-style3">
        <tr>
            <td>Shipping to</td>
            <td class="auto-style11">
                <asp:dropdownlist ID="ddl_ShippingTo" runat="server">
                    <asp:ListItem>Singapore </asp:ListItem>
                    <asp:ListItem>Overseas</asp:ListItem>
                </asp:dropdownlist>
            </td>
            <td class="auto-style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">Shipping To (state or province)</td>
            <td class="auto-style17">
                <asp:TextBox ID="tb_ShippingToState" runat="server" CausesValidation="True"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:RequiredFieldValidator ID="rfv_ShippingTo" runat="server" ControlToValidate="tb_ShippingToState" ErrorMessage="Please enter a valid Shipping State." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv_ShippingToState" runat="server" ErrorMessage=" Only Alphabets are allowed!" ControlToValidate="tb_ShippingToState" ForeColor="Red" Operator="DataTypeCheck"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Full Name</td>
            <td class="auto-style20">
                <asp:TextBox ID="tb_FullName" runat="server" CausesValidation="True"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="rfv_FullName" runat="server" ControlToValidate="tb_FullName" ErrorMessage="Please enter your full name." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv_FullName" runat="server" ErrorMessage=" Only Alphabets are allowed!" ControlToValidate="tb_FullName" ForeColor="Red" Operator="DataTypeCheck"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Delivery Address</td>
            <td class="auto-style14">
                <asp:TextBox ID="tb_DeliveryAddress" runat="server" CausesValidation="True"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="rfv_DeliveryAddress" runat="server" ErrorMessage="Please enter your delivery address" ForeColor="Red" ControlToValidate="tb_DeliveryAddress"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Postal Code</td>
            <td class="auto-style11">
                <asp:TextBox ID="tb_PostalCode" runat="server" CausesValidation="True"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="rfv_PostalCode" runat="server" ErrorMessage="Please enter a valid Postal Code." ForeColor="Red" ControlToValidate="tb_PostalCode"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="cv_PostalCode" runat="server" ControlToValidate="tb_PostalCode" ErrorMessage="Only Numeric Interger is allowed!" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Payment Method</td>
            <td class="auto-style11">
                <asp:RadioButtonList ID="rbl_PaymentMethod" runat="server">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>MasterCard</asp:ListItem>
                    <asp:ListItem>Paypal</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;<br />             
        <div id="smart-button-container">
      <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 

  <div id="smart-button-container">
      <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>
    </div>
  <script src="https://www.paypal.com/sdk/js?client-id=AcXGRO6fpwEsnY8SETbnK1pY3TRgXHy-ShiowuQMzqIaI-XTVNL9Kd81X2WC0no2alZUFOru2yOLJKM1&enable-funding=venmo&currency=SGD" data-sdk-integration-source="button-factory"></script>
  <script>
      function initPayPalButton() {
          paypal.Buttons({
              style: {
                  shape: 'rect',
                  color: 'gold',
                  layout: 'vertical',
                  label: 'paypal',

              },

              createOrder: function (data, actions) {
                  return actions.order.create({
                      purchase_units: [{ "description": "Midnight Blue Debit Card", "amount": { "currency_code": "SGD", "value": 32.0, "breakdown": { "item_total": { "currency_code": "SGD", "value": 32 }, "shipping": { "currency_code": "SGD", "value": 0 }, "tax_total": { "currency_code": "SGD", "value": 0 } } } }]
                  });
              },

              onApprove: function (data, actions) {
                  return actions.order.capture().then(function (orderData) {

                      // Full available details
                      console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                      // Show a success message within this page, e.g.
                      const element = document.getElementById('paypal-button-container');
                      element.innerHTML = '';
                      element.innerHTML = '<h3>Thank you for your payment!</h3>';

                      // Or go to another URL:  actions.redirect('thank_you.html');

                  });
              },

              onError: function (err) {
                  console.log(err);
              }
          }).render('#paypal-button-container');
      }
      initPayPalButton();
  </script>
                <br />
                <br />
                <br />
               

            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="rfv_PayementMethod" runat="server" ControlToValidate="rbl_PaymentMethod" ErrorMessage="Please enter a valid Payment Method" ForeColor="Red"></asp:RequiredFieldValidator>  
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Confirm Order Summary</td>
            
            <td class="auto-style12">
   
                <asp:RadioButtonList ID="rbl_OrderSummary" runat="server">
                    <asp:ListItem>$32.00</asp:ListItem>
                </asp:RadioButtonList>

            </td>
            
            <td class="auto-style10">
                &nbsp;<asp:RequiredFieldValidator ID="rfv_OrderSummary" runat="server" ControlToValidate="rbl_OrderSummary" ErrorMessage="Please confirm your Order Summary!" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style11">
                <br />
            &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm Purchase" Width="190px" />
                &nbsp; &nbsp; 
                &nbsp; &nbsp;&nbsp;&nbsp;
                <br />
                <asp:ValidationSummary ID="vs_Checkout" runat="server" ShowMessageBox="True" />
            </td>
            <td class="auto-style22">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
