<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="GrideView.aspx.cs" Inherits="OSHCCSApp.UI.GrideView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-default">
            <%--<div class="panel-heading">
                <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                <h4><i class="fa fa-fw fa-user"></i>Doctors Grid View</h4>
            </div>--%>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-inline">
                            <div class="form-group">
                                <asp:TextBox ID="txtDocUserName" runat="server" CssClass="form-control" placeholder="Enter UserName..."></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-success" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1">
                        <asp:Button ID="btnView" runat="server" Text="AllView" CssClass="btn btn-success" OnClick="btnView_Click" />
                    </div>
                    <div class="col-sm-4"></div>
                </div>
                <div class="row">
                    <hr />
                    <asp:GridView ID="GrideViewDoctorInfo" runat="server" AutoGenerateColumns="False" CellPadding="4" CellSpacing="5" AllowPaging="True" PageSize="6" OnPageIndexChanging="DoctorGridView_PageIndexChanging"
                        OnRowCommand="GrideViewDoctorInfo_RowCommand" OnRowDeleting="GrideViewDoctorInfo_RowDeleting" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"
                        OnRowDataBound="GrideViewDoctorInfo_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="SL#">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DoctorEmail">
                                <ItemTemplate>
                                    <asp:Label ID="lbldocId" runat="server" Text='<%#Eval("doctorEmail") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="FullName">
                                <ItemTemplate><%#Eval("doctorFullName") %></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category">
                                <ItemTemplate><%#Eval("category") %></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation">
                                <ItemTemplate><%#Eval("designation") %></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country">
                                <ItemTemplate><%#Eval("country") %></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="District">
                                <ItemTemplate><%#Eval("district") %></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone No">
                                <ItemTemplate><%#Eval("doctorPhone") %></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                    <img src="<%#Eval("Photo") %>" height="40" width="40" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Button ID="btnApprover" runat="server" Text='<%#Eval("approverYN") %>' CssClass="btn btn-info" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Publish Y/N">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnYes" runat="server" CommandName="Y">Yes</asp:LinkButton>
                                    <asp:LinkButton ID="btnNo" runat="server" CommandName="N">No</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
                            <asp:CommandField ShowSelectButton="true" HeaderText="Select" />
                        </Columns>

                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
