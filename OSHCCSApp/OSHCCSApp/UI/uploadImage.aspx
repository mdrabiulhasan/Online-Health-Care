<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="OSHCCSApp.UI.uploadImage" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="imgUploader" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
       
        


        <%--<script>
            function validateImage() {
                var uploadcontrol = document.getElementById('<%=imgUploader.ClientID%>').value;
            //Regular Expression for fileupload control.
            var reg = /^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpg|.jpeg|.png|.gif)$/;
            if (uploadcontrol.length > 0) {
                //Checks with the control value.
                if (reg.test(uploadcontrol)) {
                    return true;
                }
                else {
                    //If the condition not satisfied shows error message.
                    alert("Only .jpg, .jpeg,.png, .gif  files are allowed!");
                    return false;
                }
            }
        } //End of function validate.
    </script>--%>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <img src="<%#Eval("Photo") %>" height="40" width="40" />
                
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
    <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/jquery.validate.js"></script>
</body>
</html>
