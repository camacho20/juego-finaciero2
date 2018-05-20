<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="compra_materia_prima.aspx.cs" Inherits="juefi2.Views.jugadas.compra_materia_prima" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <header class="content__title">
        <h1>xxx</h1>


    </header>

     <div class="col-md-9 ">
         <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                <h3 class="card-title">Compra de Materia Prima</h3>
                <div class="row">

                       <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto de la oferta</label>
                            <asp:TextBox ID="txtoferta" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>



                               <div class="form-group">
                              <asp:Label ID="lblmateriacomprar" runat="server" Text="Cantidad de materia prima a comprar"></asp:Label>
                            
                            <asp:TextBox ID="txtMonto" runat="server" CssClass=" form-control"></asp:TextBox>


                            

                        </div>
                    </div>

                                    

                        <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                           
                                <asp:Button ID="btnhaceroferta" runat="server" Text="Realizar Oferta"  OnClick="btnhaceroferta_Click" CssClass="btn btn-primary" />
                            

                        </div>
                    </div>

                

                 

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <asp:Label ID="txtformapago" runat="server" Text="Forma de Pago"></asp:Label>
                            <asp:DropDownList ID="Dropforpago" CssClass=" form-control  select2" runat="server">
                               <asp:ListItem Value="none">-------</asp:ListItem>
                                <asp:ListItem Value="contado">Contado</asp:ListItem>
                                <asp:ListItem Value="credito">Credito</asp:ListItem>
                            </asp:DropDownList>


                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1  ">
                        <div class="form-group">
                            <asp:Label ID="lblvalortotal" runat="server" Text="Valor Total"></asp:Label>
                            <asp:TextBox ID="txttotal" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                 


                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <asp:Button ID="btnGuardar" runat="server" Text="Realizar Jugada" CssClass="btn btn-primary" OnClick="Guardar_Click"  />

                </div>

            </div>


            <!-- nav-tabs-custom -->
        </div>
    </div>
</asp:Content>
