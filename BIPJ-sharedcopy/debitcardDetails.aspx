<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="debitcardDetails.aspx.cs" Inherits="BIPJ_sharedcopy.debitcardDetails1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 50%;
     }
    .auto-style2 {
        height: 31px;
     }
    .auto-style3 {
        width: 87px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
            Debit Card Details</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" rowspan="3">
                    <asp:Image ID="img_Card" runat="server" Width="201px" Height="159px" />
                </td>
                <td class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_CardName" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp; ( Tier
                    <asp:Label ID="lbl_CardID" runat="server" Text="Label"></asp:Label>
&nbsp;Reward Card)</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_CardDesc" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_SubscriptionCost" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;per month<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btn_Add" runat="server" Text="Purchase" OnClick="Btn_Add_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_back" runat="server" Text="Back" OnClick="btn_back_Click" />
                    <br />
                </td>
            </tr>
        </table>
</asp:Content>
