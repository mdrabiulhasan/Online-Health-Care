<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AddLabTest.aspx.cs" Inherits="OSHCCSApp.UI.AddLabTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-lg-offset-1">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h4>Lab Test Information</h4>
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
                                    Lab Name<asp:TextBox ID="txtLabName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Test Name:
                                    <asp:TextBox ID="txtTestName" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                          
                        </div>
                        <div class="col-sm-6">
                            <div class="contro-group form-group">
                                <div class="controls">
                                    District:
                                    <asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contro-group form-group">
                                <div class="controls">
                                    Address/Location:
                                    <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                          <div class="control-group form-group">
                                <div class="controls">
                                    About:
                                    <asp:TextBox ID="txtAbout" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-default" OnClick="btnSave_Click"/>
                        &nbsp;&nbsp;
                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-default" OnClick="btnClear_Click" />
                        <hr />
                        <h4>Sub Tests Info</h4>
                        <hr />
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    Select Lab Name:
                                    <asp:DropDownList ID="ddLab" runat="server" CssClass="form-control" >
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="control-group form-group">
                                <div class="controls">
                                    Select Test Name:
                                    <asp:DropDownList ID="ddTestId" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div> 
                                <asp:Button ID="btnSaveSubTest" runat="server" Text="Save" CssClass="btn btn-default" OnClick="btnSaveSubTest_Click"/>
                        &nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn btn-default" />                          
                        </div>
                        <div class="col-sm-6">                            
                            <div class="control-group form-group">
                                <div class="controls">
                                    Sub Test:
                                <asp:TextBox ID="txtSubtest" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Price:
                                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
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
