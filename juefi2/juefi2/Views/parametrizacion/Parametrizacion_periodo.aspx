<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="Parametrizacion_periodo.aspx.cs" Inherits="juefi2.Views.parametrizacion.Parametrizacion_periodo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Variables por Periodo</title>
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
                          <h5><i class="zmdi zmdi-settings-square zmdi-hc-fw"></i>Parametrizacion por año</h5>
                      </a>
                  </div>
              </div>

          </div>

    </header>

     <div class="col-md-9 ">


        <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                 <h3 class="card-title">Parametrizar variables por periodo</h3>
                <div class="row">
                    <div class="col-md-4 col-md-offset-1">



                        <div class="form-group">
                            <label>Factor Estacional de la Oferta</label>
                            <asp:TextBox ID="txtfeo" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Descuento por compra a contado </label>
                            <asp:TextBox ID="txtdecuento" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>Factor estacional de la demanda</label>
                            <asp:TextBox ID="txtfactor" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>Demanda estimada </label>
                            <asp:TextBox ID="txtdemandaestimada" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>Valor Multa</label>
                            <asp:TextBox ID="txtmulta" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>Oferta estimada</label>
                            <asp:TextBox ID="TxtofertaEstimada" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>Precio de Venta</label>
                            <asp:TextBox ID="Txtventa" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>
                          <div class="form-group">
                            <label>Interés de usura </label>
                            <asp:TextBox ID="Textusura" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>
                        <p>Nota:Los valores en porcentaje  ingresarlos como decimales ejem: 10%  0.10  </p>

                    </div>
                </div>
                <div class=" box-footer with-border ">
                    <asp:Button ID="btnguardar" runat="server" OnClick="btnguardar_Click" CssClass="btn btn-primary" Text="Guardar Parametros" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>
