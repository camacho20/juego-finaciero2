<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="venta_maquinaria_equipos.aspx.cs" Inherits="juefi2.Views.jugadas.venta_maquinaria_equipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
     <header class="content__title">
        <div class="toolbar">
             <div class="col-md-9 ">
            <div class="toolbar__nav">
                <a href="../usuario/principal.aspx"><h5><i class="zmdi zmdi-home"></i> Inicio</h5></a>
              <span> >> </span>
              
                <a href='#'><h5><i class="zmdi zmdi-shopping-cart-plus zmdi-hc-fw"></i> Venta de maquinaria y equipo</h5></a>
                     </div>
            </div>

        </div>

    </header>

      <div class="col-md-9 ">
           <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                <h3 class="card-title">Venta de Maquinaria y Equipos</h3>

                <div class="row">
                                                       
                     <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Cantidad</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                          <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <asp:CheckBox ID="CheckBox3" runat="server" Text="Maquinaria"></asp:CheckBox>
                        </div>
                         <div class="form-group">
                            <asp:CheckBox ID="CheckBox4" runat="server" Text="Equipo"></asp:CheckBox>
                        </div>

                    </div>

                 
                    <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <div class="box-footer">
                                <asp:Button ID="guardar" runat="server" Text="Realizar Venta" CssClass="btn btn-primary" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
