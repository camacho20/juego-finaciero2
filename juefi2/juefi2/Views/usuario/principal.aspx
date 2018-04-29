<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="juefi2.Views.usuario.principal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Content Header (Page header) -->

    <div class="col-md-12 col-md-offset-0">
        <div class="box  box-primary">

            <!-- /.box-header -->
            <div class="box-body">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="../../Content/imagenes/imagesinicio/slider5.jpg" alt="First slide" />
                            <div class="carousel-caption">
                                <h1>Juega</h1>
                            </div>
                        </div>
                        <div class="item">


                            <img src="../../Content/imagenes/imagesinicio/slider1.jpg" alt="Second slide" />

                            <div class="carousel-caption">
                                <h1>Piensa </h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../../Content/imagenes/imagesinicio/slider3.jpg" alt="Third slide" />


                            <div class="carousel-caption">
                                <h1>Trabaja</h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../../Content/imagenes/imagesinicio/slider2.jpg" alt="Four slide" />



                            <div class="carousel-caption">
                                <h1>Gana</h1>
                            </div>
                        </div>

                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="fa fa-angle-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="fa fa-angle-right"></span>
                    </a>
                </div>

                <br />

                <!-- /.box-body -->
                <div class="box box-solid">
                    <div class="box-header with-border">

                        <h1><i class="fa fa-gamepad"></i>
                            Juego de simulación financiera</h1>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">

                        <h4>El presente juego de simulación financiera tiene por objeto entrenar a los participantes en la toma de decisiones a partir del manejo y análisis de la información contable, la administración del efectivo y la planeación financiera. Además, permite ver los efectos de las decisiones en los resultados financieros de la empresa.</h4>


                    </div>
                    <!-- /.box-body -->
                </div>
            </div>



            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>

</asp:Content>
