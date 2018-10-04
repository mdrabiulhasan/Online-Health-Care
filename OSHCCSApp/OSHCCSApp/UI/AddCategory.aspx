<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="OSHCCSApp.UI.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <%--  Add Doctor Category Pannel--%>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                        <h4><i class="fa fa-fw fa-user"></i>Add Doctor Category</h4>
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
                                    <label>Doctor Specialist/Doctor Category :</label>
                                    <asp:TextBox ID="txtDoctorCategory" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <div class="controls">
                                    <label>Hospital Name:</label>
                                    <asp:TextBox ID="txtHospitalname" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="saveButton" runat="server" Text="Save" CssClass="btn btn-default"  OnClick="saveButton_Click"/>
                        &nbsp;&nbsp;                            
                    <asp:Button ID="resetBtn" runat="server" Text="Reset" CssClass="btn btn-warning"  />
                         &nbsp;&nbsp;  <asp:Button ID="btnCategoryView" runat="server" Text="View" CssClass="btn btn-default" OnClick="btnCategoryView_Click"/>      
                    </div>
                    <asp:GridView ID="categoryGrideView" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="White" BorderColor="#999999"
                        BorderStyle="Solid" BorderWidth="1px" OnRowDeleting="categoryGrideView_RowDeleting" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:TemplateField HeaderText="SL#">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category">
                                <ItemTemplate>
                                    <%#Eval("Category")%>                                 
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lblcategory" runat="server" Text='<%#Eval("id")%>'></asp:Label>                                    
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
            <asp:Panel ID="warningPanel1" runat="server" CssClass="alert alert-warning alert-dismissible" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <span runat="server" id="errorText1"></span>
                        </asp:Panel>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                    <h4><i class="fa fa-fw fa-user"></i>Add Service</h4>
                </div>
                <div class="panel-body">
                   <asp:Panel ID="successPanel1" runat="server" CssClass="alert alert-success alert-dismissible" Visible="false" ClientIDMode="Static">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                            <span runat="server" id="alertText1"></span>
                        </asp:Panel>
                    <div class="control-group form-group">
                        <div class="controls">
                            <div class="controls">
                                <label>Service Photo:</label>
                                <asp:FileUpload ID="servicePhotoUpload" runat="server" CssClass="form-control" /><br />
                            </div>
                        </div>
                    </div>
                   <div class="control-group form-group">
                        <div class="controls">                            
                            <label>Message:</label>
                            <textarea rows="7" cols="100" class="form-control" id="txtMessage" runat="server" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                </div>
                 <div class="panel-footer">
                    <asp:Button ID="btnSaveService" runat="server" Text="Save" CssClass="btn btn-default"  OnClick="btnSaveService_Click"/>
                    &nbsp;&nbsp;                            
                    <asp:Button ID="btnClear" runat="server" Text="Reset" CssClass="btn btn-warning"  />
                     &nbsp;&nbsp;  <asp:Button ID="btnAllView" runat="server" Text="View" CssClass="btn btn-default"  OnClick="btnAllView_Click"/>                   
                </div>
                <asp:GridView ID="aboutOrgGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"
                    OnRowDeleting="aboutOrgGridView_RowDeleting" ForeColor="Black" GridLines="Vertical" >                   
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                            <asp:TemplateField HeaderText="SL#">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="AboutOrganization">
                                <ItemTemplate>
                                    <%#Eval("AboutOrganization")%>                                 
                                </ItemTemplate>
                            </asp:TemplateField>  
                          <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                    <img src='<%#Eval("orgPhoto") %>' height="50px" width="40px" />                               
                                </ItemTemplate>
                            </asp:TemplateField> 
                        <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="lblOrgId" runat="server" Text='<%#Eval("id")%> '></asp:Label>                                                                    
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
