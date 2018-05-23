<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="partida_especifica.aspx.cs" Inherits="juefi2.Views.partida_especifica.partida_especifica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Paridas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <header class="content__title">
        <h1>xxx</h1>


    </header>

    <div class="col-md-12 ">




                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Gestionar partida</h4>
                       
                                  <div class="tab-container">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Crear Partida</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Crear periodos a partidas</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#Liatadepartidas" role="tab">Lista de partidas Creadas</a>
                                </li>
                                
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane active fade show" id="home" role="tabpanel">
                                     <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Nombre de la Partida</label>
                            <asp:TextBox ID="txtnombrepartida" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Numero de Empresas</label>
                            <asp:TextBox ID="txtnumeroempresa" runat="server" onkeydown="return validNumericos(event)"  CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>



                     <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>

                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                        <div class="form-group">
                                            <input type="text" class="form-control date-picker" id="fechaInicio" runat="server"  placeholder="aa/mm/dd" />
                                            <i class="form-group__bar"></i>
                                        </div>
                                    </div>
                       
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date range -->
                    </div>

                    
                     <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <label>Fecha de Fin</label>

                            <div class="input-group">
                                <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                <div class="form-group">
                                    <input type="text" class="form-control date-picker" runat="server" id="fechaFin" placeholder="aa/mm/dd" />
                                    <i class="form-group__bar"></i>
                                </div>
                                    </div>

                            

                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date range -->
                    </div>

                </div>
                  <asp:Button ID="guardar" runat="server" Text="Crear partida" CssClass="btn btn-primary"  OnClick="guardar_Click" />

                                </div>

                                <div class="tab-pane fade" id="profile" role="tabpanel">
                                    <p>Morbi mattis ullamcorper velit. Etiam rhoncus. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Cras id dui. Curabitur turpis. Etiam ut purus mattis mauris sodales aliquam. Aenean viverra rhoncus pede. Nulla sit amet est. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Praesent ac sem eget est egestas volutpat. Cras varius. Morbi mollis tellus ac sapien. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Fusce vel dui.</p>
                                </div>

                                <div class="tab-pane fade" id="Liatadepartidas" role="tabpanel">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Basic example</h4>
                            <h6 class="card-subtitle">Click the buttons below to show and hide another element via class changes:</h6>

                            <div class="btn-demo">
                                <a class="btn btn-light" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                    Link with href
                                </a> 
                                <button class="btn btn-light" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                    Button with data-target
                                </button>
                            </div>

                            <div class="collapse" id="collapseExample">
                                <hr>

                                <div class="card card-body">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                </div>
                            </div>
                        </div>
                    </div>
                    
                                    
                                </div>


                               
                            </div>
                        </div>
                    </div>
                </div>





    </div>
</asp:Content>
