<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="empresa.aspx.cs" Inherits="juefi2.Views.empresa.empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Gestionar Empresa</title>
    


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Gestionar Empresa</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                    <div class="col-md-3 col-md-offset-1">
                        <div class="form-group">
                            <label>Nit de la Empresa</label>
                            <asp:TextBox ID="txtnit" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 col-md-offset-0">
                        <div class="form-group">
                            <label>Nombre de la Empresa</label>
                            <asp:TextBox ID="txtnombre" runat="server" onkeypress="return soloLetras(event)" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 col-md-offset-0 ">
                        <div class="form-group">
                            <label>Numero de Integrantes</label>

                            <asp:DropDownList ID="DropIntegrantes" CssClass="form-control select2" runat="server">
                                <asp:ListItem Value="none">-------</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>

                            </asp:DropDownList>

                        </div>
                    </div>

                     <div class="col-md-9  col-md-offset-1 ">
                         <label>Politicas de la Empresa</label>
                         <textarea class="form-control" rows="2" placeholder="Enter ..." runat="server" id="politicas">
                  </textarea>
                     </div>


                    <div class="col-md-4 col-md-offset-8 ">
                        <br />
                        <asp:Button ID="btnguardar" runat="server" CssClass="btn btn-primary" OnClick="btnguardar_Click" Text="Guardar" />
                        
                        </div>

                        <div class="col-md-4 col-md-offset-1 ">
                            <div class="form-group">
                                <asp:Label ID="lblagre" runat="server" Text="Agregar usuario"></asp:Label>

                             
                                
                               
                            </div>

                        </div>

                        <div class="col-md-4 col-md-offset-1 ">
                            <br />
                            <asp:Button ID="btngregar" runat="server" CssClass="btn btn-primary" OnClick="btngregar_Click" Text="Agregar Usuario" />

                        </div>
                    </div>
                   
                    <div class="col-md-12 col-md-offset-1  ">
                        <h4 class=" box-title" id="inter" runat="server">Integrantes Agregados</h4>

                        <asp:ListView ID="mostraragregados" runat="server"></asp:ListView>
                                                
                    </div>
                    
            
                <!-- /.box-body -->

            </div>
            
            <!-- nav-tabs-custom -->
        </div>

    </div>
</asp:Content>
