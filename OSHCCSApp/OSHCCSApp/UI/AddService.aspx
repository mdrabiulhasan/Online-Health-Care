<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AddService.aspx.cs" Inherits="OSHCCSApp.UI.AddService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                    <h4><i class="fa fa-fw fa-user"></i>Add Service</h4>
                </div>                
                <div class="panel-body">
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
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>About Service:</label>
                            <section>
                                <textarea id="froalaeditor" runat="server" class="froalaEditor"></textarea>
                            </section>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">
                    <asp:Button ID="saveButton" runat="server" Text="Save" CssClass="btn btn-success" Width="150px" OnClick="saveButton_Click"  />
                    &nbsp;&nbsp;                            
                    <asp:Button ID="resetBtn" runat="server" Text="Reset" CssClass="btn btn-warning" Width="150px"  />
                </div>
            </div>

        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">

</asp:Content>
