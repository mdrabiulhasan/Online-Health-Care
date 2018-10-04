<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="OSHCCSApp.UI.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4><i class="fa fa-fw fa-gift"></i>Our Service Team</h4>
            </div>
            <div class="panel-body">
                <asp:DataList ID="DataList1" runat="server"  RepeatColumns="5">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-md-6">
                                <img src="<%#Eval("Photo") %>" height="100" width="80" /><br/>
                                <b>Name:</b><%#Eval("doctorFullName") %><br/><b>Designation:</b><%#Eval("designation") %><br/><a href="#" class="btn btn-default">Read More</a>
                              
                              
                            </div>
                        </div>
                    </ItemTemplate>

                </asp:DataList>

            </div>
        </div>

        <!--Product Services-->
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h4><i class="fa fa-fw fa-gift"></i>Our Product Service</h4>
            </div>
            <div class="panel-body">
                 <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-md-4">
                                <img src='<%#Eval("orgPhoto") %>' height="240px" width="90%" /><br/>                              
                                <p>
                                    <a href="#" class="btn btn-default">Read More</a>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>

                </asp:DataList>

                <div class="row">
                    <div class="col-md-4">
                        <img src="images/pharmecy.jpg" height="220px" width="80%" alt="photo" />
                        <p>
                            Pharmecy:
                        </p>
                        <p>
                            <a href="#" class="btn btn-default">Read More</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <img src="images/pharmecy.jpg" height="220px" width="80%" alt="photo" />
                        <p>
                            Pharmecy:
                        </p>
                        <p>
                            <a href="#" class="btn btn-default">Read More</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <img src="images/pharmecy.jpg" height="220px" width="80%" alt="photo" />
                        <p>
                            Pharmecy:
                        </p>
                        <p>
                            <a href="#" class="btn btn-default">Read More</a>
                        </p>
                    </div>

                </div>

            </div>
        </div>

    </div>
</asp:Content>
