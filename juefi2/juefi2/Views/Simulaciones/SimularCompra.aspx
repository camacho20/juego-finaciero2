<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="SimularCompra.aspx.cs" Inherits="juefi2.Views.Simulaciones.SimularCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Simular compra</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-8 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Simular Compra de Materia Prima</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                             <label>Forma de Pago</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">----- </option>
                                <option>Contado</option>
                                   <option>Credito</option>
                               
                            </select>
                    </div>
                        </div>

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Cantidad</label>
                            <asp:TextBox ID="txtcantidad" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                          <label>Iva</label>
                            <asp:TextBox ID="txtIva" CssClass=" form-control" runat="server"></asp:TextBox>
                            <label>RT Ica</label>
                            <asp:TextBox ID="txtIca" CssClass=" form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1  ">
                        <div class="form-group">
                            <label>Rt Fuente</label>
                            <asp:TextBox ID="txtFuente" CssClass=" form-control" runat="server"></asp:TextBox>

                            <label>Valor Total neto</label>
                            <asp:TextBox ID="txtTotal" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>




                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <asp:Button ID="Guardar" runat="server" Text="Simular compra"  OnClick="Guardar_Click" CssClass="btn btn-primary" />
                </div>

            </div>


            <!-- nav-tabs-custom -->
        </div>
    </div>



</asp:Content>
