<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="DoctorAppointment.aspx.cs" Inherits="OSHCCSApp.UI.DoctorAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td {
            padding: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="wrapper">
         <div class="row">
            <asp:DataList ID="dlBasicInfo" runat="server">
                <ItemTemplate>
                    <div class="panel panel-default">
                        <div class="panel-body" style="background-color:#00C0E8;">
                            <div class="row">
                                <div class="col-md-4 col-lg-offset-5">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="100px" Height="100px" style="border-radius:60px;"/>
                                </div>
                            </div>
                            <div class="row">                               
                                <div class="col-md-4 col-lg-offset-5">
                                    <h3 style="color:white"><%#Eval("doctorFullName") %></h3>
                                    <%#Eval("Designation") %>,
                                    <%#Eval("Category") %><br />
                                    <%#Eval("district") %>,
                                    Email:<%#Eval("DoctorEmail") %>
                                </div>                               
                                 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       
                            </div>
                        </div>
                       <%-- <div class="panel-footer">
                            <asp:Button ID="Button1" runat="server" Text=" Call Doctor" CssClass="btn btn-default" />
                            <asp:Button ID="Button2" runat="server" Text="Consult Online" CssClass="btn btn-danger" />
                            <asp:Button ID="btnGetAppoint" runat="server" Text="APPOINTMENT" CssClass="btn btn-success" />

                        </div>--%>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class=" col-lg-8 col-lg-offset-2">
                <asp:DataList ID="dlDocAppointments" runat="server">
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <%--<div class="col-md-2">
                                        &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="80px" Height="80px" Style="border-radius: 50px" />
                                    </div>--%>
                                    <div class="col-md-5">
                                        <%--&nbsp;&nbsp;<b><%#Eval("doctorFullName") %></b><br />
                                        &nbsp;&nbsp;<%#Eval("category") %>,
                                        <%#Eval("Designation") %><br />--%>
                                        <h4><%#Eval("HospitalNmae") %></h4>
                                      <%#Eval("ChamberName") %>, <%#Eval("subDistrict") %>,
                                        <%#Eval("district") %>
                                    </div>
                                    <div class="col-sm-4">
                                             Day:&nbsp;&nbsp;<%#Eval("days") %><br/>
                                            Duration:&nbsp;&nbsp;<%#Eval("StartTime") %> to &nbsp;&nbsp;<%#Eval("endTime") %> <br/>
                                            New Patient Visit:&nbsp;&nbsp;<%#Eval("NewVisit") %><br/>
                                            Old Patient Visit:&nbsp;&nbsp;<%#Eval("OldVisit") %>
                                        </div>
                                    <div class="col-sm-3">
                                        <asp:Button ID="Button2" runat="server" Text="Select " CssClass="btn btn-danger"/>
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
            <div class=" col-lg-8 col-lg-offset-2">
                <%-- <div class="panel panel-default">
                    <div class="panel-body">
                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="8">
                            <ItemTemplate>                                
                                <asp:Button ID="btn2" runat="server" Text='<%#Eval("Dates") %>' CssClass="btn btn-default" BorderStyle="None"/><br />
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>--%>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="btnshowTime" runat="server" Text="Show Time" OnClick="btnshowTime_Click" />&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <hr />

                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" Width="330px" OnSelectionChanged="Calendar1_SelectionChanged" BorderStyle="Solid" CellSpacing="4" Format="MM dd yyyy">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" Wrap="True" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                        <hr />
                        <asp:DataList ID="dlLoadDateTime" runat="server" RepeatColumns="8" OnItemCommand="dlLoadDateTime_ItemCommand">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text='<%#Eval("time") %>' CssClass="btn btn-default" Style="border-color: green; color: green" CommandName="tAppointment" CommandArgument='<%#Eval("time") %>' /><br />
                            </ItemTemplate>
                        </asp:DataList>
                        <hr />
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Date of Birth:</label>
                                <div class='input-group'>
                                    <input type="text" class="form-control pickDate" runat="server" id="txtDate" />
                                    <%-- <asp:TextBox ID="txtDates" runat="server" class="form-control pickDate"></asp:TextBox>--%>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
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
    <script src="../Plugins/bootstap-datepicker/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        $(".pickDate").datepicker({
            format: "M dd yyyy",
            autoclose: true,
            // format:"yyyy-mm-dd",
            //setDate: "d",
            todayHilight: true,

        });
    </script>

</asp:Content>
