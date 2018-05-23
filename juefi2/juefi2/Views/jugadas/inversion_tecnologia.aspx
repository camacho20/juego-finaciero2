<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="inversion_tecnologia.aspx.cs" Inherits="juefi2.Views.jugadas.inversion_tecnologia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <header class="content__title">
        <div class="toolbar">
             <div class="col-md-9 ">
            <div class="toolbar__nav">
                <a href="../usuario/principal.aspx"><h5><i class="zmdi zmdi-home"></i> Inicio</h5></a>
              <span> >> </span>
              
                <a href='#'><h5><i class="zmdi zmdi-desktop-mac zmdi-hc-fw"></i> Inversión en tecnologia </h5></a>
                     </div>
            </div>

        </div>


    </header>

    <div class="col-md-9 ">
          <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                   <h3 class="card-title">Inversión en Tecnologia</h3>
                <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto Inversión</label>
                            <asp:TextBox ID="txtMonto" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>


                    <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <div class="box-footer">
                                <asp:Button ID="guardar" runat="server" Text="Realizar Inversión" OnClick="guardar_Click" CssClass="btn btn-primary" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
        </div>
</asp:Content>
