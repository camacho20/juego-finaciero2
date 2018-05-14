<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="compra_materia_prima.aspx.cs" Inherits="juefi2.Views.jugadas.compra_materia_prima" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Compra de Materia Prima</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <label>Proveedor</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">A  $122</option>
                                <option>B  $3243</option>
                                   <option>C  $2323</option>
                               
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>cantidad</label>
                            <asp:TextBox ID="nombre" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <label>Forma de Pago</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected"> </option>
                                <option>Contado</option>
                                   <option>Credito</option>
                               
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1  ">
                        <div class="form-group">
                            <label>Valor Total</label>
                            <asp:TextBox ID="capital" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <a href="../Simulaciones/SimularCompra.aspx">Click para simular compra. </a>


                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <asp:Button ID="Guardar" runat="server" Text="Realizar Jugada" CssClass="btn btn-primary" />
                </div>

            </div>


            <!-- nav-tabs-custom -->
        </div>
    </div>
</asp:Content>
