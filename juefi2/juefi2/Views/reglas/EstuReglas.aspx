<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="EstuReglas.aspx.cs" Inherits="juefi2.Views.reglas.EstuReglas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Reglas del juego</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


     <header class="content__title">
           <div class="toolbar">
              <div class="col-md-9 ">
                  <div class="toolbar__nav">
                      <a href="../usuario/principal.aspx">
                          <h5><i class="zmdi zmdi-home"></i>Inicio</h5>
                      </a>
                      <span>>> </span>

                      <a href='#'>
                          <h5><i class="zmdi zmdi-assignment zmdi-hc-fw"></i>Reglas del juego</h5>
                      </a>
                  </div>
              </div>

          </div>
    </header>


     <!-- Default box -->
     <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">

              <h3 class="card-title">Reglas del Juego</h3>
      <div class="table-responsive">

           <table id="data-table" class="table table-bordered table-striped">
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
