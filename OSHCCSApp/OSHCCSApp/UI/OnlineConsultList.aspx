<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="OnlineConsultList.aspx.cs" Inherits="OSHCCSApp.UI.OnlineConsultList" %>

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
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <asp:Button ID="btnAppointmentDate" runat="server" Text="Consulting Date" CssClass="btn btn-success" />
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <asp:Button ID="btnAllView" runat="server" Text="All View" CssClass="btn btn-success" OnClick="btnAllView_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-9">
                                <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
                                <asp:GridView ID="gvConsultingList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="none" BorderWidth="1px" CellPadding="4" ClientIDMode="Static" OnRowCommand="gvConsultingList_RowCommand" Width="956px" AllowPaging="True" PageSize="5" OnPageIndexChanging="gvConsultingList_PageIndexChanging">
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL#">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Patient Name">
                                            <ItemTemplate><%#Eval("patientName") %></ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Patient ID">
                                            <ItemTemplate>                                                
                                                <asp:Label ID="lblPatientId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Patient Phone">
                                            <ItemTemplate><%#Eval("PhoneNo") %></ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Patient Email">
                                            <ItemTemplate>
                                                  <%#Eval("patientEmail") %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="ConsultingType">
                                            <ItemTemplate><%#Eval("consultType") %></ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Doctor Fee">
                                            <ItemTemplate><%#Eval("doctorFee") %></ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:Button ID="btnMail" runat="server" Text="Send Email" CommandName="Y" CssClass="btn btn-info" />
                                                <asp:Button ID="btnViewDetails" runat="server" Text="View Patient" CssClass="btn btn-primary" CommandName="ViewPd" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:CommandField ShowDeleteButton="true" HeaderText="Delete" />
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

        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
