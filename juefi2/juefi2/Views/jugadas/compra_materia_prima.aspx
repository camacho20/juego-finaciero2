<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="compra_materia_prima.aspx.cs" Inherits="juefi2.Views.jugadas.compra_materia_prima" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Compra de Materia Prima</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                       <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto de la oferta</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                               <div class="form-group">
                            <label>Cantidad de materia prima a comprar </label>
                            <asp:TextBox ID="txtMonto" runat="server" CssClass=" form-control"></asp:TextBox>


                            <p>NOTA: La materia prima tiene un costo de 630 * unidad</p>

                        </div>
                    </div>

                                    

                        <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <div class="box-footer">
                                <asp:Button ID="Button1" runat="server" Text="Realizar Oferta" CssClass="btn btn-primary" />
                            </div>

                        </div>
                    </div>

                

                 

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <label>Forma de Pago</label>
                            <asp:DropDownList ID="Dropforpago" CssClass=" form-control  select2" runat="server">
                               <asp:ListItem Value="none">-------</asp:ListItem>
                                <asp:ListItem Value="contado">Contado</asp:ListItem>
                                <asp:ListItem Value="credito">Credito</asp:ListItem>
                            </asp:DropDownList>


                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1  ">
                        <div class="form-group">
                            <label>Valor Total</label>
                            <asp:TextBox ID="txttotal" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                 


                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <asp:Button ID="Guardar" runat="server" Text="Realizar Jugada" CssClass="btn btn-primary" OnClick="Guardar_Click"  />
                </div>

            </div>


            <!-- nav-tabs-custom -->
        </div>
    </div>
</asp:Content>
