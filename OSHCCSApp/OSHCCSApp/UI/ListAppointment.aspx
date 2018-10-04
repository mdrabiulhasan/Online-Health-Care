<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="ListAppointment.aspx.cs" Inherits="OSHCCSApp.UI.ListAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class='input-group'>
                                        <input type='text' class="form-control pickDate" runat="server" id="Text1" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <asp:Button ID="Button2" runat="server" Text="AppointmentDate" CssClass="btn btn-success" />
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <asp:Button ID="btnAllView" runat="server" Text="All View" CssClass="btn btn-success" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <asp:GridView ID="gvAppointmentList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" ClientIDMode="Static" AllowPaging="true" pageSize="5" OnPageIndexChanging="gvAppointmentList_PageIndexChanging" AllowSorting="True" >
                            <Columns>
                                <asp:TemplateField HeaderText="SL#">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Patient Name">
                                    <ItemTemplate><%#Eval("patientName") %></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText=" Appointment Date ">
                                    <ItemTemplate><%#Eval("appointmentDate") %></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Patient Email">
                                    <ItemTemplate><%#Eval("patientEmail") %></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Phone">
                                    <ItemTemplate><%#Eval("paitentPhone") %></ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:Button ID="btnMail" runat="server" Text="Send Email" CommandName="Yes" CssClass="btn btn-info" />
                                        <asp:Button ID="btnViewDetails" runat="server" Text="View Patient" CssClass="btn btn-primary" CommandName="D" />
                                        <asp:Button ID="Button1" runat="server" Text="Delete" CssClass="btn btn-danger" OnClientClick = "return confirm('Are you sure you want to delete?');"/>
                                    </ItemTemplate>
                                </asp:TemplateField>
<%--                                <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
                                <asp:CommandField ShowSelectButton="true" HeaderText="Select" />--%>
                            </Columns>

                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" Font-Size="Larger" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
