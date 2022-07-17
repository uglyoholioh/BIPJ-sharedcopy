<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="debitcard2.aspx.cs" Inherits="BIPJ_sharedcopy.debitcard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="113px" OnSelectedIndexChanged="gvCard_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField AccessibleHeaderText="Card Ref" DataField="Card_Id" HeaderText="Card Tier" />
                    <asp:BoundField AccessibleHeaderText="Card Name" DataField="Card_Name" HeaderText="Card Name" />
                    <asp:BoundField AccessibleHeaderText="Subscription Cost" DataField="Subscription_Cost" HeaderText="Subscription Cost" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
