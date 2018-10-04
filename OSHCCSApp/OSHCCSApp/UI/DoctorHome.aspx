<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="DoctorHome.aspx.cs" Inherits="OSHCCSApp.UI.DoctorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>The best way to grow your practice and professional network.</h2>
                <br />
                <p>Magical products for medical experts to connect among themselves and with patients faster.</p>
                <br />
                <asp:Button ID="btnStart" runat="server" Text="Get Start for free" CssClass="btn btn-danger" Font-Size="X-Large" OnClick="btnStart_Click" />
            </div>
            <div class="col-md-5">
                <video src="iVideo/v.mp4" controls="controls" width="300" height="300" style="padding-top:0px;" />
                
            </div>
        </div>
    </div>
</asp:Content>
