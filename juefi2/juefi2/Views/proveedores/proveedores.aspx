<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="proveedores.aspx.cs" Inherits="juefi2.Views.provedor.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Proveedores</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Nombre del Proveedor</label>
                            <asp:TextBox ID="nombre" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <label>Tipo de Regimen</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected"> </option>
                                <option>Regimen Común</option>
                                   <option>Regimen simplificado</option>
                               
                            </select>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1  ">
                        <div class="form-group">
                            <label>Valor del Producto</label>
                            <asp:TextBox ID="capital" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>




                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <asp:Button ID="guardar" runat="server" Text="Guardar" CssClass="btn btn-primary" />
                </div>

            </div>


            <!-- nav-tabs-custom -->
        </div>
    </div>
</asp:Content>
