<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AboutOrganaization.aspx.cs" Inherits="OSHCCSApp.UI.AboutOrganaization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <%--  About Chairman--%>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                        <h4><i class="fa fa-fw fa-user"></i>About Chairman</h4>
                    </div>
                    <div class="panel-body">
                        <asp:Panel ID="warningPanel" runat="server" CssClass="alert alert-warning alert-dismissible" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <span runat="server" id="errorText"></span>
                        </asp:Panel>
                        <asp:Panel ID="successPanel" runat="server" CssClass="alert alert-success alert-dismissible" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <span runat="server" id="alertText"></span>
                        </asp:Panel>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label> Name:</label>
                                    <asp:TextBox ID="txtChairmanName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Designation:</label>
                                    <asp:TextBox ID="txtChairmandesignation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Email:</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Photo:</label>
                                    <asp:FileUpload ID="chairmanPhoto" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="saveButton" runat="server" Text="Save" CssClass="btn btn-success"   OnClick="saveButton_Click"/>
                        &nbsp;&nbsp;                            
                    <asp:Button ID="resetBtn" runat="server" Text="Reset" CssClass="btn btn-warning"  /> 
                        &nbsp;&nbsp;  <asp:Button ID="btnChairAllView" runat="server" Text="AllView" CssClass="btn btn-default"  OnClick="btnChairAllView_Click"/>  
                    </div>
                    <asp:GridView ID="GridViewChairman" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="White" BorderColor="#999999"
                        BorderStyle="Solid" BorderWidth="1px" OnRowDeleting="GridViewChairman_RowDeleting" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:TemplateField HeaderText="SL#">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%#Eval("chairmanName")%>'></asp:Label>                                  
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation">
                                <ItemTemplate>
                                    <%#Eval("chairmanDesignation")%>                                   
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <%#Eval("chairmanEmail")%>                                   
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                     <img src="<%#Eval("chairmanPhoto") %>" height="40" width="40" />                                  
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" />
                            <asp:CommandField HeaderText="Select" ShowSelectButton="true" ShowHeader="true" />
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
            <div class="col-md-6">
                        <%--  Add Service Pannel--%>
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                    <h4><i class="fa fa-fw fa-user"></i>About Director</h4>
                </div>
                  <div class="panel-body">
                        <asp:Panel ID="warningPanel1" runat="server" CssClass="alert alert-warning alert-dismissible" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <span runat="server" id="errorText1"></span>
                        </asp:Panel>
                        <asp:Panel ID="successPanel1" runat="server" CssClass="alert alert-success alert-dismissible" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <span runat="server" id="alertText1"></span>
                        </asp:Panel>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label> Name:</label>
                                    <asp:TextBox ID="txtDirector" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Designation:</label>
                                    <asp:TextBox ID="txtDirectorDesignation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Email:</label>
                                    <asp:TextBox ID="txtDirectorEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Photo:</label>
                                    <asp:FileUpload ID="directorPhoto" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                 <div class="panel-footer">
                    <asp:Button ID="btnSaveService" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSaveService_Click"/>
                    &nbsp;&nbsp;                            
                    <asp:Button ID="btnClear" runat="server" Text="Reset" CssClass="btn btn-warning"  OnClick="btnClear_Click"/>
                     &nbsp;&nbsp;  <asp:Button ID="btnAllView" runat="server" Text="View" CssClass="btn btn-default" OnClick="btnAllView_Click"/>                   
                </div>
               <asp:GridView ID="GridViewDirector" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="White" BorderColor="#999999"
                        BorderStyle="Solid" BorderWidth="1px" OnRowDeleting="GridViewDirector_RowDeleting" ForeColor="Black" GridLines="Vertical" >
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:TemplateField HeaderText="SL#">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblNames" runat="server" Text='<%#Eval("directorName")%>'></asp:Label>                                  
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation">
                                <ItemTemplate>
                                    <%#Eval("directorDesignation")%>                                   
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <%#Eval("directorEmail")%>                                   
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                     <img src="<%#Eval("directorPhoto") %>" height="40" width="40" />                                 
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Delete" ShowDeleteButton="true" ShowHeader="true" />
                            <asp:CommandField HeaderText="Select" ShowSelectButton="true" ShowHeader="true" />
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
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
