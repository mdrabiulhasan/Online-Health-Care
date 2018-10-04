<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="ReadMore.aspx.cs" Inherits="OSHCCSApp.UI.ReadMore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-lg-8">
                <asp:DataList ID="dlFullQA" runat="server" OnItemCommand="dlFullQA_ItemCommand">
                    <ItemTemplate>
                        <div class="panel panel-default" >
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <b><i class="fa fa-question" style="font-size: 18px; color: red"></i>&nbsp;<%#Eval("userQuestion") %></b>
                                        
                                    </div>
                                </div>
                                <br />
                                <div class="panel panel-default" >
                                <div class="panel-body"">
                                        <div class="row">
                                    <br />
                                    <div class="col-sm-2">

                                        <img src='<%#Eval("photo") %>' style="width: 50px; height: 50px; border-radius: 30px;">
                                    </div>
                                    <div class="col-md-6">
                                        <asp:LinkButton ID="LinkButton1" runat="server" Style="text-decoration: none;" CommandName="P" CommandArgument='<%#Eval("doctorEmail") %>'>  <b style="color:red"><%#Eval("doctorFullName")%></b> </asp:LinkButton><br />
                                        <%#Eval("category") %>,
                                     <%#Eval("designation") %>
                                    </div>
                                    <div class="col-md-4">
                                        <img src='<%#Eval("ansPhoto") %>' style="width: 100px; height: 100px; float: right">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <%#Eval("answerDetails") %>
                                    </div>
                                </div>
                                </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <h4>Was This Answer Helpful?</h4>
                                            </div>
                                            <div class="col-lg-4">
                                                <asp:Button ID="Button1" runat="server" Text="Yes" CssClass="btn btn-default" Style="color:green"/>
                                                <asp:Button ID="Button2" runat="server" Text="Somewhat" CssClass="btn btn-default"/>
                                                <asp:Button ID="Button3" runat="server" Text="No" CssClass="btn btn-default" Style="color:red"/>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    </div>                            
                                </div>
                            <div class="panel-footer">
                                <p>
This system aims at maintaining patients, doctors and even getting appointments from various doctors for related treatments. This system also includes various services. This system saves user time and cost. The system user must register as a member of this system to get service about symptoms from consulting or doctor specialist. Patients can then select from a list of specialized doctors for respective treatments such as (skin specialist, ENT specialist cardiologist, Medicine specialist etc) at any locations.</p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-danger">
                    <div class="panel-body">
                        <h4>Book Appointment with Top List Doctors</h4>
                        <asp:Button ID="btnBookAppPage" runat="server" Text="Book Appointment" CssClass="btn btn-default" Style="color:red" OnClick="btnBookAppPage_Click"/>
                    </div>
                </div>
                <br />
               
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
