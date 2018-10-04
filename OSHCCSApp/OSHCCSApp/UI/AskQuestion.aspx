<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="AskQuestion.aspx.cs" Inherits="OSHCCSApp.UI.AskQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <hr />
        <div class="row">
            <div class="col-md-8">
                <!-- Embedded Google Map -->
                <iframe width="100%" height="500px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed"></iframe>
            </div>
            <div class="col-sm-4">
                <h3>Send us a Message</h3>
                <hr />
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Your Full Name:</label>
                        <asp:TextBox ID="txtfullName" runat="server" CssClass="form-control" required data-validation-required-message="Please enter your name."></asp:TextBox>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Your Phone Number:</label>
                        <asp:TextBox ID="txtPhone" runat="server"  class="form-control" required data-validation-required-message="Please enter your phone number."></asp:TextBox>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Your Email Address:</label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" required data-validation-required-message="Please enter your email address."></asp:TextBox>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Message/Ask Question:</label> 
                                           
                        <textarea rows="7" cols="100" class="form-control" id="messageQuestion" runat="server" required data-validation-required-message="Please enter your message" maxlength="999" style="resize: none"></textarea>
                    </div>
                </div>
                <div id="success"></div>
                <asp:Button ID="btnAskQuestion" runat="server" Text="Send Message" CssClass="btn btn-primary btn-block" OnClick="btnAskQuestion_Click"/>
            </div>
        </div>
        <hr />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
