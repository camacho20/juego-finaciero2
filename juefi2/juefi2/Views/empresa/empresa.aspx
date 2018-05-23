<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="empresa.aspx.cs" Inherits="juefi2.Views.empresa.empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Gestionar Empresa</title>
     <script>
       
        function panelAsignarUsuarios() {
            $('#hrefAsignarIntegrantes').trigger('click');
            return true;
        };
    </script>


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
                        <h4 class="card-title">Gestionar partida</h4>

                        <div class="tab-container">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Crear Empresa</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Agregar usuarios a empresa</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#detalleempresa" role="tab">Detalle de mi empresa</a>
                                </li>

                            </ul>


                          <%-- crear empresa--%>
                            <div class="tab-content">
                                <div class="tab-pane active fade show" id="home" role="tabpanel">
                                    <h3 class=" card-title"" >Gestionar Empresa</h3>

                                    <div class="row">

                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <label>Nit de la Empresa</label>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-md-offset-0">
                                            <div class="form-group">
                                                <label>Nombre de la Empresa</label>
                                                <asp:TextBox ID="TextBox2" runat="server" onkeypress="return soloLetras(event)" CssClass=" form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-md-offset-0 ">
                                            <div class="form-group">
                                                <label>Numero de Integrantes</label>

                                                <asp:DropDownList ID="DropDownList1" CssClass="form-control select2" runat="server">
                                                    <asp:ListItem Value="none">-------</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                    <asp:ListItem Value="5">5</asp:ListItem>

                                                </asp:DropDownList>

                                            </div>
                                        </div>

                                        <div class="col-md-9  col-md-offset-1 ">
                                            <label>Politicas de la Empresa</label>
                                            <textarea class="form-control" rows="2" placeholder="Enter ..." runat="server" id="Textarea1">
                                          </textarea>
                                        </div>


                                        <div class="col-md-4 col-md-offset-8 ">
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="btnguardar_Click" Text="Guardar" />

                                        </div>

                                        <div class="col-md-4 col-md-offset-1 ">
                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="Agregar usuario"></asp:Label>

                                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control select2">
                                                    <asp:ListItem Value="none">-------</asp:ListItem>

                                                </asp:DropDownList>


                                            </div>

                                        </div>

                                        <div class="col-md-4 col-md-offset-1 ">
                                            <br />
                                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="btngregar_Click" Text="Agregar Usuario" />

                                        </div>
                                    </div>

                                  </div>

                               <%-- //agregar usuario a empresa--%>
                                <div class="tab-pane fade" id="profile" role="tabpanel">
                                    <div class="row">
                                         <div class="col-md-2" >
                                             <br />
                                            <label>Selccionar partida :</label>
                                           
                                           </div>
                                        <div class="col-md-3 ">
                                           
                                            <div class="form-group">
                                                
                                                <asp:DropDownList ID="selctpartida" CssClass="form-control" runat="server">

                                              <asp:ListItem Value="none">-------</asp:ListItem>

                                                </asp:DropDownList> 
                                            </div>
                                        </div>
                              </div>


                                        <div class="col-md-12   ">
                                            
                                           <div class="row">
                                         
                                               

                                                        <div class="col-md-4 control-labe   col-md-offset-1 ">
                                                            <br />
                                                            <h4>Empresas disponibles</h4>
                                                            <asp:ListBox ID="ListUsuariosDisponibles" CssClass=" form-control" runat="server" SelectionMode="Multiple"
                                                                Height="200" Width="200"></asp:ListBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-md-2 control-labe ">
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
                                                        </div>
                                                    
                                                       

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





    <div class="col-md-9  col-md-offset-0">
        <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                <h3 class=" card-title"" >Gestionar Empresa</h3>
           
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

                                <asp:DropDownList ID="usuario1" runat="server" CssClass="form-control select2">
                                    <asp:ListItem Value="none">-------</asp:ListItem>
                                
                                </asp:DropDownList>
                                
                               
                            </div>

                        </div>

                        <div class="col-md-4 col-md-offset-1 ">
                            <br />
                            <asp:Button ID="btngregar" runat="server" CssClass="btn btn-primary" OnClick="btngregar_Click" Text="Agregar Usuario" />

                        </div>
                    </div>
                   
                    <div class="col-md-12 col-md-offset-1  ">
                        <h4 class=" box-title" id="inter" runat="server">Integrantes Agregados</h4>

                        <asp:Repeater ID="mostraragregados2" runat="server">
                            <ItemTemplate>

                                <asp:Label ID="label" runat="server" Text='<%# Eval("nombre_1_usuario")%>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("apellido_1_usuario")%>'></asp:Label>

                            </ItemTemplate>
                        </asp:Repeater>




                    </div>
                    
            
                <!-- /.box-body -->

            </div>
            
            <!-- nav-tabs-custom -->
        </div>

    </div>
    
</asp:Content>
