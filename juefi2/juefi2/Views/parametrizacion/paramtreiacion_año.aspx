<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="paramtreiacion_año.aspx.cs" Inherits="juefi2.Views.parametrizacion.paramtreiacion_variables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Variables por año</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <header class="content__title">
        <h1>xxx</h1>


    </header>

    <div class="col-md-9 ">

       <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                <h3 class="card-title">Parametrizar variables Anuales</h3>

                <div class="row">
                    <div class="col-md-4 col-md-offset-1">


                        <div class="form-group">
                            <label>Uvt</label>
                            <asp:TextBox ID="txtuvt" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Efectivo anual (EA)</label>
                            <asp:TextBox ID="txtea" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>DTF</label>
                            <asp:TextBox ID="txtdtf" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Salario mínimo </label>
                            <asp:TextBox ID="txtsalrio" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Retencion en la fuenta</label>
                            <asp:TextBox ID="txtrtfuente" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Rete ica</label>
                            <asp:TextBox ID="txtrtica" CssClass=" form-control" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Iva </label>
                            <asp:TextBox ID="txtiva" CssClass=" form-control" runat="server"></asp:TextBox>

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
