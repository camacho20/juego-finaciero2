<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="AgregarEmpresaPartida.aspx.cs" Inherits="juefi2.Views.partida_especifica.AgregarEmpresaPartida" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Agregar Empresa A partida</title>
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

                      <a href='#'>
                          <h5><i class="zmdi zmdi-settings-square zmdi-hc-fw"></i>Partida</h5>
                      </a>
                  </div>
              </div>

          </div>
    </header>

     <div class="col-md-9 ">


      <div class="card" id="agregar">
                    <div class="card-body">
                        <h4 class=" card-title"" >Agregar Empresa A la partida</h4>
                      
                        <div class="row">
                                         <div class="col-md-2" >
                                             <br />
                                            <label>Selccionar partida :</label>
                                           
                                           </div>
                                        <div class="col-md-3 ">
                                           
                                            <div class="form-group">
                                                
                                                <asp:DropDownList ID="selctpartida" CssClass="form-control select2" runat="server">

                                              <asp:ListItem Value="none">-------</asp:ListItem>

                                                </asp:DropDownList> 
                                            </div>
                                        </div>

                                 <div class="col-md-3" >

                                 <asp:Button ID="btncarbar" runat="server" CssClass="btn  btn-info" OnClick="btncarbar_Click" Text="Cargar usuarios" />

                                 </div>
                              </div>

                                        <div class="col-md-12   ">
                                            
                                           <div class="row">
                                         
                                               

                                                        <div class="col-md-4 control-labe   col-md-offset-1 ">
                                                            <br />
                                                            <h4>Empresas disponibles</h4>
                                                            <asp:ListBox ID="ListadeEmpresas" CssClass=" form-control" runat="server" SelectionMode="Multiple"
                                                                Height="200" Width="200">
                                                               
                                                            </asp:ListBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                  <%--      <div class="col-md-2 control-labe ">
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                            <asp:Button ID="moverUser1" runat="server" Text=">"  />
                                                            <br />
                                                            <asp:Button ID="moverUser2" runat="server" Text="<"  />
                                                        </div>
                                                        <div class="col-md-4 control-label">
                                                            <br />
                                                            <h4>Empresas a asignar</h4>
                                                            <asp:ListBox ID="ListUsuariosAsignados" runat="server"  CssClass=" form-control" SelectionMode="Multiple"
                                                                Height="200" Width="200"></asp:ListBox>
                                                            <br />
                                                            <br />
                                                        </div>--%>
                                                    
                                                        <div class="col-md-4    ">
                                                            <asp:Button ID="btnbuardarusuario" CssClass="btn btn-primary" runat="server" OnClick="btnbuardarusuario_Click" Text="Agregar usuario" />
                                                            
                                                            </div>
                                               <div class="col-md-4   ">
                                               
                                                <asp:Button ID="btnterminar" CssClass="btn  btn-warning" runat="server" OnClick="btnterminar_Click" Text="terminar" />

                                            </div>

                                                    </div>
  

                                        </div>
                                   

                       
                    </div>
                </div>


    </div>




</asp:Content>
