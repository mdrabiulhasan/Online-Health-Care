<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="AppointmentForm.aspx.cs" Inherits="OSHCCSApp.UI.AppointmentForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
              <div class="row">
            <div class=" col-lg-8 col-lg-offset-2">
                <asp:DataList ID="dlDocAppointments" runat="server" >
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-2">
                                        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="80px" Height="80px" Style="border-radius: 50px" />
                                    </div>
                                    <div class="col-md-5">
                                        &nbsp;&nbsp;<b><%#Eval("doctorFullName") %></b><br />
                                        &nbsp;&nbsp;<%#Eval("category") %>,
                                        <%#Eval("Designation") %><br />
                                        <asp:Label ID="lblhName" runat="server" Text='<%#Eval("HospitalNmae")%>'></asp:Label>                                        
                                       <%#Eval("subDistrict") %>,
                                        <%#Eval("district") %>
                                    </div>
                                    <div class="col-sm-4">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-offset-2 col-lg-8">
                <div class="panel panel-info" style="border: none;">
                    <div class="panel-heading" style="text-align:center">
                        <p>Appointment Date/Time</p>
                    <asp:Label ID="lblGetDateTime" runat="server" Text=""></asp:Label>
                        <a href="DoctorAppointment.aspx" style="color:red; text-decoration:none; float:right">Change</a>
                    </div>
                    <asp:Label ID="lblMsg" runat="server" Text="" ></asp:Label>
                    <div class="panel-body">
                        <asp:Panel runat="server" CssClass="alert alert-warning alert-dismissable" ID="warningPanel" Visible="False" ClientIDMode="Static">
                            <button type="button" runat="server" class="close" data-dismiss="alert" aria-hidden="True">&times</button>
                            <h4 id="errorName" runat="server"></h4>
                            <span id="errorText" runat="server"></span>
                        </asp:Panel>

                        <div class="control-group form-group">
                            <div class="controls">
                                Patient Name:
                                    <asp:TextBox ID="txtPatientName" CssClass="form-control" runat="server" placeholder="Enter Your Full Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                Phone Number:
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter Your Phone No"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                Email Address:
                                <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter Your Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <asp:Button ID="btnAppointment" runat="server" Text="Process" CssClass="btn btn-lg btn-danger btn-block" OnClick="btnAppointment_Click"/>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
