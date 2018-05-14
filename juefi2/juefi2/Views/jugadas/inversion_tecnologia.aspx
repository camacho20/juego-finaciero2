<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="inversion_tecnologia.aspx.cs" Inherits="juefi2.Views.jugadas.inversion_tecnologia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Inversión en Tecnologia</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto Inversión</label>
                            <asp:TextBox ID="txtMonto" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <div class="box-footer">
                                <asp:Button ID="guardar" runat="server" Text="Realizar Inversión" OnClick="guardar_Click" CssClass="btn btn-primary" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
        </div>
</asp:Content>
