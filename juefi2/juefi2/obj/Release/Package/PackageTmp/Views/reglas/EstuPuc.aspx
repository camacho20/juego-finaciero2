﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="EstuPuc.aspx.cs" Inherits="juefi2.Views.reglas.EstuPuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PUC (Plan Unico De Cuentas)</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="box box-info">
        <div class="box-header with-border">
          
              <h3 class="box-title">Plan de cuentas</h3>
              
               
            </div>
        

        
        <div class="box-body">
      <div class="table-responsive">

           <table id="example1" class="table table-bordered table-striped">
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
