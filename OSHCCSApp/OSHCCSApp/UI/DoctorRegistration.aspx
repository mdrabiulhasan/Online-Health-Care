<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="DoctorRegistration.aspx.cs" Inherits="OSHCCSApp.UI.DoctorRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .thumb {
            height: 150px;

            //border: 1px solid #000;
           // margin: 10px 5px 0 0;
           border:dotted;
           padding:10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
        </div>
        <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-md-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <a href="#"><i class="fa fa-fw fa-home" style="float: right; color: white"></i></a>
                        <h4><i class="fa fa-fw fa-user"></i>Doctor's Registration Form </h4>                      
                    </div>
                    <div class="panel-body">                      
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label><br/>
                        <div class="col-sm-6">
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>User Name:</label>
                                    <asp:TextBox ID="txtDoctorUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Full Name :</label>
                                    <asp:TextBox ID="txtDoctorFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Date of Birth:</label>
                                    <div class='input-group'>
                                        <input type="text" class="form-control pickDate" runat="server" id="txtDoctorDateBirth" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                             <div class="control-group form-group">
                                <div class="controls">
                                    <label>National ID:</label>
                                    <asp:TextBox ID="txtNid" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Category:</label>
                                    <asp:DropDownList ID="ddlDoctorCategory" runat="server" CssClass="form-control" AutoPostBack="true">
                                        <asp:ListItem Value="">Select One</asp:ListItem>                                       
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Designation:</label>
                                    <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>About:</label>
                                    <asp:TextBox ID="txtAbout" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Hospital:</label>
                                    <asp:TextBox ID="txtHospital" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Chamber:</label>
                                    <asp:TextBox ID="txtChamber" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>                          

                        </div>
                        <div class="col-sm-6">
                             <div class="control-group form-group">
                                <div class="controls">
                                    <label>Country:</label>
                                    <asp:TextBox ID="txtCountry" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contro-group form-group">
                                <div class="controls">
                                    <label>District:</label><asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contro-group form-group">
                                <div class="controls">
                                    <label>City/Village:</label><asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>

                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Password:</label>
                                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Email Address:</label>
                                    <asp:TextBox ID="txtEmailAddress" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Phone Number:</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="controls">
                                    <label>Photo:</label>
                                    <asp:FileUpload ID="doctorPhotoUpload" runat="server"/><br />
                                <%--<asp:Image ID="Image1" Width="150px" Height="150px" runat="server" />--%>                                  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">                        
                        <asp:Button ID="saveButton" runat="server" Text="Save" CssClass="btn btn-success"  OnClick="saveButton_Click1" />
                        &nbsp;&nbsp;                            
                    <asp:Button ID="resetBtn" runat="server" Text="Reset" CssClass="btn btn-warning"  OnClick="resetBtn_Click" />
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ContentPlaceHolderID="script" ID="content3" runat="server">
   <script>
       $(function () {
           $("#UserForm").validate({
               rules: {
                   <%=txtDoctorUserName.UniqueID%>: {
                        required: true,
                        remote: function(){
                            var r = {
                                url: "/Services/Doctors.asmx/IsDoctorExist",
                                type: "POST",
                                data: JSON.stringify({docUserId:$("input[name='<%=txtDoctorUserName.UniqueID%>']").val()}),
                                dataType: "json",
                                contentType: "application/json; charset=utf-8",
                                dataFilter: function(data) { return (JSON.parse(data)).d; }
                            };
                            return r;
                        }
                    },                   
                    <%=txtDoctorFullName.UniqueID%>: "required",
                    <%=txtDoctorDateBirth.UniqueID%>: "required",
                    <%=txtNid.UniqueID%>:{
                        required:true,
                        maxlength:17,
                        minlength:17,
                    },
                    <%=ddlDoctorCategory.UniqueID%>: "required",
                    <%=txtDesignation.UniqueID%>: "required",
                    <%=txtHospital.UniqueID%>: "required",
                    <%=txtChamber.UniqueID%>: "required",
                    <%=txtCountry.UniqueID%>: "required",
                    <%=txtDistrict.UniqueID%>: "required",
                    <%=txtCity.UniqueID%>: "required",                    
                    <%=txtPassword.UniqueID%>:{
                        required:true,
                        minlength:5,
                    },
                    <%=txtEmailAddress.UniqueID%>: "required",
                    <%=txtPhone.UniqueID%>: "required", 
                },
                messages: {
                    <%=txtDoctorUserName.UniqueID %>: {
                        required: "The Docotor UserName is required.",
                        remote: "The UserName already exists."
                    },
                    <%=txtDoctorFullName.UniqueID%>: "The Full Name is required.",
                    <%=txtDoctorDateBirth.UniqueID%>: "The Birth Date is required.",
                    <%=txtNid.UniqueID%>:{
                        required:"The National ID is required.",
                        maxlength:"Maximum NID length is 17.",
                        minlength:"Minimum NID length is 17.",
                    },
                    <%=ddlDoctorCategory.UniqueID%>: "Select One Category.",
                    <%=txtDesignation.UniqueID%>: "The Designation is required.",
                    <%=txtHospital.UniqueID%>: "The Hospital Name is required.",
                    <%=txtChamber.UniqueID%>: "The Chember is required.",
                    <%=txtCountry.UniqueID%>: "The Country is required.",
                    <%=txtDistrict.UniqueID%>: "The District is required.",
                    <%=txtCity.UniqueID%>: "The City or Village is required.",
                    <%=txtPassword.UniqueID%>:{
                        required:"The Password field cannot be empty.",
                        minlength:"Minimum Password is 5.",
                    },
                    <%=txtEmailAddress.UniqueID%>: "The Email is required.",
                    <%=txtPhone.UniqueID%>: "The Phone Number is required.", 
                },
            });         
          
        });
        
    </script>

    <script src="../Plugins/bootstap-datepicker/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript">
        $(".pickDate").datepicker({
            format: "dd MM,yyyy",
            autoclose: true,
            //format:"yyyy-mm-dd",
            //setDate: "d",
            todayHilight: true,

        });
    </script>



</asp:Content>
