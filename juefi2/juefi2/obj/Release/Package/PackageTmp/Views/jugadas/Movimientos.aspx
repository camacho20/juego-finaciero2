<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="Movimientos.aspx.cs" Inherits="juefi2.Views.jugadas.Movimientos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Movimientos</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div class="col-md-12 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Movimientos</h3>
            </div>

            <div class="box-body">
                  <div class="table-responsive">

           <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Nº Id</th>
                  <th>Nombre del Movimiento</th>
                  <th>Codigo puc</th>
                  <th>Credito</th>
                  <th>Debito</th>
                </tr>
                </thead>
                <tbody>

               <asp:Repeater ID="tablamovimientos" runat="server">

                   <ItemTemplate>

                       <tr>
                           <td><%#Eval("idmovimiento")%></td>
                           <td><%#Eval("nombre_movimineto") %></td>
                           <td><%#Eval("codigo_puc") %></td>
                           <td><%#Eval("credito") %></td>
                           <td><%#Eval("debito") %></td>


                       </tr>


                 </ItemTemplate>
                    

               </asp:Repeater>


                </tbody>
                
              </table>
    </div>
                </div>
            </div>
          </div>


</asp:Content>
