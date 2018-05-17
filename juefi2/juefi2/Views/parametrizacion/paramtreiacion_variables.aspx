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
             <div class="box-body">
             <div class="row">
            <div class="col-md-4 col-md-offset-1">
          
               <div class="form-group">
                    <label>Oferta estimada</label>
                    <asp:TextBox ID="TxtofertaEstimada"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                  <div class="form-group">
                    <label> Valor Multa</label>
                    <asp:TextBox ID="txtmulta"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                  <div class="form-group">
                    <label>Demanda estimada </label>
                    <asp:TextBox ID="txtdemandaestimada"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                 <div class="form-group">
                    <label>Factor estacional de la demanda</label>
                    <asp:TextBox ID="txtfactor"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                  <div class="form-group">
                    <label>Uvt</label>
                    <asp:TextBox ID="txtuvt"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                  <div class="form-group">
                    <label>Efectivo anual (EA)</label>
                    <asp:TextBox ID="txtea"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label>Descuento por compra a contado </label>
                    <asp:TextBox ID="txtdecuento"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
            
          </div>

            <div class="col-md-4 col-md-offset-1">
            
                <div class="form-group">
                    <label>Factor Estacional de la Oferta</label>
                    <asp:TextBox ID="txtfeo" runat="server"  CssClass=" form-control"></asp:TextBox>
                 </div>
                <div class="form-group">
                    <label>DTF</label>
                    <asp:TextBox ID="txtdtf" runat="server"  CssClass=" form-control"></asp:TextBox>
                 </div>
                <div class="form-group">
                    <label>Salario mínimo </label>
                    <asp:TextBox ID="txtsalrio" runat="server"  CssClass=" form-control"></asp:TextBox>
                 </div>
                 <div class="form-group">
                    <label>Retencion en la fuenta</label>
                    <asp:TextBox ID="txtrtfuente"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                  <div class="form-group">
                    <label>Rete ica</label>
                    <asp:TextBox ID="txtrtica"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                  <div class="form-group">
                    <label>Iva </label>
                    <asp:TextBox ID="txtiva"  CssClass=" form-control" runat="server"></asp:TextBox>

                </div>
                <p>Nota:Los valores en porcentaje ingredar los como decimales ejem: 10%  0.10  </p>

                </div>
                 </div>
                   <div class=" box-footer with-border ">
                  <asp:Button ID="btnguardar" runat="server"  OnClick="btnguardar_Click" CssClass="btn btn-primary" Text="Button" />
                       </div>

          </div>
        </div>
    </div>
</asp:Content>
