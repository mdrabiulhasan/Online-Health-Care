<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="UpdateDoctorProfile.aspx.cs" Inherits="OSHCCSApp.UI.UpdateDoctorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h4>Personal Information</h4>
                        <hr />
                        <asp:Panel runat="server" CssClass="alert alert-warning alert-dismissable" ID="warningPanel" Visible="False" ClientIDMode="Static">
                            <button type="button" runat="server" class="close" data-dismiss="alert" aria-hidden="True">&times</button>
                            <h4 id="errorName" runat="server"></h4>
                            <span id="errorText" runat="server"></span>
                        </asp:Panel>
                        <asp:Panel ID="successPanel" runat="server" CssClass="alert alert-success alert-dismissible" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <span runat="server" id="alertText"></span>
                        </asp:Panel>
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    Category:
                                    <asp:DropDownList ID="ddlDoctorCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Designation:
                                    <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    About:
                                    <asp:TextBox ID="txtAbout" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                              <div class="control-group form-group">
                                <div class="controls">
                                  New Password:
                                    <asp:TextBox ID="txtNewPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>                        
                        </div>
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    Country:
                                    <asp:TextBox ID="txtCountry" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contro-group form-group">
                                <div class="controls">
                                    District:
                                    <asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contro-group form-group">
                                <div class="controls">
                                    City/Village:
                                    <asp:TextBox ID="txtCityVillage" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                  Confirm  Password:
                                    <asp:TextBox ID="txtConPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                                    <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-default" />
                        &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-default" />
                        </div>                       
                        <hr />
                        <h4>Appointment Place & Time Schedule</h4>
                        <hr />
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    Appointment Day:
                                    <asp:DropDownList ID="ddlDay" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="">Select Day</asp:ListItem>
                                        <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
                                        <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
                                        <asp:ListItem Value="Monday">Monday</asp:ListItem>
                                        <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                                        <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                                        <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                                        <asp:ListItem Value="Friday">Friday</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Hospital Name:
                                <asp:TextBox ID="txtHospital" runat="server" CssClass="form-control" placeholder="Enter Your Hospital"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Chamber:
                                <asp:TextBox ID="txtChamber" runat="server" CssClass="form-control" placeholder="Enter Your Chamber"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="control-group form-group">
                                Time Schedule:
                              <hr />
                                <div class="controls">
                                    Start Time:<asp:DropDownList ID="ddlStartTime" runat="server">
                                        <asp:ListItem Value="">Select One</asp:ListItem>
                                        <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                        <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                        <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                        <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                        <asp:ListItem Value="%PM">5PM</asp:ListItem>
                                        <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                        <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                        <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                    </asp:DropDownList>

                                    End Time:<asp:DropDownList ID="ddlEndTime" runat="server">
                                        <asp:ListItem Value="">Select One</asp:ListItem>
                                        <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                        <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                        <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                        <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                        <asp:ListItem Value="5PM">5PM</asp:ListItem>
                                        <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                        <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                        <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <hr />
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Visit Amount:
                            <hr />
                                    New Patient:<asp:TextBox ID="txtNewPatientVisit" runat="server"></asp:TextBox><br />
                                    <br />
                                    Old Patient:&nbsp;&nbsp;<asp:TextBox ID="txtOldPatientVisit" runat="server"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <asp:Button ID="Button3" runat="server" Text="Update" CssClass="btn btn-default" />
                        &nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn btn-default" />
                        <hr />
                        <h4>Consulting Online Schedule</h4>                          
                        <hr />
                            <div class="col-sm-6">
                                <div class="control-group form-group">
                                    <div class="controls">
                                        Consult Day:
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="">Select Day</asp:ListItem>
                                        <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
                                        <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
                                        <asp:ListItem Value="Monday">Monday</asp:ListItem>
                                        <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                                        <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                                        <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                                        <asp:ListItem Value="Friday">Friday</asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                                </div>

                            </div>

                            <div class="col-lg-12">
                                <h4>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Value="Text Consult"  CssClass="check"/>Text Consult</h4>
                                <hr />
                                <div class="control-group form-group">
                                    <div class="controls">
                                        Start Time:<asp:DropDownList ID="ddTstartTime" runat="server">
                                            <asp:ListItem Value="">Select One</asp:ListItem>
                                            <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                            <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                            <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                            <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                            <asp:ListItem Value="%PM">5PM</asp:ListItem>
                                            <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                            <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                            <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                        End Time:<asp:DropDownList ID="ddTEndTime" runat="server">
                                            <asp:ListItem Value="">Select One</asp:ListItem>
                                            <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                            <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                            <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                            <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                            <asp:ListItem Value="5PM">5PM</asp:ListItem>
                                            <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                            <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                            <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        Consultant Amount:
                                <asp:TextBox ID="txtTamount" runat="server"></asp:TextBox>TK.
                                    </div>
                                </div>
                                <hr />
                            </div>
                            <div class="col-lg-12">
                                <h4>
                                    <asp:CheckBox ID="CheckBox2" runat="server"/>Phone Consult</h4>
                                <hr />
                                <div class="control-group form-group">
                                    <div class="controls">
                                        Start Time:<asp:DropDownList ID="ddPstartTime" runat="server">
                                            <asp:ListItem Value="">Select One</asp:ListItem>
                                            <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                            <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                            <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                            <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                            <asp:ListItem Value="%PM">5PM</asp:ListItem>
                                            <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                            <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                            <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                        End Time:<asp:DropDownList ID="ddPendTime" runat="server">
                                            <asp:ListItem Value="">Select One</asp:ListItem>
                                            <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                            <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                            <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                            <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                            <asp:ListItem Value="5PM">5PM</asp:ListItem>
                                            <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                            <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                            <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        Consultant Amount:
                                <asp:TextBox ID="txtPAmount" runat="server"></asp:TextBox>TK.
                                    </div>
                                </div>
                                <hr />
                            </div>
                            <div class="col-lg-12">
                                <h4>
                                    <asp:CheckBox ID="CheckBox3" runat="server" />Video Consult</h4>
                                <hr />
                                <div class="control-group form-group">
                                    <div class="controls">
                                        Start Time:<asp:DropDownList ID="ddVstartTime" runat="server">
                                            <asp:ListItem Value="">Select One</asp:ListItem>
                                            <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                            <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                            <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                            <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                            <asp:ListItem Value="%PM">5PM</asp:ListItem>
                                            <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                            <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                            <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;
                                        End Time:<asp:DropDownList ID="ddVendTime" runat="server">
                                            <asp:ListItem Value="">Select One</asp:ListItem>
                                            <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                            <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                            <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                            <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                            <asp:ListItem Value="5PM">5PM</asp:ListItem>
                                            <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                            <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                            <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        Consultant Amount:
                                <asp:TextBox ID="txtVAmount" runat="server"></asp:TextBox>TK.
                                    </div>
                                </div>
                                <hr />                               
                            </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <asp:Button ID="btnProcess4" runat="server" Text="Update" CssClass="btn  btn-default" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
