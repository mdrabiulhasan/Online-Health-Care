<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="OSHCCSApp.UI.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-md-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                        <h4><i class="fa fa-fw fa-user"></i>User's/Patients Registration Form </h4>
                    </div>
                    <div class="panel-body">

                        <asp:Label ID="lblAlertMs" runat="server" Text=""></asp:Label><br/>
                       <%-- <asp:Panel runat="server" CssClass="alert alert-warning alert-dismissable" ID="warningPanel" Visible="False" ClientIDMode="Static">
                            <button type="button" runat="server" class="close" data-dismiss="alert" aria-hidden="True">&times</button>
                            <h4 id="errorName" runat="server"></h4>
                            <span id="errorText" runat="server"></span>
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass="alert alert-success alert-dismissable" ID="successPanel" Visible="False" ClientIDMode="Static">
                            <button type="button" runat="server" class="close" data-dismiss="alert" aria-hidden="True">&times;</button>
                            <h4 id="alertText" runat="server"></h4>
                        </asp:Panel>--%>
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>UserName:</label>
                                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Full Name :</label>
                                    <asp:TextBox ID="txtUserFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Gender:</label>
                                    <input id="Radio1" type="radio" name="gender" value="Male" />Male
                                    <br />
                                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                    <input id="Radio2" type="radio" name="gender" value="Female" />Female

                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Date of Birth:</label>
                                    <asp:TextBox ID="txtDateofBirth" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Country:</label>
                                    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Password:</label>
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Email Address:</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="If you have/Not required"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Phone Number:</label>
                                    <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Sign Up" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="btnCancel_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-2">
        </div>
       
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
   <script>
       $(function () {
           $("#UserForm").validate({
               rules: {
                    <%=txtUserName.UniqueID%>: {
                        required: true,
                        remote: function(){
                            var r = {
                                url: "/Services/Patient.asmx/IsUserExist",
                                type: "POST",
                                data: JSON.stringify({paitenUserId:$("input[name='<%=txtUserName.UniqueID%>']").val()}),
                                dataType: "json",
                                contentType: "application/json; charset=utf-8",
                                dataFilter: function(data) { return (JSON.parse(data)).d; }
                            };
                            return r;
                        }
                    },
                   <%=txtUserFullName.UniqueID%>: "required",
                   <%=txtDateofBirth.UniqueID%>: "required",
                   <%=txtPassword.UniqueID%>:{
                        required:true,
                        minlength:5,
                    },
                   <%=txtCountry.UniqueID%>: "required",
                    <%=txtPhoneNo.UniqueID%>: "required",
                },
                messages: {
                    <%=txtUserName.UniqueID %>: {
                        required: "The User Id is required.",
                        remote: "The User Id already exists."
                    },
                    <%=txtUserFullName.UniqueID%>: "The User Name is required.",
                    <%=txtDateofBirth.UniqueID%>: "The Date of Birth Is required.",
                    <%=txtPassword.UniqueID%>:{
                        required:"The Password field cannot be empty.",
                        minlength:"Minimum Password is 5",
                    },
                    <%=txtCountry.UniqueID%>: "The Country Name is required.",
                    <%=txtPhoneNo.UniqueID%>: "The Phone Number is required.",                   
                },
            });
           
          
        });
        
    </script>


</asp:Content>
