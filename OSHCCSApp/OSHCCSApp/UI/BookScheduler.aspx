<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="BookScheduler.aspx.cs" Inherits="OSHCCSApp.UI.BookScheduler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
      <div style="height:509px; width: 100%;">
            <%= this.Scheduler.Render()%>
        </div>
    <br />
    <div class="container">
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
