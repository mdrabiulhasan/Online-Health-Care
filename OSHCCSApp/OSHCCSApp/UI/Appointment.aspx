<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="OSHCCSApp.UI.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h4><i class="fa fa-fw fa-gift"></i>Doctor Appointment||</h4>
                <asp:DataList ID="appoinmentDatalist" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td>Hi:&nbsp;<asp:Label ID="lblPatientName" runat="server" Text='<%#Eval("FullName") %>'></asp:Label>&nbsp;!&nbsp;Now you get doctor appoinment.

                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <p>
                    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                </p>
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
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <h3>Appointment Schedule</h3>
                        <hr />
                        <asp:Label ID="lbl1" runat="server"></asp:Label>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>DoctorID:</label>
                                <asp:TextBox ID="txtDocId" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Doctor Name :</label>
                                <asp:TextBox ID="txtDocFullName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Patient Name :</label>
                                <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Appoinment Place:</label>
                                <asp:TextBox ID="txtPlace" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Hospital:</label>
                                <asp:TextBox ID="txtHospitalName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Appoinment Date:</label>
                            <div class='input-group'>
                                <input type='text' class="form-control pickDate" runat="server" id="txtAppoinmentDate" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Select Appoinment Time:</label>
                                <asp:DropDownList ID="ddTimeSelect" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Select One" Value=""></asp:ListItem>
                                    <asp:ListItem Text="9 AM" Value="10 PM"></asp:ListItem>
                                    <asp:ListItem Text="10 AM" Value="10 PM"></asp:ListItem>
                                    <asp:ListItem Text="11 Am" Value="12 PM"></asp:ListItem>
                                    <asp:ListItem Text="12 Pm" Value="12 PM"></asp:ListItem>
                                    <asp:ListItem Text="1 PM" Value="10 PM"></asp:ListItem>
                                    <asp:ListItem Text="2 PM" Value="10 PM"></asp:ListItem>
                                    <asp:ListItem Text="3 PM" Value="10 PM"></asp:ListItem>
                                    <asp:ListItem Text="4 PM" Value="10 PM"></asp:ListItem>
                                    <asp:ListItem Text="5 PM" Value="10 PM"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Patient Phone :</label>
                                <asp:TextBox ID="txtPatientPhone" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <hr />
                        <asp:Button ID="btnAppointment" runat="server" Text="Ok" CssClass="btn btn btn-success" OnClick="btnAppointment_Click"/>
                        &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-warning" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="../Plugins/bootstap-datepicker/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        $(".pickDate").datepicker({
            autoclose: true, format: "yyyy-mm-dd", setDate: "d"
        });
    </script>
</asp:Content>
