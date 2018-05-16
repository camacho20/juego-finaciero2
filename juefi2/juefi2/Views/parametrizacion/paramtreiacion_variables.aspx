<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="paramtreiacion_variables.aspx.cs" Inherits="juefi2.Views.parametrizacion.paramtreiacion_variables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Variables</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Parametrizar variables</h3>
            </div>

            <div class="col-md-4 col-md-offset-1">
            <div class="box-body">
                <div class="row">
                    <label>Oferta estimada</label>
                    <asp:TextBox ID="TxtofertaEstimada" runat="server"></asp:TextBox>

                </div>
            </div>
          </div>

            <div class="col-md-4 col-md-offset-1">
            <div class="box-body">
                <div class="row">
                    <label>Factor Estacional de la Oferta</label>
                    <asp:TextBox ID="Textfeo" runat="server"></asp:TextBox>

                </div>
            </div>
          </div>


              










        </div>
    </div>
</asp:Content>
