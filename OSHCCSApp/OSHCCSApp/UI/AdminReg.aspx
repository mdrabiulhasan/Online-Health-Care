<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="OSHCCSApp.UI.AdminReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <a href="index.aspx"><i class="fa fa-fw fa-home" style="float: right; color: white;"></i></a>
                        <h4><i class="fa fa-fw fa-user"></i>Admin Registration Form</h4>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="lblAlertMs" runat="server" Text=""></asp:Label><br/>
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <asp:Label ID="Label2" runat="server" Text="User ID:"></asp:Label>
                                    <asp:TextBox ID="txtAdminId" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>
                                    <asp:TextBox ID="txtAddName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Password:<asp:TextBox ID="txtAdminPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Email Address:<asp:TextBox ID="txtAdminEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    Phone Number:
                                    <asp:TextBox ID="txtAdminPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Photo:</label>
                                    <asp:FileUpload ID="FileUploadPhoto" runat="server" /><br />
                                </div>
                                <asp:Image ID="Image2" runat="server" Width="150px" Height="150px" />
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="btnCancel_Click" />
                    </div>
                </div>
                <div class="col-sm-2">
                </div>

            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="content3" ContentPlaceHolderID="script" runat="server">
    <script>
        $(function () {
            $("#adminForm").validate({
                rules: {
                    <%--<%=txtAdminId.UniqueID%>: "required",--%>
                    <%=txtAdminId.UniqueID%>: {
                        required: true,
                        remote: function(){
                            var r = {
                                url: "/Services/Services.asmx/IsUserIdAvailable",
                                type: "POST",
                                data: JSON.stringify({userId:$("input[name='<%=txtAdminId.UniqueID%>']").val()}),
                                dataType: "json",
                                contentType: "application/json; charset=utf-8",
                                dataFilter: function(data) { return (JSON.parse(data)).d; }
                            };
                            return r;
                        }
                    },
                    <%=txtAddName.UniqueID%>: "required",
                    <%=txtAdminPassword.UniqueID%>:{
                         required:true,
                         minlength:10,
                     },
                    <%=txtAdminEmail.UniqueID%>: "required",
                    <%=txtAdminPhone.UniqueID%>: "required",
                },
                messages: {
                    <%=txtAdminId.UniqueID %>: {
                         required: "The User Id is required.",
                         remote: "The User Id already exists."
                     },
                     <%=txtAddName.UniqueID%>: "The name field cannot be empty.",
                     <%=txtAdminPassword.UniqueID%>:{
                        required:"The Password field cannot be empty.",
                        minlength:"Minimum Password is 10",
                    },
                     <%=txtAdminEmail.UniqueID%>: "The Email is required.",
                     <%=txtAdminPhone.UniqueID%>: "The Phone Number is required.",
                 },
            });
           
          
        });
        
    </script>

</asp:Content>

