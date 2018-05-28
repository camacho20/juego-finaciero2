<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="HabilitarCompra.aspx.cs" Inherits="juefi2.Views.jugadas.HabilitarCompra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Habilitar Compra</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
    
    <header class="content__title">
         <div class="toolbar">
             <div class="col-md-9 ">
            <div class="toolbar__nav">
                <a href="../usuario/principal.aspx"><h5><i class="zmdi zmdi-home"></i> Inicio</h5></a>
              <span> >> </span>
              
                <a href='#'><h5><i class="zmdi zmdi-mall zmdi-hc-fw"></i> Habilitar compra de materia prima </h5></a>
                     </div>
            </div>

        </div>


    </header>

    <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                
                
                 <div class="row"><div class="col-md-3 col-md-offset-1">
                    <br />
                     <h3 class="card-title">Habilitar compra</h3>

                </div>
                <div class="col-md-4 ">
                     <label>Activar venta de materia prima</label>
              
                <asp:Button ID="Guardar" CssClass="btn btn-danger" OnClick="Guardar_Click" runat="server" Text="Activar" />
                     
                    </div></div>

                  


      <div class="table-responsive">

           <table id="data-table" class="table table-bordered table-striped grid">
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





                

                </div>

            </div>
         


</asp:Content>
