<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="EditDoctorProfile.aspx.cs" Inherits="OSHCCSApp.UI.EditDoctorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container" id="wrap">
        <div class="row">
        </div>
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>Edit Profile</h4>
                        <asp:Label ID="messageLabel" runat="server"></asp:Label>
                    </div>
                    <div class="panel-body">
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
                                    <label>Full Name :</label>
                                    <asp:TextBox ID="txtDoctorFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Category:</label>
                                    <asp:DropDownList ID="ddlDoctorCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Designation:</label>
                                    <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>About:</label>
                                    <asp:TextBox ID="txtAbout" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Hospital:</label>
                                    <asp:TextBox ID="txtHospital" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Chember:</label>
                                    <asp:TextBox ID="txtChember" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Country:</label>
                                    <asp:TextBox ID="txtCountry" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contro-group form-group">
                                <div class="controls">
                                    <label>District:</label><asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="contro-group form-group">
                                <div class="controls">
                                    <label>City/Village:</label><asp:TextBox ID="txtCityVillage" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Password:</label>
                                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <%-- <div class="control-group form-group">
                                <div class="controls">
                                    <label>New Password:</label>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>--%>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Email Address:</label>
                                    <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Phone Number:</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Time Schedule:</label>
                                    <asp:TextBox ID="txtTimeschedule" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success" Width="150px" OnClick="btnUpdate_Click"/>
                        &nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" Width="150px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
