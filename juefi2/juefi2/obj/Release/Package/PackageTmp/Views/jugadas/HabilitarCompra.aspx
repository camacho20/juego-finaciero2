<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="HabilitarCompra.aspx.cs" Inherits="juefi2.Views.jugadas.HabilitarCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Habilitar Compra</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Habilitar compra</h3>
            </div>

            <div class="box-body">

      <div class="table-responsive">

           <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>NIT Empresa</th>
                  <th>Valor de la oferta</th>
                  
                </tr>
                </thead>
                <tbody>

               <asp:Repeater ID="ofertas" runat="server">

                   <ItemTemplate>

                       <tr>
                           <td><%#Eval("empresa_id_empresa")%></td>
                           <td><%#Eval("cantidad_oferta") %></td>
                          


                       </tr>


                 </ItemTemplate>
                    

               </asp:Repeater>


                </tbody>
                
              </table>
    </div>





                <label>Activar venta de materia prima</label>
                <asp:CheckBox ID="activar" runat="server" />
                <asp:Button ID="Guardar" runat="server" Text="Button" />

                </div>

            </div>
         </div>


</asp:Content>
