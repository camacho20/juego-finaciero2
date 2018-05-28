<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="compra_materia_prima.aspx.cs" Inherits="juefi2.Views.jugadas.compra_materia_prima" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <header class="content__title">
        



        <div class="toolbar">
             <div class="col-md-9 ">
            <div class="toolbar__nav">
                <a href="../usuario/principal.aspx"><h5><i class="zmdi zmdi-home"></i> Inicio</h5></a>
              <span> >> </span>
                <a href="#"><h5><i class="zmdi zmdi-shopping-cart zmdi-hc-fw"></i>  Compra de Materia Prima   </h5></a>
                </div>
            </div>

        </div>
</header>

     <div class="col-md-7 ">
         <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                <h3 class="card-title">Compra de Materia Prima</h3>
                <div class="row">

                       <div class="col-md-6 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto de la oferta</label>
                            <asp:TextBox ID="txtoferta" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
<<<<<<< HEAD

=======
>>>>>>> a2b7760dfa67c1dd0e0857fc9c6d80699442300a





                           <div class="form-group">
                               <asp:Label ID="lblmateriacomprar" runat="server" Text="Cantidad de materia prima que puede  comprar es :"></asp:Label>
                               <asp:Label ID="Label1" runat="server" Text="a"></asp:Label>

                               <asp:TextBox ID="txtMonto" runat="server" CssClass=" form-control"></asp:TextBox>

                           </div>

                       </div>

<<<<<<< HEAD
                    

                    </div>
=======
>>>>>>> a2b7760dfa67c1dd0e0857fc9c6d80699442300a


                    <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                           
                                <asp:Button ID="btnhaceroferta" runat="server" Text="Realizar Oferta"  OnClick="btnhaceroferta_Click" CssClass="btn btn-primary" />
                            

                        </div>
                    </div>

                

                 

                   

                

                 


                </div>
                <!-- /.box-body -->


            </div>


            <!-- nav-tabs-custom -->
        </div>
    </div>
</asp:Content>
