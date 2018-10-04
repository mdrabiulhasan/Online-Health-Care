<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="DoctorProcess4.aspx.cs" Inherits="OSHCCSApp.UI.DoctorProcess4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">    
        <br />
        <div class="row">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h4>Online Consult Information</h4>
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
                                        Consult Day:
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
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn  btn-default" OnClick="btnSave_Click" />
                                        &nbsp;&nbsp;
                            <asp:Button ID="Button6" runat="server" Text="Cancel" CssClass="btn btn-default" />
                                    </div>
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
    <script>
        //$('.check').click(function () {
        //    $('.check').each(function () {
        //        $(this).prop('disabled', 'disabled');
        //    });
        //});
    </script>
</asp:Content>
