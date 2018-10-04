<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="DoctorsBookPage.aspx.cs" Inherits="OSHCCSApp.UI.DoctorsBookPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="container">
            <br />
            <div class="row">
                <div class="col-md-2">
                    <div class="form-group">
                        <asp:DropDownList ID="ddCountry" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="form-group">
                        <asp:DropDownList ID="ddDistrict" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddDistrict_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-3">
                    <asp:DropDownList ID="ddCityVillage" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddCityVillage_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="col-sm-3">
                    <asp:DropDownList ID="ddlDoctorCategory" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlDoctorCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="col-sm-2">
                    <marquee><h4 style="color:red;">Find Trusted Medical Doctor for Appointment.</h4></marquee>
                </div>
            </div><hr />
            
            <div class="row">
                <div class="col-sm-3">
                    <div class="panel panel-default">
                        <div class="panel-body">
                              <h5>Filter</h5>                      
                            <hr />                           
                             <p style="color: red">  Specialist</p>                          
                            <asp:CheckBox ID="CheckBox5" runat="server" Value="Dhaka" AutoPostBack="True" />Medicine<br />
                            <asp:CheckBox ID="CheckBox6" runat="server" Value="Dhaka" AutoPostBack="True" />Nurologist<br />
                            <asp:CheckBox ID="CheckBox7" runat="server" Value="Dhaka" AutoPostBack="True" />Dermatology<br />
                            <asp:CheckBox ID="CheckBox8" runat="server" Value="Dhaka" AutoPostBack="True" />Dentist<br />
                            <hr />
                            <p style="color: red">Locality</p>
                         <%--   <asp:DataList ID="dlFilter" runat="server">
                                <ItemTemplate>
                                    &nbsp;&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" /><%#Eval("District") %><br />
                                </ItemTemplate>
                            </asp:DataList>--%>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />Dhaka<br />
                         
                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" />Comilla<br />
                            <asp:CheckBox ID="CheckBox3" runat="server" Value="Dhaka" AutoPostBack="True" />Gazipur<br />
                            <asp:CheckBox ID="CheckBox4" runat="server" Value="Dhaka" AutoPostBack="True" />Chittagong<br />
                            <hr />
                            Gender
                            <hr />

                            <input id="Radio3" type="radio" name="name" value="anyGender" checked="" />Any Gender<br />
                            <input id="Radio2" type="radio" name="name" value="Male" checked="" />Male<br />
                            <input id="Radio1" type="radio" name="name" value="Female" />Female
                        </div>

                    </div>


                </div>
                <div class="col-lg-9">
                    <asp:DataList ID="DataList2" runat="server" OnItemCommand="DataList2_ItemCommand" AllowPazing="true">
                        <ItemTemplate>
                            <div class="panel panel-success">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-3">
                                            &nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Width="100px" Height="110px" /><br />
                                            &nbsp;&nbsp;<asp:LinkButton ID="lbDoctorName" runat="server" Style="text-decoration: none;" CommandName="P" CommandArgument='<%#Eval("doctorEmail") %>'><%#Eval("doctorFullName") %></asp:LinkButton><br />
                                            &nbsp;&nbsp;<%#Eval("Designation") %><br />
                                        </div>
                                        <div class="col-md-4">
                                            <b><%#Eval("HospitalNmae") %></b><br />
                                            <%#Eval("Category") %><br />

                                            <%#Eval("ChamberName") %>,&nbsp;<%#Eval("subDistrict") %><br />
                                            <%#Eval("district") %><br />
                                            E-mail:    
                                             <asp:Label ID="lbldocEmail" runat="server" Text='<%#Eval("doctorEmail") %>'></asp:Label>
                                        </div>
                                        <div class="col-sm-4">
                                            Day:&nbsp;&nbsp;<%#Eval("days") %><br />
                                            Duration:&nbsp;&nbsp;<%#Eval("StartTime") %> to &nbsp;&nbsp;<%#Eval("endTime") %>
                                            <br />
                                            New Patient Visit:&nbsp;&nbsp;<%#Eval("NewVisit") %><br />
                                            Old Patient Visit:&nbsp;&nbsp;<%#Eval("OldVisit") %>
                                        </div>
                                        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       
                                    </div>
                                </div>
                                <div class="panel-footer">
                                    <asp:Button ID="Button1" runat="server" Text=" Call Doctor" CssClass="btn btn-default" />
                                    <asp:Button ID="Button2" runat="server" Text="Consult Online" CssClass="btn btn-default" />
                                    <asp:Button ID="btnGetAppoint" runat="server" Text="APPOINTMENT" CssClass="btn btn-success" CommandName="APPOINTMENT" CommandArgument='<%#Eval("doctorEmail") %>' />

                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:Button ID="btrPrevious" runat="server" Text="<< Previous" OnClick="btrPrevious_Click" />&nbsp;&nbsp;<asp:Button ID="btn2" runat="server" Text="<" OnClick="btn2_Click" />&nbsp;&nbsp;<asp:Button ID="btn3" runat="server" Text=">" OnClick="btn3_Click" />&nbsp;&nbsp;<asp:Button ID="btnNext" runat="server" Text="Next >>" OnClick="btnNext_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
