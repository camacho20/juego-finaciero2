<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="compra_materia_prima.aspx.cs" Inherits="juefi2.Views.jugadas.compra_materia_prima" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    <a href="#">
                        <h5><i class="zmdi zmdi-shopping-cart zmdi-hc-fw"></i>Compra de Materia Prima   </h5>
                    </a>
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

                 

                        <div class="form-group">
                            <asp:Label ID="lblmateriacomprar" runat="server" Text="Cantidad maxima de materia prima que puede  comprar es :"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                        </div>
                    </div>


                </div>
                 <div class="row">

                <div class="col-md-6 col-md-offset-1">
                    <div class="form-group">
                        <asp:Label ID="labelcanti" runat="server" Text="cantidad a comprar"></asp:Label>
                        <asp:TextBox ID="Txtcantidad2" runat="server" CssClass=" form-control"></asp:TextBox>

                    </div>

                </div>



                <div class="col-md-6 col-md-offset-0">
                    <div class="form-group">
                        <div class="form-group">
                            <asp:Label ID="labelformadepago" runat="server" Text="forma de pago"></asp:Label>
                            <asp:DropDownList ID="formadepago" CssClass=" form-control select2" runat="server">
                              
                                <asp:ListItem Value="1">Credito </asp:ListItem>
                                <asp:ListItem Value="2">Contado </asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-md-offset-1">
                    <div class="form-group">
                        <asp:Label ID="labevalorcompra" runat="server" Text=" valor de la compra "></asp:Label>
                        <asp:TextBox ID="Txtvalorcompra" runat="server" Text="" CssClass=" form-control" ></asp:TextBox>
                    </div>

                    <div class="col-md-4  col-md-offset-1  ">
                        <div class="form-group">

                            <asp:Button ID="calcular" runat="server" Text="Calcular compra" OnClick="calcular_Click" CssClass="btn btn-primary"/>

                        </div>
                    </div>
                       </div>
                </div>

                 <div class="col-md-4  col-md-offset-1  ">
                        <div class="form-group">

                            <asp:Button ID="guardaR" runat="server" Text="Realizar jugada" OnClick="Guardar_Click" CssClass="btn btn-primary" />


                        </div>
                    </div>

            </div>

        </div>




    
         
</asp:Content>
