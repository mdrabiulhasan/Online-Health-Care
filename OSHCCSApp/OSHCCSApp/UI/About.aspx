<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OSHCCSApp.UI.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br/>
        <div class="row">
            <div class="col-md-3">
                <asp:DataList ID="DataListChairman" runat="server">
                    <ItemTemplate>
                        <img src='<%#Eval("chairmanPhoto") %>' height="250px" width="80%" />
                        <b>Name:</b><%#Eval("chairmanName") %><br/>
                        <b>Designation:</b><%#Eval("chairmanDesignation") %><br/>
                        <b>Email:</b><%#Eval("chairmanEmail") %>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>Scope of this System</h4>
                    </div>
                    <div class="panel-body">
                        <asp:DataList ID="DataListOrganization" runat="server">
                            <ItemTemplate>
                                <%#Eval("aboutOrganization") %>
                            </ItemTemplate>
                        </asp:DataList>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <asp:DataList ID="DataListDirector" runat="server">
                    <ItemTemplate>
                        <img src='<%#Eval("directorPhoto") %>' height="250px" width="80%" />
                        <b>Name:</b><%#Eval("directorName") %><br/>
                        <b>Designation:</b><%#Eval("directorDesignation") %><br/>
                        <b>Email:</b><%#Eval("directorEmail") %>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
