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
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btn1"/>
            <a id="CustomerId">Customer Id will here</a>
            <a id="CName">Customer Name will be here</a>
            <a id="Country">Customer Address will be here</a>

        </div>

    </form>

</body>
</html>

