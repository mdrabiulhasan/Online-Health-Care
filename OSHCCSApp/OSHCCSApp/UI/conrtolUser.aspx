<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="conrtolUser.aspx.cs" Inherits="OSHCCSApp.UI.conrtolUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class=" form-group">
                    <asp:TextBox ID="txtPatientId" runat="server" CssClass="form-control" placeholder="Enter Your User ID...."></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="form-group">
                    <%--<label></label><br/>--%>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-success" />
                </div>
            </div>
             <div class="col-sm-2">
                <div class="form-group">
                    <asp:Button ID="Button2" runat="server" Text="AllView" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
        <div class="row">
            <asp:GridView ID="userGridView" runat="server" AutoGenerateColumns="False" CellPadding="3" OnRowdeleting="userGridView_RowDeleting" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:TemplateField HeaderText="SL#">
                        <ItemTemplate>
                            <%#Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Id">
                        <ItemTemplate>
                            <asp:Label ID="lblDeletePatient" runat="server" Text='<%#Eval("paitenUserId")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Name">
                        <ItemTemplate><%#Eval("fullName") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Country">
                        <ItemTemplate><%#Eval("country") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="E-mail">
                        <ItemTemplate><%#Eval("email") %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone No">
                        <ItemTemplate><%#Eval("phoneNo") %></ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:CommandField ShowDeleteButton="true" HeaderText="Delete"/>
                    <asp:CommandField ShowselectButton="true" HeaderText="Select"/>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
