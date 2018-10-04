<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="pakcagesOrder.aspx.cs" Inherits="OSHCCSApp.UI.pakcagesOrder" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                        <h4><i class="fa fa-fw fa-user"></i>Package Orders</h4>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-4">
                                &nbsp;&nbsp;<asp:Label ID="lblMessage" runat="server" ForeColor="#009933"></asp:Label>
                                <div class="form-inline">
                                    <div class="form-group">
                                        Search:
                                        <asp:TextBox ID="txtSearch" runat="server" class="form-control" placeholder="Search Here.."></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4"></div>
                            <div class="col-sm-4"></div>
                        </div>
                        <hr />
                        <div class="row">
                            <asp:GridView ID="GVPackageOrder" runat="server" AutoGenerateColumns="False" CellPadding="3" AllowPaging="True" PageSize="8"
                                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GridLines="Vertical" OnRowCommand="GVPackageOrder_RowCommand" OnRowDataBound="GVPackageOrder_RowDataBound">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:TemplateField HeaderText="SL#">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Customer Name">
                                        <ItemTemplate><%#Eval("fullName") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="id">
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Package Name">
                                        <ItemTemplate><%#Eval("packageName") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Phone No">
                                        <ItemTemplate><%#Eval("PhoneNo") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address">
                                        <ItemTemplate><%#Eval("addresses") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate><%#Eval("email") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="OrderStatus">
                                        <ItemTemplate>
                                            <asp:Button ID="btnApprover" runat="server" Text='<%#Eval("approvedYN") %>' CssClass="btn btn-info" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" CommandName="Y" CssClass="btn btn-primary" />
                                            <asp:Button ID="btnViewDetails" runat="server" Text="View Details" CssClass="btn btn-primary" CommandName="D" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </div>
                    </div>
                    <%--<div class="panel-footer">
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <p><i class="glyphicon glyphicon-shopping-cart"></i>Order Details</p>
                        <asp:TextBox ID="txtId" runat="server" CssClass="form-control" PlaceHolder="Enter Customer Id To Create Order Status.."></asp:TextBox>
                    </div>
                    <div class="panel-body">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                Order ID:<%#Eval("id")%><br />
                               <%-- <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("clientPhoto") %>' Width="90px" Height="100px" /><br />--%>
                                Customer:<%#Eval("fullName")%><br />
                                Package Name:<%#Eval("packageName") %><br />
                                Order Status:<%#Eval("ApprovedYN") %><br />
                                Address: <%#Eval("Addresses")%><br />
                                Phone No:<%#Eval("PhoneNo")%><br />
                                E-mail:<%#Eval("Email")%><br />
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <div class="footer">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="btn btn-success" OnClick="btnConfirm_Click" />
                        <asp:Button ID="btnPending" runat="server" Text="Pending" CssClass="btn btn-primary" OnClick="btnPending_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
                        <asp:Button ID="btnprint" runat="server" Text="Print Card" CssClass="btn btn-default" OnClick="btnprint_Click" />
                        <asp:Button ID="btnPrintAll" runat="server" Text="All Print" CssClass="btn btn-default" OnClick="btnPrintAll_Click" />
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                </div>
            </div>
            <CR:CrystalReportSource ID="CRS" runat="server" >
                <Report FileName="CeystalReport/ClientCR.rpt">
                </Report>                
            </CR:CrystalReportSource>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CRS"/>

           <%-- <CR:CrystalReportViewer ID="CrystalReportViewer" runat="server" AutoDataBind="True"
                Enabled="false" Visible="false" Height="1000px" PrintMode="ActiveX" ToolPanelView="None" />--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
