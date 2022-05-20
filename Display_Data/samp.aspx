<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="samp.aspx.cs" Inherits="Display_Data.samp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#btn1").click(function () {
                $("#test1").text('<%# Eval("CustomerId") %>'');
                $("#test2").text(='<%# Eval("CName") %>');
                $("#test3").text('<%# Eval("Country") %>');
                $("#test4").val("Dolly Duck");
            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="gv1" runat="server">
            <p id="test1">Id</p>
<%--            <asp:Label Text='<%# Eval("CustomerId") %>' runat="server" />--%>
            <p id="test2">Name</p>
<%--            <asp:Label Text='<%# Eval("CName") %>' runat="server" />--%>
            <p id="test3">Address</p>
<%--            <asp:Label Text='<%# Eval("Country") %>' runat="server" />--%>
            <p>Input field:
                <input type="text" id="test4" value="Mickey Mouse"></p>

            <button id="btn1" onclick="btnclick">Set Text</button>
        </div>

        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="CustomerId">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CustomerId") %>' runat="server" />
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CName">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("CName") %>' runat="server" />
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Country">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Country") %>' runat="server" />
                        </ItemTemplate>

                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
