<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="DoctorLogin.aspx.cs" Inherits="OSHCCSApp.UI.DoctorLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br/>
        <br />
        <br />
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <asp:Panel ID="warningPanel" runat="server" CssClass="alert alert-warning alert-dismissable" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <h4 id="errorName" runat="server"></h4>
                            <span runat="server" id="errorText"></span>
                        </asp:Panel>
                        <div class="form-group">
                            <asp:TextBox ID="txtDoctorEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtdoctorPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input name="remember" type="checkbox" value="Remember Me" />Remember Me
                            </label>
                        </div>
                        <asp:Button ID="btnLogin" runat="server" class="btn btn-lg btn-success btn-block" Text="Login" OnClick="btnLogin_Click"/>

                    </div>
                    <div class="panel-footer">
                        <a href="DoctorRegistration.aspx" style="float: right; text-decoration: none;">Registration</a>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
