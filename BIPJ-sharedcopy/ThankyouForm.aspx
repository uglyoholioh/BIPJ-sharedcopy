<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="ThankyouForm.aspx.cs" Inherits="BIPJ_sharedcopy.ThankyouForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 45px;
            width: 200px;
        }
        .auto-style9 {
            height: 45px;
        }
        .auto-style10 {
            width: 352px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thank you for your purchase!</h2>
     <table class="w-100">
         <tr>
             <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Invoice&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
             <td class="auto-style9">&nbsp;  &nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style9" colspan="2">&nbsp;Delivery Details:&nbsp;</td>
             <td class="auto-style9">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;Shipping To&nbsp;</td>
             <td class="auto-style10">&nbsp;<asp:Label ID="ShippingTo" runat="server" Text="Label"></asp:Label>
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;Shipping To (state or province)&nbsp;</td>
             <td class="auto-style10">
                
&nbsp;<asp:Label ID="ShippingToState" runat="server" Text="Label"></asp:Label>
                 
             </td>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;Full Name&nbsp;</td>
             <td class="auto-style10">&nbsp;<asp:Label ID="FullName" runat="server" Text="Label"></asp:Label>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;Delivery Address</td>
             <td class="auto-style10">&nbsp;<asp:Label ID="DeliveryAddress" runat="server" Text="Label"></asp:Label>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;Postal Code &nbsp;</td>
             <td class="auto-style10">&nbsp;<asp:Label ID="PostalCode" runat="server" Text="Label"></asp:Label>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style9" colspan="2">&nbsp;Payment:&nbsp;</td>
             <td class="auto-style9">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;Payment Method&nbsp;</td>
             <td class="auto-style10">&nbsp;<asp:Label ID="PaymentMethod" runat="server" Text="Label"></asp:Label>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style8">&nbsp;Order Summary&nbsp;</td>
             <td class="auto-style10">&nbsp;<asp:Label ID="OrderSummary" runat="server" Text="Label"></asp:Label>
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style9" colspan="2">&nbsp; &nbsp;<asp:Button ID="btn_Back" OnClick="btn_Back_Click" runat="server" Text="Back" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btn_Confirm" runat="server" OnClick="btn_Confirm_Click" Text="Confirm" />
             </td>
             <td class="auto-style9">&nbsp;</td>
         </tr>
     </table>
</asp:Content>
