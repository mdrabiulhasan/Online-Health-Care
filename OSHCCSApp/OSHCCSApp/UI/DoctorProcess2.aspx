<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="DoctorProcess2.aspx.cs" Inherits="OSHCCSApp.UI.DoctorProcess2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="panel-body">
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Date of Birth:</label>
                                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>National ID:</label>
                                    <asp:TextBox ID="txtNid" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Category:</label>
                                    <asp:DropDownList ID="ddlDoctorCategory" runat="server" CssClass="form-control" AutoPostBack="true">
                                    </asp:DropDownList>
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
                                    <label>BMDC Reg.No:</label>
                                    <asp:TextBox ID="txtBmdcNo" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>About:</label>
                                    <asp:TextBox ID="txtAbout" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
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
                            <div class="contro-group form-group">
                                <div class="controls">
                                    <label>City/Village:</label><asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>

                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Password:</label>
                                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Photo:</label>
                                    <asp:FileUpload ID="doctorPhotoUpload" runat="server" />
                                    <asp:Image ID="Image1" Width="140px" Height="110px" runat="server" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <asp:Button ID="btnProcess2" runat="server" Text="Process" CssClass="btn btn-lg btn-danger btn-block" OnClick="btnProcess2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
