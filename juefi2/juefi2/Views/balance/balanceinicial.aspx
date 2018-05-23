<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="balanceinicial.aspx.cs" Inherits="juefi2.Views.balance.balanceinicial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Balance General</title>

      


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <header class="content__title">
                       <div class="toolbar">
        <div class="col-md-9 ">
            <div class="toolbar__nav">
                <a href="../usuario/principal.aspx">
                    <h5><i class="zmdi zmdi-home"></i>Inicio</h5>
                </a>
                <span>>> </span>

                <a href='#'>
                    <h5><i class="zmdi zmdi-money-box zmdi-hc-fw"></i>Balance general</h5>
                </a>
            </div>
        </div>

    </div>
                    </header>

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
                                                <asp:Label ID="lblmostrar1" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtefectivo" runat="server" onkeydown="return validNumericos(event)"  CssClass="form-control"></asp:TextBox>

                                            </div>


                                            <h4>Inversiones:</h4>



                                            <div class="input-group">
                                                <asp:Label ID="lblcdt" runat="server" Text="CDT :"></asp:Label>
                                                <asp:Label ID="lblmostrar2" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtcdt" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltitulos_de_descuento" runat="server" Text="Títulos de Descuento :"></asp:Label>
                                                <asp:Label ID="lblmostrar3" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txttitulos_de_descuento" onkeydown="return validNumericos(event)" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblaccione" runat="server" Text="Acciones :"></asp:Label>
                                                <asp:Label ID="lblmostrar4" runat="server" Text=""></asp:Label>
                                                 <asp:TextBox ID="txtaccione" onkeydown="return validNumericos(event)" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblcommodities" runat="server" Text="Commodities :"></asp:Label>
                                                <asp:Label ID="lblmostrar5" runat="server" Text=""></asp:Label>
                                                 <asp:TextBox ID="txtcommodities" onkeydown="return validNumericos(event)" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>


                                        </div>

                                        <div class="col-md-4 ">


                                            <div class="input-group">
                                                <asp:Label ID="lbldivisas" runat="server" Text="Divisas :"></asp:Label>
                                                <asp:Label ID="lblmostrar6" runat="server" Text=""></asp:Label>  
                                                <asp:TextBox ID="txtdivisas" onkeydown="return validNumericos(event)"  runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="input-group">
                                                <asp:Label ID="lblcuentascobrar" runat="server" Text="Cuentas por Cobrar :"></asp:Label>
                                                <asp:Label ID="lblmostrar7" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtcuentasporcobrar" onkeydown="return validNumericos(event)" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <h4>Inventarios:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="lblmateriaprima" runat="server" Text="Materias Primas (20.000 unid) :"></asp:Label>
                                                <asp:Label ID="lblmostrar8" runat="server" Text=""></asp:Label>  
                                                <asp:TextBox ID="txtmateriaprima" onkeydown="return validNumericos(event)" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblproducterminado" runat="server" Text="Prod. Terminados (10.000 unid) :"></asp:Label>
                                                <asp:Label ID="lblmostrar9" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtproducterminado" onkeydown="return validNumericos(event)" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltotalactivos" runat="server" Text="Total Activo Corriente :"></asp:Label>
                                                <br />
                                                <asp:Label ID="lbltotal" runat="server" Text=""></asp:Label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar1" runat="server" CssClass="btn btn-success" OnClick="btnEditar1_Click" Text="Editar" />
                                        <asp:Button ID="btnGuardar1" runat="server" CssClass="btn btn-primary" OnClick="btnGuardar1_Click" Text="Guardar" />
                                        <asp:Button ID="btnCancelar1" runat="server" Text="Cancelar"  OnClick="btnCancelar1_Click"  CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_2-2">
                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-2">
                                            <div class="input-group">

                                                <asp:Label ID="lblconstruccion" runat="server" Text="Construcciones :"></asp:Label>
                                                <asp:Label ID="lblmostrar10" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtconstruccion" onkeydown="return validNumericos(event)"  runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbldpre1" runat="server" Text="Depreciación Acumulada :"></asp:Label>
                                                <asp:Label ID="lblmostrar11" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtdpre1" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblmaequind" runat="server" Text="Maquinarias y Equipo Industrial :"></asp:Label>
                                                <asp:Label ID="lblmostrar12" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtmaequind" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">

                                                <asp:Label ID="lbldpre2" runat="server" Text="Depreciación Acumulada :"></asp:Label>
                                                <asp:Label ID="lblmostrar13" runat="server" Text=""></asp:Label>
                                                 <asp:TextBox ID="txtdepre2" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblmuequiofi" runat="server" Text="Muebles y Equipo de Oficina :"></asp:Label>
                                                <asp:Label ID="lblmostrar14" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtmuequiofi" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>

                                            </div>

                                            <div class="input-group">

                                                <asp:Label ID="lbldpre3" runat="server" Text="Depreciación Acumulada :"></asp:Label>
                                                <asp:Label ID="lblmostrar15" runat="server" Text="Label"></asp:Label>
                                                 <asp:TextBox ID="txtdpre3" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>



                                        </div>
                                        <div class="col-md-4 ">
                                            
                                            <div class="input-group">
                                                <asp:Label ID="lblequicomput" runat="server" Text="Equipos de Comunic. y Comput. :"></asp:Label>
                                                <asp:Label ID="lblmostrar16" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtequicompu" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbldpre4" runat="server" Text="Depreciación Acumulada :"></asp:Label>
                                                <asp:Label ID="lblmostrar17" runat="server" Text=""></asp:Label>  
                                                <asp:TextBox ID="txtdpre4" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="input-group">

                                                <asp:Label ID="lblvehiequitrans" runat="server" Text="Vehículos y Eq. de Transporte :"></asp:Label>
                                                <asp:Label ID="lblmostrar18" runat="server" Text=""></asp:Label>
                                                <asp:TextBox ID="txtvehiequitrans" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbldpre5" runat="server" Text="Depreciación Acumulada :"></asp:Label>
                                                <asp:Label ID="lblmostrar19" runat="server" Text="Label"></asp:Label> 
                                                <asp:TextBox ID="txtdepre5" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltotalpro" runat="server" Text="Total Prop., Planta y Equipo :"></asp:Label>
                                                <br />
                                                <asp:Label ID="lbltotal2" runat="server" Text=""></asp:Label>
                                            </div>


                                        </div>




                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar2" runat="server" CssClass="btn btn-success" OnClick="btnEditar2_Click" Text="Editar" />
                                        <asp:Button ID="btnGuardar2" runat="server" CssClass="btn btn-primary" OnClick="btnGuardar2_Click" Text="Guardar" />
                                        <asp:Button ID="btnCancelar2" runat="server" Text="Cancelar"  OnClick="btnCancelar2_Click" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_3-2">
                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-2">
                                            <div class="input-group">
                                                <asp:Label ID="lblrendicobrar" runat="server" Text="Rendimientos Fcros por Cobrar :"></asp:Label>
                                                <asp:Label ID="lblmostrar20" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtrendicobrar" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblpagoanticipado" runat="server" Text="Intereses Pagados por Anticipado :"></asp:Label>
                                                <asp:Label ID="lblmostrar21" runat="server" Text="Label"></asp:Label>
                                                 <asp:TextBox ID="txtintepagoantipipado" runat="server" onkeydown="return validNumericos(event)"  CssClass="form-control"></asp:TextBox>

                                            </div>

                                        </div>
                                        <div class="col-md-4 ">
                                            <div class="input-group">
                                                <asp:Label ID="lblsegupagaanti" runat="server" Text="Seguros Pagados por Anticipado :"></asp:Label>
                                                <asp:Label ID="lblmostrar22" runat="server" Text="Label"></asp:Label>  
                                                <asp:TextBox ID="txtsegupagannti" runat="server" onkeydown="return validNumericos(event)"  CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <div class="input-group">
                                                <asp:Label ID="lblanticipos" runat="server" Text="Anticipos de Impuestos :"></asp:Label>
                                                <asp:Label ID="lblmostrar23" runat="server" Text="Label"></asp:Label> 
                                                <asp:TextBox ID="txtanticipos" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltotalotrosactivos" runat="server" Text="Total Otros Activos :"></asp:Label>
                                                <br />
                                                <asp:Label ID="lbltotal3" runat="server" Text="42,563.000"></asp:Label>
                                            </div>
                                        </div>


                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar3" runat="server" OnClick="btnEditar3_Click" CssClass="btn btn-success" Text="Editar" />
                                        <asp:Button ID="btnGuardar3" runat="server" OnClick="btnGuardar3_Click" CssClass="btn btn-primary" Text="Guardar" />
                                        <asp:Button ID="btnCancelar3" runat="server" OnClick="btnCancelar3_Click" Text="Cancelar" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <div class=" box-footer">
                                    <asp:Label ID="lbltotalac" runat="server" Text="Total Activos:"></asp:Label>
                                    <asp:Label ID="lbltotaldeltotal" runat="server" Text="1.307.404.000"></asp:Label>
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
                                                <asp:Label ID="lblproveedor" runat="server" Text="Proveedores :"></asp:Label>
                                                <asp:Label ID="lblpasivo1" runat="server" Text="Label"></asp:Label>
                                                  <asp:TextBox ID="txtproveedor" runat="server" onkeydown="return validNumericos(event)"  CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <h4>Obligaciones Bancarias:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="lblmonedanakt" runat="server" Text="Moneda Nacional (KT) :"></asp:Label>
                                                <asp:Label ID="lblpasivo2" runat="server" Text="Label"></asp:Label>
                                                  <asp:TextBox ID="txtmonedanakt" onkeydown="return validNumericos(event)" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblmonedanaf" runat="server" Text="Moneda Nacional (AF) :"></asp:Label>
                                                <asp:Label ID="lblpasivo3" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtmonedanaf" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblmonextra" runat="server" Text="Moneda Extranjera :"></asp:Label>
                                                <asp:Label ID="lblpasivo4" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtmonextra" runat="server" onkeydown="return validNumericos(event)"  CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <h4>Cuentas por Pagar:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="lblgastosxpagar" runat="server" Text="Gastos Causados X Pagar :"></asp:Label>
                                                <asp:Label ID="lblpasivos5" runat="server" Text="Label"></asp:Label>        
                                                <asp:TextBox ID="txtgastosxpagar" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>

                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblaporparafis" runat="server" Text="Aportes Parafiscales : "></asp:Label>
                                                <asp:Label ID="lblpasivos6" runat="server" Text="Label"></asp:Label> 
                                                 <asp:TextBox ID="txtaporparafis" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblfonpensiones" runat="server" Text="Fondo de Pensiones :"></asp:Label>
                                                <asp:Label ID="lblpasivos7" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtfonpensiones" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblsocialries" runat="server" Text="Seg.Social y Riesgos :"></asp:Label>
                                                <asp:Label ID="lblpasivos8" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtsocialres" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltotalpasivoco" runat="server" Text="Total Pasivo Corriente :"></asp:Label>
                                                <br />
                                                <asp:Label ID="lbltotalpasivoscorrien" runat="server" Text="658.372.000"></asp:Label>
                                            </div>

                                        </div>
                                        <div class="col-md-5 ">
                                            <h4>Impuestos Por Pagar:</h4>

                                            <div class="input-group">
                                                <asp:Label ID="lblimpusrenta" runat="server" Text="Impuesto de Renta :"></asp:Label>
                                                <asp:Label ID="lblpasivos9" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtimpusrenta" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblinducomer" runat="server" Text="Impto de Industria y Comercio :"></asp:Label>
                                                <asp:Label ID="lblpasivos10" runat="server" Text="Label"></asp:Label>
                                                  <asp:TextBox ID="txtinducomer" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbliva" runat="server" Text="IVA por Pagar :"></asp:Label>
                                                <asp:Label ID="lblpasivos11" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtiva" runat="server" onkeydown="return validNumericos(event)"  CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblfuporpagar" runat="server" Text="Rte Fuente por Pagar :"></asp:Label>
                                                <asp:Label ID="lblpasivos12" runat="server" Text="Label"></asp:Label>
                                                 <asp:TextBox ID="txtfuporpagar" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblicapagar" runat="server" Text="Rte ICA por Pagar :"></asp:Label>
                                                <asp:Label ID="lblpasivos13" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txticapagar" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblintercapagar" runat="server" Text="Intereses Causados por Pagar :"></asp:Label>
                                                <asp:Label ID="lblpasivos14" runat="server" Text="Label"></asp:Label>
                                                 <asp:TextBox  ID="txtintercapagar"  runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblinrecianti" runat="server" Text="Ingresos Recibidos por Anticip. :"></asp:Label>
                                                <asp:Label ID="lblpasivos15" runat="server" Text="Label"></asp:Label>
                                                  <asp:TextBox ID="txtinrecianti" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>

                                            <h4>Obligaciones Laborales:</h4>
                                            <div class="input-group">
                                                <asp:Label ID="lblcesantia" runat="server" Text="Cesantías :"></asp:Label>
                                                <asp:Label ID="lblpasivos16" runat="server" Text="Label"></asp:Label>
                                                 <asp:TextBox ID="txtcesantia" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblintcesan" runat="server" Text="Intereses sobre Cesantías :"></asp:Label>
                                                <asp:Label ID="lblpasivos17" runat="server" Text="Label"></asp:Label> 
                                                 <asp:TextBox ID="txtintcesan" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>


                                        </div>
                                        <div class=" box-footer">
                                            <asp:Button ID="btnEditar4" runat="server" OnClick="btnEditar4_Click" CssClass="btn btn-success" Text="Editar" />
                                            <asp:Button ID="btnGuardar4" runat="server" OnClick="btnGuardar4_Click" CssClass="btn btn-primary" Text="Guardar" />
                                            <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" CssClass="btn  btn-default" />
                                        </div>


                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="tab_3-22">
                                    <div class="row">
                                        <div class="col-md-5 col-md-offset-1">
                                            <h4>Obligaciones Bancarias:</h4>
                                            <div class="input-group">
                                                <asp:Label ID="lblmonnaaf" runat="server" Text="Moneda Nacional (AF) :"></asp:Label>
                                                <asp:Label ID="lblpasivos18" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtmonnaaf" runat="server" onkeydown="return validNumericos(event)"  CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>

                                        <div class="col-md-5 ">
                                            <div class="input-group">
                                                <asp:Label ID="lblmonextran2" runat="server" Text="Moneda Extranjera :"></asp:Label>
                                                <asp:Label ID="lblpasivos19" runat="server" Text="Label"></asp:Label>  
                                                <asp:TextBox ID="txtmonextran2" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltotallargopasitos" runat="server" Text="Total Pasivo a Largo Plazo :"></asp:Label>
                                                <br />
                                                <asp:Label ID="lbltotallargoplazo" runat="server" Text="214.808.000"></asp:Label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar5" runat="server" CssClass="btn btn-success" OnClick="btnEditar5_Click" Text="Editar" />
                                        <asp:Button ID="btnGuardar5" runat="server" CssClass="btn btn-primary" OnClick="btnGuardar5_Click" Text="Guardar" />
                                        <asp:Button ID="btnCancelar5" runat="server" Text="Cancelar"   OnClick="btnCancelar5_Click" CssClass="btn  btn-default" />
                                    </div>
                                </div>
                                <!-- /.tab-pane -->
                                <div class=" box-footer">
                                    <asp:Label ID="lblpsivos" runat="server" Text="Total Pasivos :"></asp:Label>
                                    <asp:Label ID="lbltotalpasivos" runat="server" Text="873.180.000"></asp:Label>
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
                                        <div class="col-md-4 col-md-offset-2">
                                            <div class="input-group">
                                                <asp:Label ID="lblcapipagado" runat="server" Text="Capital Pagado (50.000 acc.) :"></asp:Label>
                                                <asp:Label ID="lblpasivos20" runat="server" Text="Label"></asp:Label>
                                                <asp:TextBox ID="txtcapipagado" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lblreselegal" runat="server" Text="Reserva Legal :"></asp:Label>
                                                <asp:Label ID="lblpasivos21" runat="server" Text="Label"></asp:Label>
                                                  <asp:TextBox ID="txtreselegal" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>

                                        </div>

                                        <div class="col-md-4 ">
                                            <div class="input-group">
                                                <asp:Label ID="lblutiretenidos" runat="server" Text="Utilidades Retenidas :"></asp:Label>
                                                <asp:Label ID="lblpasivos22" runat="server" Text="Label"></asp:Label>  
                                                <asp:TextBox ID="txtutiretenidos" runat="server" onkeydown="return validNumericos(event)" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="input-group">
                                                <asp:Label ID="lbltotalpatri" runat="server" Text="Total Patrimonio :"></asp:Label>
                                                <br />
                                                <asp:Label ID="lbltotalpatrimonio" runat="server" Text="434.224.000"></asp:Label>
                                            </div>
                                        </div>


                                    </div>
                                    <div class=" box-footer">
                                        <asp:Button ID="btnEditar6" runat="server" CssClass="btn btn-success" OnClick="btnEditar6_Click" Text="Editar" />
                                        <asp:Button ID="btnGuardar6" runat="server" CssClass="btn btn-primary" OnClick="btnGuardar6_Click" Text="Guardar" />
                                        <asp:Button ID="btnCancelar6" runat="server" Text="Cancelar" CssClass="btn  btn-default" OnClick="btnCancelar6_Click" />
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
