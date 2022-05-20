<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="Display_Data.Receipt" %>

<!DOCTYPE html>



<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .head {
            font-weight: boldder;
            color: black;
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
            gap: 1.3px;
            background-color: #2196F3;
            padding: 2px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

            .grid-container > div {
                background-color: snow;
                font-weight: bold;
                padding: 20px 0;
                font-size: 12px;
            }

        .grid-container1 {
            display: grid;
            grid-template-columns: auto auto auto auto auto auto auto;
            gap: 2px;
            background-color: #2196F3;
            padding: 2px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

            .grid-container1 > div {
                background-color: snow;
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
            margin-top: 10px;
            margin-bottom: 10px;
        }

            .grid-container2 > div {
                background-color: snow;
                font-weight: bold;
                padding: 10px 0;
                font-size: 15px;
            }

        .item1 {
            grid-column: 1 / 3;
            text-align: center;
        }

        .item2 {
            grid-column: 3 / 6;
            text-align: center;
        }

        .item3 {
            grid-column: 6 / 8;
            text-align: center;
        }

        .item4 {
            grid-row: 2 / 5;
            text-align: center;
        }

        .item5 {
            grid-row: 2 / 5;
            text-align: center;
        }

        .item6 {
            grid-column: 3 / 5;
            text-align: left;
        }

        .item7 {
            grid-column: 5 / 6;
            grid-row: 2 / 5;
            text-align: center;
        }

        .item8 {
            grid-column: 6 / 8;
            grid-row: 2 / 5;
            text-align: center;
        }

        .item9 {
            grid-column: 3 / 5;
            grid-row: 3 / 4;
            text-align: left;
        }

        .item10 {
            grid-column: 3 / 5;
            grid-row: 4 / 4;
            text-align: left;
        }

        h6 {
            text-align: center;
            color: black;
            font-weight: bold;
        }

        div.container {
            border-radius: 50px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        div.container {
            border: 2px solid;
            padding: 20px;
            width: 800px;
            height: 350px:
            /*resize: both;*/
            overflow: auto;
        }

        h1 {
            font-size: 50px;
            font-style: italic;
            display: inline-block;
        }

        h5 {
            margin-top: -40px;
            margin-bottom: -10px;
            font-size: large;
        }

        h6 {
            margin-top: -5px;
            margin-bottom: -5px;
            font-size: large
        }

        div.data_grid {
            margin-top: 20px;
        }
        /* div {
            width: 4000px;
            margin: auto;
            border: 1px solid #4287f5;
        }*/
    </style>
    <%--<link href="Def_Style.css" rel="stylesheet" type="text/css"/>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

    <%--<h2>Accordion</h2>--%>

    <button class="accordion">Click here to Open/Close the reciept..</button>
    <div class="container">
        <div>
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
                <div align="left" class="gc1-item">Name of the agent : </div>
                <div><a id="AName">Agen name will be here</a></div>
                <div class="gc1-item">Bill No.: </div>
                <div><a id="BillNo">Bill no will be here</a></div>
                <div class="gc1-item">Agent Code No. : </div>
                <div><a id="ACode">Agent Code will be here</a></div>
                <div class="gc1-item">Date : </div>
                <div><a id="Date">Today date will be shown here</a></div>
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
                <div>____DATA____</div>
                <div>____DATA____</div>
                <div>____DATA____</div>
                <div>____DATA____</div>
                <div>____DATA____</div>
                <div>____DATA____</div>
                <div>____DATA____</div>
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
        </div>

    </div>

    <form id="form1" runat="server">
        <div class="data_grid">
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




    <script>
        $(document).ready(function () {
            $("button").click(function () {
                $(".container").fadeToggle("slow");
            });
        });
    </script>

</body>
</html>


