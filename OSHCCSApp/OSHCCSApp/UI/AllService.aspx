<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserSide.Master" AutoEventWireup="true" CodeBehind="AllService.aspx.cs" Inherits="OSHCCSApp.UI.AllService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="background-color: none">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">Welcome to Online Health Care Consulting & Service System!
                </h3>
            </div>
            <div class="col-sm-1">
            </div>
            <div class="col-md-10">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>Our Service For You</h4>
                    </div>
                    <div class="panel-body">
                        <p>
                            This system aims at maintaining patient health records or user symptoms and even getting appointments from various doctors for related treatments.This system also include various services.This system saves user time and cost. The system user must register as a member of this system to get service about symptoms from consulting or doctor specialist. Patients can then select from a list of specialized doctors for respective treatments such as (skin specialist, ENT specialist cardiologist, Medicine specialist etc) at any locations. Patients may also select suitable appointment timings for their meeting.
                        <img src="images/servic3.jpg" height="300px" width="100%" />
                        </p>
                        <hr />

                        <h3>Radiology & Imaging</h3>
                        <hr />
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            <h4>X-Rays</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <a href="#"><h5>Chest P/A View</h5></a>
                                        <h5>KUB</h5>
                                        <h5>IVU with post Mict, Film</h5>
                                        <h5>Retrograde Cystourethroagram</h5>
                                        <h5>Plain X-Ray Abdomen/C.P.D.</h5>
                                        <h5>Skull B/V</h5>
                                        <h5>P.N.S</h5>
                                        <h5>Cervical Spine B/V</h5>
                                        <h5>Thoracic Spine  B/V</h5>
                                        <h5>Lumber/Dorso- lumber Spine B/V</h5>
                                        <h5>Lumbo-Sacral Spine B/V</h5>


                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                            <h4>Other Contrast X-Rays</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <h5>Ba-Meal stomach & Duodenum</h5>
                                        <h5>Ba- swallow Oesophagus</h5>
                                        <h5>Fitologram</h5>
                                        <h5>Sinogram</h5>

                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                            <h4>Ultrasound</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <h5>Whole Abdomen & Pelvic Organs</h5>
                                        <h5>HBS/Upper abdomen</h5>
                                        <h5>Lower abdomen/Uterus & Adnexae</h5>
                                        <h5>KUB /Genito-Urinary tract</h5>
                                        <h5>KUB with Prostate & Residual Volume</h5>
                                        <h5>thyroid</h5>
                                        <h5>Brain</h5>
                                        <h5>Breast</h5>
                                        <h5>Scrotum/Testis</h5>
                                        <h5>Soft Tissue</h5>
                                        <h5>Fetal age determination</h5>
                                        <h5>Routine obstetrical U.S</h5>
                                        <h5>Color Doppler US of Vertebro-basilar system</h5>
                                        <h5>Color Doppler  US of carotids</h5>
                                        <h5>Color Doppler US of deep veins of leg/Testis</h5>
                                        <h5>Color Doppler US of Renal Artery</h5>
                                        <h5>Trans rectal USG</h5>
                                        <h5>Transvaginal USG</h5>
                                        <h5>Retro-Urethrogram</h5>
                                        <h5>Histero-Sulhingogram</h5>
                                        <h5>Ba-Follow Through</h5>
                                        <h5>MCU</h5>
                                        <h5>Ba-Enema</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                            <h4>Radiology, Imaging and other Tests</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <h5>ECG</h5>
                                        <h5>ECHO</h5>
                                        <h5>ETT</h5>
                                        <h5>Color Doppler</h5>
                                        <h5>Endoscopy</h5>
                                        <h5>OPG</h5>
                                        <h5>Single Dental X-ray</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                   <!--Pathology Service Section-->
                        <hr />
                        <h3>Pathology/Laboratory</h3>
                        <hr />
                        <p>
                            Pathology is a medical specialty that determines the cause and nature of diseases by examining and testing body tissues (from biopsies and pap smears, for example) and bodily fluids (from samples including blood and urine). The results from these pathology tests help doctors diagnose and treat patients correctly.
                            <img src="images/pathology.jpg"  height="300px" width="100%" />
                        </p>                         
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                                            <h4>Lipid Profile</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFive" class="panel-collapse collapse">
                                    <div class="panel-body">                                       
                                     
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
                                            <h4>HbA1c Test</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSix" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
                                            <h4>Thyroid Function Test</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSeven" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseEight">
                                            <h4>HIV Test</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseEight" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseNine">
                                            <h4>Kidny Function Test</h4>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseNine" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->
                        </div>
                        <hr />
                        <h3>Pharmacy/medicine</h3>
                        <hr />
                        <p>
                            XXXXXXXXXX Sina Pharmacy is one of the well pharmacies in YYYYYYYYY. It’s located at ground floor at building. 
                            It has about all types of local and foreign medicine at competitive rate at 7.00 am to 11.00 pm
                        </p>
                        <img src="images/pharmecy.jpg" height="300px" width="100%" />
                        <a href="#" class="btn btn-default">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-1">
            </div>
        </div>
        <!-- /.row -->
    </div>
</asp:Content>
