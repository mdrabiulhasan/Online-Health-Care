<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ForDoctor.Master" AutoEventWireup="true" CodeBehind="DoctorProcess3.aspx.cs" Inherits="OSHCCSApp.UI.DoctorProcess3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <br />
        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-default">
                   <%-- <div class="panel-heading">

                    </div>--%>
                    <div class="panel-body">
                        <div class="control-group form-group">
                            <div class="controls">
                                <asp:DropDownList ID="ddlDay" runat="server" CssClass="form-control">                                    
                                    <asp:ListItem Value="">Select Day</asp:ListItem> 
                                    <asp:ListItem Value="Saturday">Saturday</asp:ListItem>
                                    <asp:ListItem Value="Sunday">Sunday</asp:ListItem>
                                    <asp:ListItem Value="Monday">Monday</asp:ListItem>
                                    <asp:ListItem Value="Tuesday">Tuesday</asp:ListItem>
                                    <asp:ListItem Value="Wednesday">Wednesday</asp:ListItem>
                                    <asp:ListItem Value="Thursday">Thursday</asp:ListItem>
                                    <asp:ListItem Value="Friday">Friday</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                Hospital Name:
                                <asp:TextBox ID="txtHospital" runat="server" CssClass="form-control"  placeholder="Enter Your Hospital"></asp:TextBox>
                            </div>
                        </div>
                         <div class="control-group form-group">
                            <div class="controls">
                                Chamber:
                                <asp:TextBox ID="txtChamber" runat="server" CssClass="form-control"  placeholder="Enter Your Chamber"></asp:TextBox>
                            </div>
                        </div>
                         <div class="contro-group form-group">
                                <div class="controls">
                                   District:<asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control" placeholder="Enter District"></asp:TextBox>
                                </div>
                            </div>
                            <div class="contro-group form-group">
                                <div class="controls">
                                    Sub District/City/Village:<asp:TextBox ID="txtSubDistrict" runat="server" CssClass="form-control" placeholder="Enter Sub district/City/Village"></asp:TextBox>
                                </div>

                            </div>
                          <div class="control-group form-group">
                              Time Schedule:
                              <hr/>
                            <div class="controls">
                                Start Time:<asp:DropDownList ID="ddlStartTime" runat="server">                                    
                                    <asp:ListItem Value="">Select One</asp:ListItem> 
                                    <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                    <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                    <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                    <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                    <asp:ListItem Value="%PM">5PM</asp:ListItem>
                                    <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                    <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                    <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                </asp:DropDownList>
                                
                               End Time:<asp:DropDownList ID="ddlEndTime" runat="server">                                    
                                    <asp:ListItem Value="">Select One</asp:ListItem> 
                                    <asp:ListItem Value="1PM">1PM</asp:ListItem>
                                    <asp:ListItem Value="2PM">2PM</asp:ListItem>
                                    <asp:ListItem Value="3PM">3PM</asp:ListItem>
                                    <asp:ListItem Value="4PM">4PM</asp:ListItem>
                                    <asp:ListItem Value="5PM">5PM</asp:ListItem>
                                    <asp:ListItem Value="6PM">6PM</asp:ListItem>
                                    <asp:ListItem Value="7PM">7PM</asp:ListItem>
                                    <asp:ListItem Value="8PM">8PM</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                              <hr/>
                        </div>
                        <div class="control-group form-group">                            
                            <div class="controls">
                                  Visit Amount:
                            <hr />
                               New Patient: <asp:TextBox ID="txtNewPatientVisit" runat="server"></asp:TextBox>
                                Old Patient: <asp:TextBox ID="txtOldPatientVisit" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group form-group">
                            <div class="controls">
                                <asp:Button ID="btnProcess3" runat="server" Text="Process" Cssclass="btn btn-lg btn-danger btn-block" OnClick="btnProcess3_Click"/>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
