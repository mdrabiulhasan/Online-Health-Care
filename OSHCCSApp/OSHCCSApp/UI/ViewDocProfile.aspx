<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="ViewDocProfile.aspx.cs" Inherits="OSHCCSApp.UI.ViewDocProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
         <div class="row">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <div class="panel panel-default">
                        <div class="panel-body" style="background-color:#00C0E8;">
                            <div class="row">
                                <div class="col-md-4 col-lg-offset-5">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="100px" Height="100px" style="border-radius:60px;"/>
                                </div>
                            </div>
                            <div class="row">                               
                                <div class="col-md-4 col-lg-offset-5">
                                    <h3 style="color:white"><%#Eval("doctorFullName") %></h3>
                                    <%#Eval("Designation") %>,
                                    <%#Eval("Category") %><br />
                                    <%#Eval("district") %><br />
                                    Email:<%#Eval("DoctorEmail") %>
                                </div>                               
                                 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       
                            </div>
                        </div>                      
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <h4>Personal Statement</h4>
                <asp:DataList ID="DataList4" runat="server">
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">                                     
                                      
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p>Dr. A.K.Chatterjee is a Dermatologist, Cosmetologist and Venereologist in Ram Nagar, Delhi and has an experience of 29 years in these fields. Dr. A.K.Chatterjee practices at Chatterjee Sk......more</p><%#Eval("about") %>
                                    </div>
                                </div>
                            </div>
                    </ItemTemplate>
                </asp:DataList>
                
                <h4>Details Info</h4>
                <asp:DataList ID="DataList3" runat="server">
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <i class="fa fa-fw fa-user"></i><b>Speciality</b><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Category") %>
                                        <br />
                                        <i class="fa fa-fw fa-book"></i><b>Education</b><br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MBBS - UCMS (Delhi), - 1976
DVD - Maulana Azad Medical College - 1988,<%#Eval("Designation") %>
                                    </div>
                                </div>
                            </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-lg-7">
                <h4>Book Hospital Appointment with</h4>
                <asp:DataList ID="DataList2" runat="server" OnItemCommand="DataList2_ItemCommand">
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-3">
                                       &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="100px" Height="110px" />

                                    </div>
                                    <div class="col-md-5">
                                       <%-- <asp:Label ID="Label1" runat="server" Text='<%#Eval("HospitalNmae") %>' commandName="GHN" CommandArgument='<%#Eval("HospitalNmae")%>'></asp:Label>--%>
                                       <b><%#Eval("HospitalNmae") %></b><br />
                                        <%#Eval("ChamberName") %>,&nbsp;<%#Eval("subDistrict") %><br />
                                        <%#Eval("district") %>
                                    </div>
                                    <div class="col-sm-4">
                                        Day:&nbsp;&nbsp;<%#Eval("days") %><br />
                                        Duration:&nbsp;&nbsp;<%#Eval("StartTime") %> to &nbsp;&nbsp;<%#Eval("endTime") %>
                                        <br />
                                        New Patient Visit:&nbsp;&nbsp;<%#Eval("NewVisit") %><br />
                                        Old Patient Visit:&nbsp;&nbsp;<%#Eval("OldVisit") %>
                                    </div>
                                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       
                                </div>
                            </div>
                            <div class="panel-footer">
                                <asp:Button ID="Button1" runat="server" Text=" Call Doctor" CssClass="btn btn-default" />
                                <asp:Button ID="btnGetAppoint" runat="server" Text="APPOINTMENT" CssClass="btn btn-success" CommandName="APP" CommandArgument='<%#Eval("doctorEmail") %>'/>

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <br />
                <h4>Consult Online</h4>
                <asp:DataList ID="dlDocconsultInfo" runat="server" OnItemCommand="dlDocconsultInfo_ItemCommand">
                    <ItemTemplate>
                        <div class="panel panel-default">
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
                                <asp:Button ID="btnPhoneConsult" runat="server" Text="Consult Online"  class="btn btn-danger" style="float: right" CommandName="OPC" CommandArgument='<%#Eval("doctorEmail") %>'/>                               
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
