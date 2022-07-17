<%@ Page Title="" Language="C#" MasterPageFile="~/NewSite.Master" AutoEventWireup="true" CodeBehind="debitcard.aspx.cs" Inherits="BIPJ_sharedcopy.debitcard1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!DOCTYPE html> 
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="113px" OnSelectedIndexChanged="gvCard_SelectedIndexChanged" Width="799px">
                <Columns>
                    <asp:BoundField AccessibleHeaderText="Card Ref" DataField="Card_Id" HeaderText="Card Tier" />
                    <asp:BoundField AccessibleHeaderText="Card Name" DataField="Card_Name" HeaderText="Card Name" />
                    <asp:BoundField AccessibleHeaderText="Subscription Cost" DataField="Subscription_Cost" HeaderText="Subscription Cost" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
