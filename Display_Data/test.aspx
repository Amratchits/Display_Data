<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Display_Data.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmratConnectionString %>" SelectCommand="Get_Bill_Details" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:CookieParameter CookieName="ACode" DefaultValue="0" Name="a_code" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="A_Code,SI_No" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="A_Name" HeaderText="Agent Name" SortExpression="A_Name" />
                    <asp:BoundField DataField="A_Code" HeaderText="Agent Code" ReadOnly="True" SortExpression="A_Code" />
                    <asp:BoundField DataField="Bill_No" HeaderText="Bill No" SortExpression="Bill_No" />
                    <asp:BoundField DataField="SI_No" HeaderText="SI_No" ReadOnly="True" SortExpression="SI_No" />
                    <asp:BoundField DataField="Date_Of_Enrollment" HeaderText="Date Of Enrollment" SortExpression="Date_Of_Enrollment" />
                    <asp:BoundField DataField="Chit_Ref" HeaderText="Chit Ref No" SortExpression="Chit_Ref" />
                    <asp:BoundField DataField="C_Name" HeaderText="Customer Name" SortExpression="C_Name" />
                    <asp:BoundField DataField="C_Value" HeaderText="Chit Value" SortExpression="C_Value" />
                    <asp:BoundField DataField="C_Amount" HeaderText="Comm Amount" SortExpression="C_Amount" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
