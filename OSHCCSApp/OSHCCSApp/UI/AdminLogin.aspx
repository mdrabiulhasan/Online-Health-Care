<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OSHCCSApp.UI.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Health Care Consulting System</title>
    <!-- Bootstrap Core CSS -->
   <link href="../Contents/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Contents/css/modern-business.css" rel="stylesheet" />
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <script src="../Scripts/moment.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="row">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="login-panel panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Please Sign In</h3>
                            </div>
                            <div class="panel-body">
                                <asp:Panel ID="warningPanel" runat="server" CssClass="alert alert-warning alert-dismissable" Visible="false" ClientIDMode="Static">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times</button>
                                    <h4 id="errorName" runat="server"></h4>
                                    <span runat="server" id="errorText"></span>
                                </asp:Panel>
                                <fieldset>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me" />Remember Me
                                        </label>
                                    </div>
                                    <asp:Button ID="btnLogin" runat="server" class="btn btn-lg btn-success btn-block" Text="Login" OnClick="btnLogin_Click" />
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
        </div>
    </form>

       <script src="../Scripts/jquery-3.1.1.js"></script>
    <!-- Form validation -->
    <script src="../Scripts/jquery.validate.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
