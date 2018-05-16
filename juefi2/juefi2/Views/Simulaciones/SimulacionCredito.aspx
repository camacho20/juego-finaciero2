<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="SimulacionCredito.aspx.cs" Inherits="juefi2.Views.Simulaciones.SimulacionCredito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Simulador de Creditos</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Simulador de Creditos a Corto plazo</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                      <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto credito</label>
                            <asp:TextBox ID="txtMonto" runat="server" CssClass=" form-control" Text="0"></asp:TextBox>

                             
                        </div>
                    </div>
                 
                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                             <label>Tiempo del Credito</label>
                            <asp:DropDownList ID="Droptiempodecredito" CssClass=" form-control" runat="server">
                                <asp:ListItem Value="none">-------</asp:ListItem>
                                <asp:ListItem Value="1">1 </asp:ListItem>
                                <asp:ListItem Value="2">2 </asp:ListItem>
                                <asp:ListItem Value="3">3 </asp:ListItem>
                                <asp:ListItem Value="4">4 </asp:ListItem>
                                <asp:ListItem Value="5">5 </asp:ListItem>
                                <asp:ListItem Value="6">6 </asp:ListItem>
                                <asp:ListItem Value="7">7 </asp:ListItem>
                                <asp:ListItem Value="8">8 </asp:ListItem>
                                <asp:ListItem Value="9"> 9 </asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11 </asp:ListItem>
                                <asp:ListItem Value="13">12</asp:ListItem>
                            </asp:DropDownList>
                            </div>
                    </div>
                  
                  
                       
                    </div>

                 

                
            <!-- /.box-body -->

            <div class="box-footer">
                <a href="../jugadas/creditoaspx.aspx" class="btn  btn-default" >Volver a credito </a>
                <asp:Button ID="guardar" runat="server" Text="Simular Credito" CssClass="btn btn-primary"  OnClick="guardar_Click" />
            </div>
                <asp:Label ID="lblprueba" runat="server" Text="Label"></asp:Label>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>

            
            </div>

        <!-- nav-tabs-custom -->
    </div>





</asp:Content>
