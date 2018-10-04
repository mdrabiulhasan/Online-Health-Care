<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AddPackage.aspx.cs" Inherits="OSHCCSApp.UI.AddPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                        <h4><i class="fa fa-fw fa-user"></i>Add/Edit/Delete Packages</h4>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Package Name:</label>
                                    <asp:TextBox ID="txtPackageName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Package Description:</label>
                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Package Price:</label>
                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Photo:</label>
                                    <asp:FileUpload ID="packagePhoto" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="btnAddPackage" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAddPackage_Click" />
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary" />
                        &nbsp;&nbsp;<asp:Button ID="btnClear" runat="server" Text="Reset" CssClass="btn btn-warning" />
                        &nbsp;&nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
                        &nbsp;&nbsp;<asp:Button ID="btnAllView" runat="server" Text="View" CssClass="btn btn-info" />
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <asp:ListView ID="ListView1" runat="server"></asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
