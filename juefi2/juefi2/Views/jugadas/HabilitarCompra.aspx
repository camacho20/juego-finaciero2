<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="HabilitarCompra.aspx.cs" Inherits="juefi2.Views.jugadas.HabilitarCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Habilitar Compra</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <header class="content__title">
        <h1>xxx</h1>


    </header>

    <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">">
                 <h3 class="card-title">Habilitar compra</h3>

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
