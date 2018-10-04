<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="DoctorProcess1.aspx.cs" Inherits="OSHCCSApp.UI.DoctorProcess1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </div>                    
                    <div class="panel-body">
                        <div class="control-group form-group">
                            <div class="controls">
                                Full Name:
                                    <asp:TextBox ID="txtDFullName" name="txtDFullName" CssClass="form-control" runat="server" placeholder="Enter Your Full Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                Phone Number:
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter Your Phone No"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                Email Address:
                                <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter Your Email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <asp:Button ID="btnProcess1" runat="server" Text="Process" CssClass="btn btn-lg btn-danger btn-block" OnClick="btnProcess1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script>
        $(function () {
            $("#Doctorform").validate({
                rules: {
                    <%--<%=txtEmailAddress.UniqueID%>: "required",--%>
                    <%=txtEmailAddress.UniqueID%>: {
                        required: true,
                        remote: function(){
                            var r = {
                                url: "/Services/DoctorProcessService.asmx/IsAllreadyExist",
                                type: "POST",
                                data: JSON.stringify({doctorEmail:$("input[name='<%=txtEmailAddress.UniqueID%>']").val()}),
                                dataType: "json",
                                contentType: "application/json; charset=utf-8",
                                dataFilter: function(data) { return (JSON.parse(data)).d; }
                            };
                            return r;
                        }
                    },
                    <%=txtEmailAddress.UniqueID%>: "required",
                   <%-- <%=txtAdminPassword.UniqueID%>:{
                        required:true,
                        minlength:10,
                    },
                    <%=txtAdminEmail.UniqueID%>: "required",
                    <%=txtAdminPhone.UniqueID%>: "required",--%>
                },
                messages: {
                    <%=txtEmailAddress.UniqueID %>: {
                        required: "The Email must be required.",
                        remote: "The Email is already exists."
                    },
                    <%--<%=txtAddName.UniqueID%>: "The name field cannot be empty.",
                    <%=txtAdminPassword.UniqueID%>:{
                         required:"The Password field cannot be empty.",
                         minlength:"Minimum Password is 10",
                     },
                    <%=txtAdminEmail.UniqueID%>: "The Email is required.",
                    <%=txtAdminPhone.UniqueID%>: "The Phone Number is required.",--%>
                },
            });
        });
        
    </script>
</asp:Content>
