<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="DoctorsProfile.aspx.cs" Inherits="OSHCCSApp.UI.DoctorsProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-comment fa-4x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <asp:Label ID="Label1" runat="server" Text="">12</asp:Label>
                                </div>
                                <div>Today Appointment!</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-comment fa-4x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <asp:Label ID="Label2" runat="server" Text="">12</asp:Label>
                                </div>
                                <div>Pending Appointment!</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-comment fa-4x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge">
                                    <asp:Label ID="Label3" runat="server" Text="">12</asp:Label>
                                </div>
                                <div>Active Appointment!</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <a href="AnsQuestion.aspx">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-comment fa-4x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">
                                        <asp:Label ID="lblNewQuestion" runat="server"></asp:Label>
                                    </div>
                                    <div>Question Notify!</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8">
                <div class="panel panel-info">
                    <%-- <div class="panel-heading">
                        <h5><i class="fa fa-fw fa-gift"></i>Click <a href="#" style="text-decoration: none;">Eidt Profile</a>||<a href="#" style="text-decoration: none;">Veiw Appoientment List</a></h5>
                    </div>--%>
                    <div class="panel-body">
                        <h4>Bsic Information</h4>
                        <hr />
                        <asp:DataList ID="DataListDoctorLog" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-md-3">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="130px" Height="130px" />
                                    </div>
                                    <div class="col-md-1">
                                    </div>
                                    <div class="col-md-7 ">
                                        <br />
                                        <br />
                                        <%#Eval("doctorFullName") %><br />
                                        <%#Eval("Designation") %>,<%#Eval("category") %><br />
                                        Status:&nbsp;<%#Eval("approverYN") %>
                                    </div>                                    
                                </div>
                                <div class="row">
                                    <hr />
                                    <div class="col-lg-12">
                                        
                                    National ID:<%#Eval("nId") %><br />
                                    BMDC Reg. No:<%#Eval("bmdcNo") %><br />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <hr />
                                        <h4>Personal Statement</h4>
                                        <hr />
                                        <%#Eval("about") %><br />
                                        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <hr />
                                        <h4>Details Information</h4>
                                        <hr />
                                        City:<%#Eval("cityOrVillage") %><br />
                                        District:<%#Eval("district") %><br />
                                        Nationality:<%#Eval("country") %>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
        </div>
        <h4>My Hospital Information</h4>
        <div class="row">
            <div class="col-lg-12">
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <div class="panel panel-info">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <b><%#Eval("HospitalNmae") %></b><br />
                                        <%#Eval("ChamberName") %>,&nbsp;<%#Eval("subDistrict") %><br />
                                        <%#Eval("district") %>
                                    </div>
                                    <div class="col-md-6">
                                        Day:&nbsp;&nbsp;<%#Eval("days") %><br />
                                        Duration:&nbsp;&nbsp;<%#Eval("StartTime") %> to &nbsp;&nbsp;<%#Eval("endTime") %>
                                        <br />
                                        New Patient Visit:&nbsp;&nbsp;<%#Eval("NewVisit") %><br />
                                        Old Patient Visit:&nbsp;&nbsp;<%#Eval("OldVisit") %>
                                    </div>
                                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                                <hr />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <h4>Consult Online Information</h4>
        <div class="row">
            <div class="col-lg-12">
                <asp:DataList ID="dlDocconsultInfo" runat="server">
                    <ItemTemplate>
                        <div class="panel panel-info">
                            <div class="panel-body">
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
                                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                            
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
