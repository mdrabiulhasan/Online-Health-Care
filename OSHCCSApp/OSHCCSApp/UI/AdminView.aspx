<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="OSHCCSApp.UI.AdminView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class=" form-group">
                    <asp:TextBox ID="txtAdminId" runat="server" CssClass="form-control" placeholder="Enter Your User ID...."></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <%--<label></label><br/>--%>
                    <asp:Button ID="brnSearch" runat="server" Text="Search" CssClass="btn btn-success" OnClick="brnSearch_Click"/>
                </div>
            </div>
             <div class="col-sm-2">
                <div class="form-group">
                    <asp:Button ID="btnView" runat="server" Text="AllView" CssClass="btn btn-success" OnClick="btnView_Click"/>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:GridView ID="admingridView" runat="server" AutoGenerateColumns="False" CellPadding="4" OnRowDeleting="admingridView_RowDeleting" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:TemplateField HeaderText="SL#">
                        <ItemTemplate>
                            <%#Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AdminId">
                        <ItemTemplate>
                            <asp:Label ID="lblDeleteAdmin" runat="server" Text='<%#Eval("UserId")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Name">
                        <ItemTemplate><%#Eval("FullName") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate><%#Eval("Email") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PhoneNo">
                        <ItemTemplate><%#Eval("phoneNo") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <img src="<%#Eval("Photo") %>" height="40" width="40" /></ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="true" HeaderText="Delete"/>
                    <asp:CommandField ShowselectButton="true" HeaderText="Select"/>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
