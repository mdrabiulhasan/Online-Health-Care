<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="AnsQuestion.aspx.cs" Inherits="OSHCCSApp.UI.AnsQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a href="#"><b><i class="fa fa-question" style="font-size: 18px; color: red"></i></b>&nbsp;</a>

                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <asp:GridView ID="gvAnsQuestion" runat="server" AutoGenerateColumns="False" CellPadding="3" AllowPaging="True" PageSize="8"
                                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" GridLines="Vertical" OnRowCommand="gvAnsQuestion_RowCommand" OnRowDataBound="gvAnsQuestion_RowDataBound">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:TemplateField HeaderText="SL#">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="User Name">
                                        <ItemTemplate><%#Eval("userFullName") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="id">
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Phone No">
                                        <ItemTemplate><%#Eval("userPhoneNo") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate><%#Eval("userEmail") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Questions">
                                        <ItemTemplate><%#Eval("userQuestion") %></ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Button ID="btnApprover" runat="server" Text='<%#Eval("status") %>' CssClass="btn btn-info" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button ID="btnFeedBack" runat="server" Text="Feed Back" CommandName="Y" CssClass="btn btn-primary" />
                                            <%--<asp:Button ID="btnViewDetails" runat="server" Text="View Details" CssClass="btn btn-primary" CommandName="D" />--%>
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
            <div class="col-lg-8">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <asp:Label ID="lblqId" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <asp:TextBox ID="txtUserEmail" runat="server" CssClass="form-control" Text=' <%#Eval("userEmail") %>'></asp:TextBox><br />
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("userQuestion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:DataList>
                        Question Id:<asp:TextBox ID="txtQuestionId" runat="server"></asp:TextBox>
                    </div>
                    <div class="panel-body">
                        <textarea rows="7" cols="100" class="form-control" id="txtAnswer" runat="server" maxlength="999" style="resize: none"></textarea>

                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            &nbsp;&nbsp;Photo Upload :
                                        <asp:FileUpload ID="AnsphotoUpload" runat="server" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="footer">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAnswer" runat="server" Text="Answer" CssClass="btn btn-success" OnClick="btnAnswer_Click" />
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
