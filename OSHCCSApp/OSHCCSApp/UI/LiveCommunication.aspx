<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="LiveCommunication.aspx.cs" Inherits="OSHCCSApp.UI.LiveCommunication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">

        <!-- Marketing Icons Section -->
            <div class="row">
                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Active Online</h4>
                        </div>
                            <div class="list-group">
                                <a href="#" class="list-group-item">UserName</a>
                                <a href="#" class="list-group-item">UserName</a>
                                <a href="#" class="list-group-item">UserName</a>
                                <a href="#" class="list-group-item">UserName</a>

                            </div>
                    </div>

                </div>
                <div class="col-md-7">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <a href="#"><i class="fa fa-fw fa-camera fa-3x" style="float:right;color:white"></i></a>
                            <a href="#"><i class="fa fa-fw fa-phone fa-3x" style="float:right;color:white"></i></a>
                            <a href="#"><i class="fa fa-fw fa-envelope fa-3x " style="float:right;color:white"></i></a>
                            <h4><i class="fa fa-fw fa-gift"></i>Choose Option</h4>

                        </div>
                        <div class="panel-body">
                            <form name="">
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Your sent and received messages:</label>
                                        <textarea rows="6" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                                    </div>
                                </div>
                                <div class="control-group form-group">
                                    <div class="controls">
                                        <label>Message:</label>
                                        <textarea rows="12" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                                    </div>
                                </div>
                                <div id="success"></div>
                                <!-- For success/fail messages -->
                                <button type="submit" class="btn btn-primary">Send Message</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                </div>
            </div>
        </div>
        <!-- /.row -->
        <hr/>
    </div>
</asp:Content>
