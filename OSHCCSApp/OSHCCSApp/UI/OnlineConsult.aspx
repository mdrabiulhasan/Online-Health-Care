<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="OnlineConsult.aspx.cs" Inherits="OSHCCSApp.UI.OnlineConsult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <style>
        .jumbotron {
            background-image: url("images/HealthBannar.png");
            min-height: 500px;
            padding-top: 0;
            background-repeat: no-repeat;
            color: white;
            padding-top: 70px;
            padding-bottom: 0px;
            margin: 0px;
        }

        .BannarContent {
            padding-top: 30px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="wrapper">
        <div class="jumbotron">
            <div class="container">
                <div class="BannarContent">
                    <div class="control-group form-group">
                        <div class="controls">
                            <h3>"Find Trusted Medical Doctor According To category"</h3>
                            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" AutoPostBack="true" ClientIDMode="Static"></asp:DropDownList>
                        </div>
                    </div>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Trending Topics:"></asp:Label>
                    &nbsp; &nbsp;&nbsp;<a href="#" style="color: white">Nipha Virus Infection</a>
                    &nbsp; &nbsp;&nbsp;<a href="#" style="color: white">Chikon Ghuniya</a>
                    &nbsp; &nbsp;&nbsp;<a href="#" style="color: white">Diabetes</a>
                </div>
            </div>
        </div>
    </div>--%>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h5>Filter</h5>
                        <hr />                                                   
                          <asp:DropDownList ID="ddlDocCategory" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlDocCategory_SelectedIndexChanged"></asp:DropDownList>
                        
                        <p style="color: red">Specialist</p>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" />Medicine<br />
                        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" />Neurologist <br />
                        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" />Dermatology<br />
                        <asp:CheckBox ID="CheckBox8" runat="server" AutoPostBack="True" />Dentist<br />
                        <hr />
                        Gender
                            <hr />

                        <input id="Radio3" type="radio" name="name" value="anyGender" checked="" />Any Gender<br />
                        <input id="Radio2" type="radio" name="name" value="Male" checked="" />Male<br />
                        <input id="Radio1" type="radio" name="name" value="Female" />Female
                    </div>

                </div>
            </div>
            <div class="col-lg-9">
                <asp:DataList ID="dlOnlineConsultInfo" runat="server" OnItemCommand="dlOnlineConsultInfo_ItemCommand">
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row" style="background-color:#00C0E8; color:white">
                                    <div class="col-lg-12">
                                        &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Style="width: 60px; height: 60px; border-radius: 30px;" />
                                        &nbsp;<%#Eval("doctorFullName") %>
                                      ,&nbsp;<%#Eval("category") %>                                
                               ,&nbsp;Available:<%#Eval("days") %>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-5">
                                        <b><i class="fa fa-fw fa-envelope"></i><%#Eval("tConsult") %></b>
                                    </div>
                                    <div class="col-md-2">
                                        <%#Eval("tPrice") %>
                                    </div>
                                    <div class="col-md-3">
                                        Duration:<%#Eval("tStartTime") %> &nbsp;To &nbsp;<%#Eval("tEndTime") %>
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnTextConsult" runat="server" Text="Consult Online"  class="btn btn-danger" style="float: right" CommandName="OTC" CommandArgument='<%#Eval("doctorEmail") %>'/>                                                             
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-5">
                                        <b><i class="fa fa-fw fa-phone"></i><%#Eval("pConsult") %></b>
                                    </div>
                                    <div class="col-md-2">
                                        <%#Eval("pPrice") %>
                                    </div>
                                    <div class="col-md-3">
                                        Duration:<%#Eval("pStartTime") %> &nbsp;To &nbsp;<%#Eval("pEndTime") %>
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Text="Consult Online"  class="btn btn-danger" style="float: right" CommandName="OPC" CommandArgument='<%#Eval("doctorEmail") %>'/>                                
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-md-5">
                                        <b><i class="fa fa-fw fa-camera"></i><%#Eval("vConsult") %></b>
                                    </div>
                                    <div class="col-md-2">
                                        <%#Eval("vPrice") %>
                                    </div>
                                    <div class="col-md-3">
                                        Duration:<%#Eval("vStartTime") %> &nbsp;To &nbsp;<%#Eval("vEndTime") %>
                                    </div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Text="Consult Online"  class="btn btn-danger" style="float: right" CommandName="OVC" CommandArgument='<%#Eval("doctorEmail") %>'/>                                 
                                </div>
                            </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
