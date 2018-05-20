﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="Movimientos.aspx.cs" Inherits="juefi2.Views.jugadas.Movimientos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Movimientos</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <header class="content__title">
        <h1>xxx</h1>


    </header>

      <div class="col-md-12 ">
        <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">

                 <h3 class="card-title">Movimientos</h3>

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
