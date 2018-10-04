<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="OHCCS.aspx.cs" Inherits="OSHCCSApp.UI.slider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .jumbotron {
            background-image: url("images/HealthBannar.png");
            min-height: 500px;
            padding-top: 0;
            background-repeat: no-repeat;
            color: white;
            padding-top: 70px;
            padding-bottom: 0px;
            margin: 0px;
        }

        .BannarContent {
            padding-top: 30px;
        }

        td {
            padding-left: 8px;
        }

        .userElement {
            background-color: #333;
            color: #fff;
            padding-top: 0px;
            //font-size: 20px;
            //line-height: 30px;
            text-align:center;
            //height:55px;
        }
    </style>

    <script type="text/javascript">
        $(function () {

            $('#ddlCategory').live('click', function (e) {
                e.preventDefault();
                var id = $("#<%= ddlCategory.SelectedValue %>").val();
            <%--var mod = $("#<%= lblmodule.ClientID %>").val();--%>
                var mod = document.getElementById("lblmodule").innerHTML;
                var p = '<%=VirtualPathUtility.ToAbsolute("~/UI/DoctorsPage.aspx") %>';
                p += "?id=" + id;
                //    var $dialog = $('<div></div>')
                //.html('<iframe style="border: 0px; " src="' + p + '" width="100%" height="100%"></iframe>')
                //.dialog({
                //    autoOpen: false,
                //    modal: true,
                //    height: 500,
                //    width: 600,
                //    title: pagetitle
                //});
                //    $dialog.dialog('open');

            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="jumbotron">
            <div class="container">
                <div class="BannarContent">
                    <div class="control-group form-group">
                        <div class="controls">
                            <h3 aria-atomic="True" aria-autocomplete="both">"Find Trusted Medical Doctor According To category"</h3>
                            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" AutoPostBack="true" ClientIDMode="Static" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" Style="height:40px;font-size:large;">
                            </asp:DropDownList>
   
                        </div>
                    </div>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Trending Topics:"></asp:Label>
                    &nbsp; &nbsp;&nbsp;<a href="#" style="color: white">Nipha Virus Infection</a>
                    &nbsp; &nbsp;&nbsp;<a href="#" style="color: white">Chikon Ghuniya</a>
                    &nbsp; &nbsp;&nbsp;<a href="#" style="color: white">Diabetes</a>
                </div>
            </div>
        </div>
        <div class="userElement">
            <div class="container">
                <h4>Free Online Health Care Consulting &nbsp;&nbsp;<b><asp:Button ID="btnBook" runat="server" Text="Book Now" CssClass="btn btn-danger"/> </b>&nbsp;&nbsp;<b><asp:Button ID="Button1" runat="server" Text="Call For Add" CssClass="btn btn-danger"/> </b></h4>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>QUESTIONS & ANSWERS</h2>
                    <b><i class="fa fa-language" style="font-size: 18px; color: red"></i></b>&nbsp;<asp:Label ID="lblAnsQ" runat="server"></asp:Label>&nbsp;+ questions answered by doctors
                </div>
            </div>
            <br/>            
            <asp:DataList ID="dlLoadQuestion" runat="server" OnItemCommand="dlLoadQuestion_ItemCommand" RepeatColumns="2">
                <ItemTemplate>                    
                        <div class="panel panel-default" style="box-shadow: 2px 1px 10px 0px; ">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <b><i class="fa fa-question" style="font-size: 18px; color: red"></i>&nbsp;<%#Eval("userQuestion") %></b></div>
                                
                            </div>
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
                                    <img src='<%#Eval("ansPhoto") %>' style="width: 100px; height: 100px; float:right ">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <%#Eval("answer") %>....<asp:LinkButton ID="lbtnreadMore" runat="server" Style="text-decoration:none" CommandName="RM" CommandArgument='<%#Eval("doctorEmail") %>'>Read More</asp:LinkButton>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-10">
                                </div>
                                <div class="col-sm-2">
                                    <a href="#">
                                        <img src="images/image.png" /></a>
                                    <a href="#">
                                        <img src="images/favorite.png"></a>
                                </div>
                            </div>
                        </div>
                    </div>                    
                </ItemTemplate>
            </asp:DataList>
            <%-- <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4><i class="fa fa-fw fa-gift"></i>Objectives</h4>
                        </div>
                        <div class="panel-body">
                            <asp:DataList ID="DataListaboutOrganization" runat="server">
                                <ItemTemplate>
                                    <%#Eval("aboutOrganization") %>
                                </ItemTemplate>
                            </asp:DataList>
                            <a href="#" class="btn btn-default">Read More</a>
                        </div>
                    </div>
                </div>--%>
            <%--  <div class="col-md-6">
                    <asp:DataList ID="DataListOrgPhoto" runat="server">
                        <ItemTemplate>
                            <img src='<%#Eval("orgPhoto") %>' height="240px" width="90%" />
                            <hr />
                        </ItemTemplate>
                    </asp:DataList>
                    <hr />
                </div>--%>
        </div>
        <!-- /.row -->
    </div>
    <br />
    <div class="wrapper" style="background-color: white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>HEALTH TIPS</h2>
                    <h4>Prevent and manage health issues better</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <img src="images/images1.jpg" />
                </div>
                <div class="col-lg-6">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
