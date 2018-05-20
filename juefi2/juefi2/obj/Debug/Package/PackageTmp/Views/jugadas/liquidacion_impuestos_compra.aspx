<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="liquidacion_impuestos_compra.aspx.cs" Inherits="juefi2.Views.jugadas.liquidacion_impuestos_compra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Liquidacion de Compra</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Valor de la Compra </label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Iva  </label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Retencion por Ica  </label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Retencion en la Fuente  </label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                     <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Retencion por iva  </label>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Valor Neto </label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <asp:Button ID="guardar" runat="server" Text="Liquidar Compra" OnClick="guardar_Click" CssClass="btn btn-primary" />
                </div>


            </div>
        </div>
    </div>
</asp:Content>
