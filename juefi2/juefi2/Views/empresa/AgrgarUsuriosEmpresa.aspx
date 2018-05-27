<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="AgrgarUsuriosEmpresa.aspx.cs" Inherits="juefi2.Views.empresa.AgrgarUsuriosEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Agregar Integrante a la Empresa</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <header class="content__title">
          <div class="toolbar">
              <div class="col-md-9 ">
                  <div class="toolbar__nav">
                      <a href="../usuario/principal.aspx">
                          <h5><i class="zmdi zmdi-home"></i> Inicio</h5>
                      </a>
                      <span>>> </span>

                      <a href='../empresa/AgrgarUsuriosEmpresa.aspx'>
                          <h5><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Gestinar empresa</h5>
                      </a>
                       <span>>> </span>
                    
                      <a href='#'>
                          <h5><i class="zmdi zmdi-account-add zmdi-hc-fw"></i> Agregar integrante a la  Empresa</h5>
                      </a>

                  </div>
              </div>

          </div>

    </header>

    <div class="col-md-9 ">


      <div class="card" id="agregar">
                    <div class="card-body">
                        <h4 class=" card-title"" >Agregar integrante a la  Empresa</h4>
                         <div class="row">
                                         <div class="col-md-3" >
                                            
                                            <label>Nombre Empresa :</label>
                                           
                                           </div>
                                        <div class="col-md-4 ">
                                           
                                            <div class="form-group">
                                                <h5><asp:Label ID="lblnombreempresa" runat="server" Text="" ></asp:Label></h5>    
                                                
                                            </div>
                                        </div>

                             <div class="col-md-3" >

                                 <asp:Button ID="btncarbar" runat="server" CssClass="btn  btn-info" OnClick="btncarbar_Click" Text="Cargar usuarios" />

                                 </div>
                              </div>


                                        <div class="col-md-12 ">
                                            
                                           <div class="row">
                                         
                                               

                                                        <div class="col-md-4 control-labe   col-md-offset-0 ">
                                                            <br />
                                                            
                                                            <h5>Usuario disponibles</h5>
                                                            <asp:ListBox ID="ListUsuariosDisponibles" CssClass=" form-control" runat="server" SelectionMode="Multiple"
                                                                Height="200" Width="200">

                                                              

                                                            </asp:ListBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <%--<div class="col-md-2 control-labe ">
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <br />
                                                            <asp:Button ID="moverUser1" runat="server" Text=">"  OnClick="moverUser1_Click" />
                                                            <br />
                                                            <asp:Button ID="moverUser2" runat="server" Text="<"  OnClick="moverUser2_Click" />
                                                        </div>
                                                        <div class="col-md-4 control-label">
                                                            <br />
                                                            <h5>Usuario a asignar</h5>
                                                            <asp:ListBox ID="ListUsuariosAsignados" runat="server"  CssClass=" form-control" SelectionMode="Multiple"
                                                                Height="200" Width="200"></asp:ListBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                    --%>
                                               <br />
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
