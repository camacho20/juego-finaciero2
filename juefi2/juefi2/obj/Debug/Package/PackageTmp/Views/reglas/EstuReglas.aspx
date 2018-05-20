<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="EstuReglas.aspx.cs" Inherits="juefi2.Views.reglas.EstuReglas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Reglas del juego</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <!-- Default box -->
    <div class="box box-info">
        <div class="box-header with-border">
          
              <h3 class="box-title">Reglas del Juego</h3>
              
               
            </div>
        

        
        <div class="box-body">
      <div class="table-responsive">

           <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Nº Regla</th>
                  <th>Descripción</th>
                  <th>Valor Minimo</th>
                  <th>Valor Maximo</th>
                  <th>Tipo de Regla</th>
                </tr>
                </thead>
                <tbody>

               <asp:Repeater ID="tabla" runat="server">

                   <ItemTemplate>

                       <tr>
                           <td><%#Eval("id_regla")%></td>
                           <td><%#Eval("descripcion_regla") %></td>
                           <td><%#Eval("valor_minimo") %></td>
                           <td><%#Eval("valor_maximo") %></td>
                           <td><%#Eval("tipo_regla") %></td>


                       </tr>


                 </ItemTemplate>
                    

               </asp:Repeater>


                </tbody>
                
              </table>
    </div>
        </div>
       </div>
        <!-- /.box-body -->



</asp:Content>
