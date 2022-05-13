<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R.aspx.cs" Inherits="Display_Data.R" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial;
            font-size: 10pt;
        }

        table {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }

            table th {
                background-color: #F7F7F7;
                color: #333;
                font-weight: bold;
            }

            table th, table td {
                padding: 5px;
                border-color: #ccc;
            }

        .auto-style1 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerId] = @CustomerId)">
                <SelectParameters>
                    <asp:CookieParameter CookieName="Username" DefaultValue="0" Name="CustomerId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>




            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                </Columns>
            </asp:GridView>


        </div>

    </form>

</body>
</html>

