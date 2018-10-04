<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="OSHCCSApp.UI.OrderForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-lg-12">
                <div class="col-sm-2">
                </div>
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a href="HealthCard.aspx"><i class="fa fa-fw fa-remove" style="float: right; color: red"></i></a>
                            <h4><i class="fa fa-fw fa-user"></i>Customer Order Form </h4>
                        </div>
                        <div class="panel-body">
                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label><br />
                            <div class="col-sm-6">
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Full Name :</label>
                                        <asp:TextBox ID="txtclientName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Phone Number:</label>
                                        <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Package Name:</label>
                                        <asp:DropDownList ID="ddlpackageName" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Divission:</label>
                                        <asp:TextBox ID="txtDivission" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Divission:</label>
                                        <asp:FileUpload ID="FUClientPhoto" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Distric:</label>
                                        <asp:TextBox ID="txtDistric" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Thana:</label>
                                        <asp:TextBox ID="txtThana" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Address:</label>
                                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Email Address:</label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="If you have/Not required"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="panel-footer">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-success" OnClick="btnRegister_Click" />
                            &nbsp;&nbsp;                            
                    <asp:Button ID="resetBtn" runat="server" Text="Reset" CssClass="btn btn-warning" OnClick="resetBtn_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
