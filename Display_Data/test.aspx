<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Display_Data.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <style type="text/css">
        body {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 500px">
            <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="Customer Id" />
                    <asp:BoundField DataField="CName" HeaderText="Name" />
                    <asp:BoundField DataField="Country" HeaderText="Country" />
                </Columns>
            </asp:GridView>

        </div>

    </form>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        $(function () {
            $.ajax({
                type: "POST",
                url: "test.aspx/GetCustomers",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                },
                error: function (response) {
                    alert(response.d);
                }
            });
        });
        function OnSuccess(response) {
            $("[id*=gvCustomers]").DataTable(
                {
                    bLengthChange: true,
                    lengthMenu: [[5, 10, -1], [5, 10, "All"]],
                    bFilter: true,
                    bSort: true,
                    bPaginate: true,
                    data: response.d,
                    columns: [{ 'data': 'CustomerID' },
                    { 'data': 'CName' },
                    { 'data': 'Country' }]
                });
        };
    </script>
</body>
</html>
