<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Lab.Master" AutoEventWireup="true" CodeBehind="BookLabTests.aspx.cs" Inherits="OSHCCSApp.UI.BookLabTests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .jumbotron {
            background-image: url("images/ddi.jpg");
            min-height: 500px;
            padding-top: 0;
            background-repeat: no-repeat;
            color: black;
            text-align: center;
            padding-top: 70px;
            padding-bottom: 0px;
            margin: 0px;
            //overflow: initial;
        }

        .BannarContent {
            padding-top: 30px;
        }

        td {
            padding-left: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="jumbotron">
            <div class="container">
                <div class="BannarContent">
                    <div class="control-group form-group">
                        <div class="controls">
                            <h3 aria-atomic="True" aria-autocomplete="both">"Diagnostic Tests at your Doorstep"</h3>
                            <p>Book tests with top labs, get sample pick up, share reports with doctors online</p>
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                           <%-- <div class="row">
                                      <div class="col-lg-12">
                                          <asp:DropDownList ID="ddlTestName" runat="server" CssClass="form-control" AutoPostBack="true" ClientIDMode="Static">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <br />--%>
                            <div class="row">                             
                                 <div class="col-lg-12">
                                     
                                    <div class="form-inline">
                                        <div class="form-group">
                                            <asp:DropDownList ID="ddlTestName" runat="server" Style="border-radius:0px; height:40px; width:350px;" AutoPostBack="true" ClientIDMode="Static">
                                    </asp:DropDownList><asp:Button ID="Button2" runat="server" Text="Select" CssClass="btn btn-danger"  Style="border-radius:0px;height:40px;"/>
                                            <asp:TextBox ID="txtDistrict" runat="server" Placeholder="Search By District" Style="border-radius:0px; margin:auto; height:40px; width:250px; "></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-danger"  Style="border-radius:0px;height:40px;" OnClick="btnSearch_Click"/>
                                        </div>
                                    </div>

                                </div>                            
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 style="text-align: center">Recommended Test Packages</h2>
            </div>
        </div>
        <asp:DataList ID="dlLabInfo" runat="server" RepeatColumns="3" OnItemCommand="dlLabInfo_ItemCommand">
            <ItemTemplate>
                <div class="panel panel-default" style="box-shadow: 2px 1px 10px 0px;">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="LT" CommandArgument='<%#Eval("lab_name") %>' Style="color: red; font-size: 24px; text-decoration: none"> <%#Eval("lab_name") %></asp:LinkButton><br />
                                <%#Eval("address_or_location") %>
                                <hr />
                                <b style="color: green; font-size: 24px; text-decoration: none"><%#Eval("test_name") %></b><br />
                                <%#Eval("about") %><hr />
                                <%-- <%#Eval("district_or_city") %><br />--%>
                                <asp:Button ID="btnPickup" runat="server" Text="Schedule Pickup" CssClass="btn btn-danger" />
                            </div>

                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
