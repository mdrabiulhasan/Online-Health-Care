<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="HealthCard.aspx.cs" Inherits="OSHCCSApp.UI.HealthCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td {
            padding-left: 8px;
             
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label><br />
            </div>
        </div>
       <%-- <div class="row">--%>
            <asp:DataList ID="DataListPackages" runat="server" RepeatColumns="2">
                <ItemTemplate>
                    <div class="panel panel-default" style="box-shadow: 2px 1px 10px 0px;">                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-2">
                                    <img src="<%#Eval("Photo") %>"  alt="Circle Image" style="width: 70px; height: 70px; border-radius: 40px;"/>                                  
                                </div>
                                <div class="col-md-5">
                                    <b><%#Eval("PackageName") %></b><br />
                                    <%#Eval("PackageDescription") %><br />
                                    <br />
                                    <b>Package Price:<%#Eval("PackagePrice") %></b><br /><a href="OrderForm.aspx" class="btn btn-primary">Buy Now</a>
                                </div>                              
                            </div>
                        </div>
                        </div>
                </ItemTemplate>
            </asp:DataList>
      <%--  </div>--%>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
