<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Display_Data.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Receipt Details</title>
    <link href="Def_Style.css" rel="stylesheet" />
    <%--<style>
        .head{
            font-weight: boldder;
            color:black;
        }
        .accordion {
            background-color: #eee;
            color: #444;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
            transition: 0.4s;
        }

            .active, .accordion:hover {
                background-color: #ccc;
            }

        .panel {
            padding: 0 18px;
            display: none;
            background-color: white;
            overflow: hidden;
        }

        .grid-container {
            display: grid;
            grid-template-columns: auto auto auto auto;
            gap: 2px;
            background-color: #2196F3;
            padding: 2px;
        }

            .grid-container > div {
                background-color: rgba(255, 255, 255, 0.8);
                font-weight: bold;
                padding: 20px 0;
                font-size: 10px;
            }

        .grid-container1 {
            display: grid;
            grid-template-columns: auto auto auto auto auto auto auto;
            gap: 2px;
            background-color: #2196F3;
            padding: 2px;
        }

            .grid-container1 > div {
                background-color: rgba(255, 255, 255, 0.8);
                text-align: center;
                font-weight: bold;
                padding: 20px 0;
                font-size: 10px;
            }

        .grid-container2 {
            display: grid;
            grid-template-columns: auto auto auto auto auto auto auto;
            gap: 1px;
            background-color: #2196F3;
            padding: 2px;
        }

            .grid-container2 > div {
                background-color: rgba(255, 255, 255, 0.8);
                text-align: center;
                font-weight: bold;
                padding: 10px 0;
                font-size: 15px;
            }

        .item1 {
            grid-column: 1 / 3;
        }

        .item2 {
            grid-column: 3 / 6;
        }

        .item3 {
            grid-column: 6 / 8;
        }

        .item4 {
            grid-row: 2 / 5;
        }

        .item5 {
            grid-row: 2 / 5;
        }

        .item6 {
            grid-column: 3 / 5;
        }

        .item7 {
            grid-column: 5 / 6;
            grid-row: 2 / 5;
        }

        .item8 {
            grid-column: 6 / 8;
            grid-row: 2 / 5;
        }

        .item9 {
            grid-column: 3 / 5;
            grid-row: 3 / 4;
        }

        .item10 {
            grid-column: 3 / 5;
            grid-row: 4 / 4;
        }

        h6 {
    text-align: center;
    color:black;
    font-weight: bold;
}
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>AMRAT</h2>
            <%--<h3>Enter the Agent Code : 
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="A_Code" DataValueField="A_Code">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmratConnectionString %>" SelectCommand="SELECT [A_Code] FROM [Agent]"></asp:SqlDataSource>
            </h3>
            <asp:Button class="button" ID="Button1" runat="server" Text="Submit" OnClick="Btn_Click"  />--%>

            <label for="ACode">Entere the Agent Code : </label>
            <%--<input type="text" id="ACode" name="ACode" placeholder="Agent Code..">--%>
            <asp:TextBox ID="ACode" runat="server" placeholder ="Agent Code.."></asp:TextBox>
            </br>
            <label for="BCode">Select the branch : </label>
            <select id="BCode" name="BCode">
                <option value="secunderabad">Secunderabad</option>
                <option value="abids">Abids</option>
            </select>
            <%--<input type="submit" value="Submit" onclick ="Btn_Click">--%>
            <asp:Button ID="btnsend" runat="server" Text="Submit" OnClick="Btn_Click" />
        </div>

    </form>
    <%--<div>
                <div class="head">
                    <h1>AMRAT</h1>
                    <h5>Chits(India) Pvt.Ltd
                </br>
                Regd. Office:1111, 11th Floor,
                </br>
                Raghava Ratna Towers
                </br>
                 ChiragAli Lane Abids Hyderabad 500001
                Branch : Abids
                    </h5>
                    </br>
                </div>
                <div>
                    <hr />
                    <h6>AGENT'S COMMISSION BILL </h6>
                </div>
                <hr />
                <div class="grid-container">
                    <div align="left">Name of the agent : </div>
                    <div></div>
                    <div>Bill No.: </div>
                    <div></div>
                    <div>Agent Code No. : </div>
                    <div></div>
                    <div>Date : </div>
                    <div></div>
                </div>
                <div>
                    <hr />
                    <h6>PARTICULARS</h6>
                </div>
                <hr />
                <div class="grid-container1">
                    <div>Sl.No</div>

                    <div>Date of Enrollment</div>

                    <div>Chit Reference</div>

                    <div>Name</div>

                    <div>Chit Value</div>

                    <div>Amount</div>

                    <div>Remarks</div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <div>
                </div>
                <hr />
                <div>
                    Total : 
            <br />
                    Rupees :
                </div>
                <hr />
                <div class="grid-container2">
                    <div class="item1">Branch OFFICE USE</div>
                    <div class="item2">Central OFFICE USE</div>
                    <div class="item3">Agent</div>
                    <div class="item4">Prepared by </br></br></br>Accountant</div>
                    <div class="item5">Ledger Checked by</br></br></br> Manager</div>
                    <div class="item6">Total Amount: _______</div>
                    <div class="item7">Checked by</br></br></br> Passed by</div>
                    <div class="item8"></br></br></br>Signature</div>
                    <div class="item9">Less TDS : ______</div>
                    <div class="item10">Balance: ______</div>
                </div>
            </div>--%>
</body>
</html>


