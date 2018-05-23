<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="juefi2.Views.usuario.principal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Content Header (Page header) -->

    <header class="content__title">




        <div class="toolbar">
            <div class="col-md-9 ">
                <div class="toolbar__nav">
                    <a href="../usuario/principal.aspx"><h5><i class="zmdi zmdi-home"></i> Inicio</h5></a>
              <span> >> </span>
                   
                </div>
            </div>

        </div>
    </header>





    <div class="col-md-12 col-md-offset-0">



                    <div class="card">
                        <div class="card-body">
                            <h1><i class="zmdi zmdi-playstation"></i>
                            Juego de simulación financiera</h1>

                            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item active">
                                         <img src="../../Content/imagenes/imagesinicio/slider5.jpg" alt="First slide" />
                                    <div class="carousel-caption">
                            <h1>Juega</h1>
                               </div>
                                    </div>
                                    <div class="carousel-item">
                                         <img src="../../Content/imagenes/imagesinicio/slider1.jpg" alt="Second slide" />
                                   <div class="carousel-caption">
                                       <h1>Piensa </h1>
                                   </div>
                                         </div>
                                    <div class="carousel-item">
                                        <img src="../../Content/imagenes/imagesinicio/slider3.jpg" alt="Third slide" />
                                     <div class="carousel-caption">
                                <h1>Trabaja en equipo</h1>
                            </div>
                                    </div>
                                    <div class="carousel-item">
                            <img src="../../Content/imagenes/imagesinicio/slider2.jpg" alt="Four slide" />



                            <div class="carousel-caption">
                                <h1>Gana</h1>
                            </div>

                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                </a>
                            </div>
                        </div>
                            <br />
                            
                            <p style=" font-size:17px; text-align:justify;">El presente juego de simulación financiera tiene por objeto entrenar a los participantes en la toma de decisiones a partir del manejo y análisis de la información contable, la administración del efectivo y la planeación financiera. Además, permite ver los efectos de las decisiones en los resultados financieros de la empresa.</p>


                    </div>



                        </div>
    </div>

</asp:Content>
