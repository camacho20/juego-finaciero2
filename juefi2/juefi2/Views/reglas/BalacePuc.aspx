<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="BalacePuc.aspx.cs" Inherits="juefi2.Views.reglas.BalacePuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Balance general -PUC</title>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




     <header class="content__title">
        <h1>xxx</h1>


    </header>

         <!-- Default box --> 
     <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">


             <h1 class="card-title">Gestionar PUC </h1>

                   <table id="data-table" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Codigo</th>
                  <th>Descripción</th>
                  <th>Valor</th>
                  <th>Editar</th>
                 
                </tr>
                </thead>
                <tbody>

               <asp:Repeater ID="tablapuc" runat="server">

                   <ItemTemplate>

                       <tr>
                            
                           <td><%#Eval("codigo") %></td>
                           <td><%#Eval("descripcion") %></td>
                           <td><%#Eval("valor").ToString().Split(',') %></td>
                           <td> <asp:LinkButton ID="lbeditar" CssClass="btn  btn-success " BorderStyle="Inset" runat="server" CommandArgument='<%# Eval("idpuc") %>' OnCommand="lbeditar_Command">Editar</asp:LinkButton></td>


                       </tr>


                 </ItemTemplate>
                    

               </asp:Repeater>


                </tbody>
                
              </table>
    </div>





                 </div>
         



</asp:Content>
