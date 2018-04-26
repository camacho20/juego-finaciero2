<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="balanceinicial.aspx.cs" Inherits="juefi2.Views.balance.balanceinicial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Balance General</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">
        <h1>Balance General
       
                <small>(Inicial del juego)</small>
        </h1>
    </section>

    <br />
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-2 col-md-offset-0">
                <br />
                <br />
                <br />
                <ul class="tabs">
                    <li><a href="#tab1"><span class="fa fa-money"></span><span class="tab-text">Activos</span></a></li>
                    <li><a href="#tab2"><span class=" fa fa-credit-card"></span><span class="tab-text">Pasivos</span></a></li>
                    <li><a href="#tab3"><span class="fa fa-home"></span><span class="tab-text">Patrimonio</span></a></li>

                </ul>



            </div>



            <div class="col-md-9">


                <div class="secciones">
                    <article id="tab1">

                        <!-- Custom Tabs (Pulled to the right) -->
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs pull-right">
                                <li><a href="#tab_3-2" data-toggle="tab">Otros Activos</a></li>
                                <li><a href="#tab_2-2" data-toggle="tab">Propiedad, Planta y Equipo</a></li>
                                <li class="active"><a href="#tab_1-1" data-toggle="tab">Corrientes</a></li>


                                <li class="pull-left header"><i class="fa  fa-money"></i>ACTIVOS</li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active " id="tab_1-1">
                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-2">
                                            <div class="input-group">
                                                <asp:Label ID="lblefectivo" runat="server" Text="Efectivo :"></asp:Label>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>


                                            <h4>Inversiones:</h4>



                                            <div class="input-group">
                                                <asp:Label ID="lblcdt" runat="server" Text="CDT"></asp:Label>
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltitulos_de_descuento" runat="server" Text="Títulos de Descuento"></asp:Label>
                                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblaccione" runat="server" Text="Acciones"></asp:Label>
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblcommodities" runat="server" Text="Commodities"></asp:Label>
                                                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>


                                        </div>

                                        <div class="col-md-4 ">


                                            <div class="input-group">
                                                <asp:Label ID="lbldivisas" runat="server" Text="Divisas"></asp:Label>
                                                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="input-group">
                                                <asp:Label ID="lblcuentascobrar" runat="server" Text="Cuentas por Cobrar:"></asp:Label>
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <h4>Inventarios:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="lblmateriaprima" runat="server" Text="Materias Primas (20.000 unid)"></asp:Label>
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblproducterminado" runat="server" Text="Prod. Terminados (10.000 unid)"></asp:Label>
                                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltotalactivos" runat="server" Text="Total Activo Corriente :"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label13" runat="server" Text="845.841.000"></asp:Label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar1" runat="server" CssClass="btn btn-success" Text="Editar" />
                                        <asp:Button ID="btnGuardar1" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                                        <asp:Button ID="btnCancelar1" runat="server" Text="Cancelar" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_2-2">
                                    <div class="row">
                                        <div class="col-md-5 col-md-offset-1">
                                            <div class="input-group">

                                                <asp:Label ID="Label1" runat="server" Text="Construcciones"></asp:Label>
                                                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label2" runat="server" Text="Depreciación Acumulada"></asp:Label>
                                                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label3" runat="server" Text="Maquinarias y Equipo Industrial"></asp:Label>
                                                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">

                                                <asp:Label ID="Label4" runat="server" Text="Depreciación Acumulada"></asp:Label>
                                                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label5" runat="server" Text="Muebles y Equipo de Oficina"></asp:Label>
                                                <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>



                                        </div>
                                        <div class="col-md-5 ">
                                            <div class="input-group">

                                                <asp:Label ID="Label6" runat="server" Text="Depreciación Acumulada"></asp:Label>
                                                <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label8" runat="server" Text="Equipos de Comunic. y Comput."></asp:Label>
                                                <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label7" runat="server" Text="Depreciación Acumulada"></asp:Label>
                                                <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="input-group">

                                                <asp:Label ID="Label9" runat="server" Text="Vehículos y Eq. de Transporte"></asp:Label>
                                                <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label10" runat="server" Text="Depreciación Acumulada"></asp:Label>
                                                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label12" runat="server" Text="Total Prop., Planta y Equipo"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label11" runat="server" Text="419.000.000"></asp:Label>
                                            </div>


                                        </div>




                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar2" runat="server" CssClass="btn btn-success" Text="Editar" />
                                        <asp:Button ID="btnGuardar2" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                                        <asp:Button ID="btnCancelar2" runat="server" Text="Cancelar" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_3-2">
                                    <div class="row">
                                        <div class="col-md-5 col-md-offset-1">
                                            <div class="input-group">
                                                <asp:Label ID="Label14" runat="server" Text="Rendimientos Fcros por Cobrar"></asp:Label>
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label15" runat="server" Text="Intereses Pagados por Anticipado"></asp:Label>
                                                <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>

                                        </div>
                                        <div class="col-md-5 ">
                                            <div class="input-group">
                                                <asp:Label ID="Label16" runat="server" Text="Seguros Pagados por Anticipado"></asp:Label>
                                                <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="input-group">
                                                <asp:Label ID="Label17" runat="server" Text="LabelAnticipos de Impuestos"></asp:Label>
                                                <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label18" runat="server" Text="Total Otros Activos"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label19" runat="server" Text="42,563.000"></asp:Label>
                                            </div>
                                        </div>


                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar3" runat="server" CssClass="btn btn-success" Text="Editar" />
                                        <asp:Button ID="btnGuardar3" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                                        <asp:Button ID="btnCancelar3" runat="server" Text="Cancelar" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <div class=" box-footer">
                                    <asp:Label ID="Label20" runat="server" Text="Total Activos:"></asp:Label>
                                    <asp:Label ID="Label21" runat="server" Text="1.307.404.000"></asp:Label>
                                </div>
                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->

                        </div>
                        <!-- nav-tabs-custom -->
                    </article>
                    <article id="tab2">


                        <!-- Custom Tabs (Pasivos) -->
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs pull-right">

                                <li><a href="#tab_3-22" data-toggle="tab">A Largo Plazo</a></li>
                                <li class="active"><a href="#tab_3-1" data-toggle="tab">Corrientes</a></li>

                                <li class="pull-left header"><i class="fa fa-credit-card"></i>PASIVOS</li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_3-1">
                                    <div class="row">
                                        <div class="col-md-5 col-md-offset-1">
                                            <div class="input-group">
                                                <asp:Label ID="Label22" runat="server" Text="Proveedores"></asp:Label>
                                                <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <h4>Obligaciones Bancarias:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="Label23" runat="server" Text="Moneda Nacional (KT)"></asp:Label>
                                                <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label24" runat="server" Text="Moneda Nacional (AF)"></asp:Label>
                                                <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label25" runat="server" Text="Moneda Extranjera"></asp:Label>
                                                <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <h4>Cuentas por Pagar:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="Label26" runat="server" Text="Gastos Causados X Pagar"></asp:Label>
                                                <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label27" runat="server" Text="Aportes Parafiscales"></asp:Label>
                                                <asp:TextBox ID="TextBox29" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label28" runat="server" Text="Fondo de Pensiones"></asp:Label>
                                                <asp:TextBox ID="TextBox30" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label29" runat="server" Text="Seg.Social y Riesgos"></asp:Label>
                                                <asp:TextBox ID="TextBox31" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label39" runat="server" Text="Total Pasivo Corriente"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label40" runat="server" Text="658.372.000"></asp:Label>
                                            </div>

                                        </div>
                                        <div class="col-md-5 ">
                                            <h4>Impuestos Por Pagar:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="Label30" runat="server" Text="Impuesto de Renta"></asp:Label>
                                                <asp:TextBox ID="TextBox32" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label31" runat="server" Text="Impto de Industria y Comercio"></asp:Label>
                                                <asp:TextBox ID="TextBox33" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label32" runat="server" Text="IVA por Pagar"></asp:Label>
                                                <asp:TextBox ID="TextBox34" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label33" runat="server" Text="Rte Fuente por Pagar"></asp:Label>
                                                <asp:TextBox ID="TextBox35" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label34" runat="server" Text="Rte ICA por Pagar"></asp:Label>
                                                <asp:TextBox ID="TextBox36" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label35" runat="server" Text="Intereses Causados por Pagar"></asp:Label>
                                                <asp:TextBox ID="TextBox37" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label36" runat="server" Text="Ingresos Recibidos por Anticip."></asp:Label>
                                                <asp:TextBox ID="TextBox38" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <h4>Obligaciones Laborales:</h4>
                                            <div class="input-group">
                                                <asp:Label ID="Label37" runat="server" Text="Cesantías"></asp:Label>
                                                <asp:TextBox ID="TextBox39" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label38" runat="server" Text="Intereses sobre Cesantías"></asp:Label>
                                                <asp:TextBox ID="TextBox40" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>


                                        </div>
                                        <div class=" box-footer">
                                            <asp:Button ID="btnEditar4" runat="server" CssClass="btn btn-success" Text="Editar" />
                                            <asp:Button ID="btnGuardar4" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn  btn-default" />
                                        </div>


                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_3-22">
                                    <div class="row">
                                        <div class="col-md-5 col-md-offset-1">
                                            <h4>Obligaciones Bancarias:</h4>
                                            <div class="input-group">
                                                <asp:Label ID="Label41" runat="server" Text="Moneda Nacional (AF)"></asp:Label>
                                                <asp:TextBox ID="TextBox41" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>

                                        <div class="col-md-5 ">
                                            <div class="input-group">
                                                <asp:Label ID="Label42" runat="server" Text="Moneda Extranjera"></asp:Label>
                                                <asp:TextBox ID="TextBox42" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label43" runat="server" Text="Total Pasivo a Largo Plazo"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label44" runat="server" Text="214.808.000"></asp:Label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar5" runat="server" CssClass="btn btn-success" Text="Editar" />
                                        <asp:Button ID="btnGuardar5" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                                        <asp:Button ID="btnCancelar5" runat="server" Text="Cancelar" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class=" box-footer">
                                    <asp:Label ID="Label45" runat="server" Text="Total Pasivos:"></asp:Label>
                                    <asp:Label ID="Label46" runat="server" Text="873.180.000"></asp:Label>
                                </div>
                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->
                        </div>
                        <!-- nav-tabs-custom -->

                    </article>
                    <article id="tab3">

                        <!-- Custom Tabs (Pulled to the right) -->
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs pull-right">
                                <li class="active"><a href="#tab_4-1" data-toggle="tab">Pratrimonio</a></li>


                                <li class="pull-left header"><i class="fa fa-home"></i>PATRIMONIO</li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab_4-1">
                                    <div class="row">
                                        <div class="col-md-5 col-md-offset-1">
                                            <div class="input-group">
                                                <asp:Label ID="Label47" runat="server" Text="Capital Pagado (50.000 acc.)"></asp:Label>
                                                <asp:TextBox ID="TextBox43" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label48" runat="server" Text="Reserva Legal"></asp:Label>
                                                <asp:TextBox ID="TextBox44" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>

                                        <div class="col-md-5 ">
                                            <div class="input-group">
                                                <asp:Label ID="Label49" runat="server" Text="Utilidades Retenidas"></asp:Label>
                                                <asp:TextBox ID="TextBox45" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="Label50" runat="server" Text="Total Patrimonio"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label51" runat="server" Text="434.224.000"></asp:Label>
                                            </div>
                                        </div>


                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar6" runat="server" CssClass="btn btn-success" Text="Editar" />
                                        <asp:Button ID="btnGuardar6" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                                        <asp:Button ID="btnCnacelar6" runat="server" Text="Cancelar" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <!-- /.tab-pane -->

                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->
                        </div>
                        <!-- nav-tabs-custom -->


                    </article>

                </div>


            </div>


        </div>



    </div>
</asp:Content>
