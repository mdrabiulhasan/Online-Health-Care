<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Lab.Master" AutoEventWireup="true" CodeBehind="LabDetails.aspx.cs" Inherits="OSHCCSApp.UI.LabDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-lg-8">
                <asp:DataList ID="dlLabDetails" runat="server">
                    <ItemTemplate>
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <asp:LinkButton ID="LinkButton1" runat="server" Style="color: red; font-size: 24px; text-decoration: none"> <%#Eval("lab_name") %></asp:LinkButton><br />
                                            <%#Eval("address_or_location") %>
                                            <hr />
                                            <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><b style="color: green; font-size: 24px; text-decoration: none"><%#Eval("test_name") %></b></a>
                                            </div>                                            
                                            <div id="collapseOne" class="panel-collapse collapse">
                                                <div class="panel-body">  
                                                    Test:<%#Eval("sub_test_name") %><br />  Test Price:<%#Eval("test_price") %>                                                
                                                </div>
                                            </div>
                                                </div>                          
                                            <%#Eval("about") %><br />                                            
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                    </div>
                    <div class="panel-body">
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
