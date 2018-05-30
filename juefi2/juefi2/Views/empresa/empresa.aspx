<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="empresa.aspx.cs" Inherits="juefi2.Views.empresa.empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Gestionar Empresa</title>
    


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
                          <h5><i class="zmdi zmdi-balance zmdi-hc-fw"></i>Gestinar empresa</h5>
                      </a>
                  </div>
              </div>

          </div>

    </header>

 <div class="col-md-12 ">
   <div class="card">
                    <div class="card-body">
                        <h4 class=" card-title"" >Gestionar Empresa</h4>

                        <div class="tab-container">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Crear Empresa</a>
                                </li>
                               
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#detalleempresa" role="tab">Detalle de mi empresa</a>
                                </li>

                            </ul>


                          <%-- crear empresa--%>
                            <div class="tab-content">
                                <div class="tab-pane active fade show" id="home" role="tabpanel">
                                  
                <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Nit de la Empresa</label>
                            <asp:TextBox ID="txtnit" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-0">
                        <div class="form-group">
                            <label>Nombre de la Empresa</label>
                            <asp:TextBox ID="txtnombre" runat="server" onkeypress="return soloLetras(event)" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-0 ">
                        <div class="form-group">
                            <label>Numero de Integrantes</label>

                            <asp:DropDownList ID="DropIntegrantes" CssClass="form-control select2" runat="server">
                                <asp:ListItem Value="none">-------</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>

                            </asp:DropDownList>

                        </div>
                    </div>

                     <div class="col-md-5  col-md-offset-1 ">
                         <label>Politicas de la Empresa</label>
                         <textarea class="form-control" rows="2" placeholder="Enter ..." runat="server" id="politicas">
                  </textarea>
                     </div>
                     <div class="col-md-5  col-md-offset-1 ">
                         <label>Seleccionar partida :</label>
                         <asp:DropDownList ID="partida1" runat="server">
                             <asp:ListItem Value="none">-------</asp:ListItem>
                         </asp:DropDownList>
                     </div>
                        
                     </div>

                    <div class="col-md-4 col-md-offset-8 ">
                        <br />
                        <asp:Button ID="btnguardar" runat="server" CssClass="btn btn-primary" OnClick="btnguardar_Click" Text="Guardar" />
                        
                        </div>
                    
                  
                    </div>

                              

                                  </div>

                             


                                    
                               




                           <%--    lista de empresas--%>

                                <div class="tab-pane fade" id="detalleempresa" role="tabpanel">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">Basic example</h4>
                                            <h6 class="card-subtitle">Click the buttons below to show and hide another element via class changes:</h6>

                                            <div class="btn-demo">
                                                <a class="btn btn-light" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Link with href
                                </a>
                                                <button class="btn btn-light" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                                    Button with data-target
                               
                                                </button>
                                            </div>

                                            <div class="collapse" id="collapseExample">
                                                <hr>

                                                <div class="card card-body">
                                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                               
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>


                               
                            </div>
                        </div>
                    </div>
                </div>


    </div>

</asp:Content>
