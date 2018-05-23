<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="EstuPuc.aspx.cs" Inherits="juefi2.Views.reglas.EstuPuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PUC (Plan Unico De Cuentas)</title>

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
                          <h5><i class="zmdi zmdi-money zmdi-hc-fw"></i>PUC (Plan Unico De Cuentas)</h5>
                      </a>
                  </div>
              </div>

          </div>

    </header>

    <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">

              <h3 class="card-title">Plan de cuentas</h3>
      <div class="table-responsive">

           <table id="data-table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Nº</th>
                  <th>Codigo</th>
                  <th>Descripción</th>
                  <th>Valor</th>
                  
                </tr>
                </thead>
                <tbody>

               <asp:Repeater ID="PUC" runat="server">

                   <ItemTemplate>

                       <tr>
                           <td><%#Eval("idpuc")%></td>
                           <td><%#Eval("codigo") %></td>
                           <td><%#Eval("descripcion") %></td>
                           <td><%#Eval("valor") %></td>
                          


                       </tr>


                 </ItemTemplate>
                    

               </asp:Repeater>


                </tbody>
                
              </table>
    </div>
        </div>
       </div>




</asp:Content>
