<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="Reglas.aspx.cs" Inherits="juefi2.Views.reglas.Reglas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Gestionar Reglas</title>



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
                    <h5><i class="zmdi zmdi-assignment zmdi-hc-fw"></i>Gestinar reglas</h5>
                </a>
            </div>
        </div>
</div>

        </header>

     <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
            
                       <div class="row">

                <div class="col-md-3 col-md-offset-1">
                    <br />
                    <h1 class="card-title">Gestionar Reglas </h1>

                </div>
                <div class="col-md-4 ">
                    <asp:LinkButton ID="modal" CssClass="btn btn-primary" data-toggle="modal" data-target="#modal-default" runat="server">Agregar nueva Regla <i class="zmdi zmdi-hospital zmdi-hc-fw"></i></asp:LinkButton>
                     
                    </div>

                <div class="col-md-5 ">
                     <div class="row">
                         <div class="col-md-6 col-md-offset-1 ">
                     <div class=" form-group">
                    <asp:TextBox ID="txtBuscar"  CssClass="form-control" runat="server"></asp:TextBox></div>
                   
                         </div>
                         <div class="col-md-6 ">
                          <asp:LinkButton ID="btnbucas" CssClass="btn  btn-info "  OnClick="btnbucas_Click" runat="server">Buscar <i class=" zmdi zmdi-search"  ></i></asp:LinkButton>
                </div>
                         </div>
                         
                          </div>



            </div>
          
             
                
                  <%-- modal agregar reglas--%>

                            <div class="modal fade" id="modal-default" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title pull-left">Registrar Nueva Regla</h5>
                                        </div>
                                        <div class="modal-body">
                                             <div class="row">
                                  <div class="col-md-7 col-md-offset-1">

                                      <div class="form-group">
                                          <label>Descripción de la regla</label>
                                          <textarea id="descrip1" cols="2" rows="2" class="form-control" runat="server"></textarea>
                                          <label>Tipo de regla</label>
                                          <asp:DropDownList ID="tiporegla2" CssClass="form-control "  runat="server">
                                              <asp:ListItem Value="none">-------</asp:ListItem>
                                              <asp:ListItem Value="General">General</asp:ListItem>
                                              <asp:ListItem Value="compra">Compra</asp:ListItem>
                                              <asp:ListItem Value="inversion">Inversion</asp:ListItem>
                                              <asp:ListItem Value="credito">Credito</asp:ListItem>
                                              <asp:ListItem Value="gastos">Gastos</asp:ListItem>
                                              <asp:ListItem Value="produccion">Produccion</asp:ListItem>
                                              <asp:ListItem Value="gastos_de_publicidad">Gastos de Publicidad</asp:ListItem>
                                              <asp:ListItem Value="inversiones_en_tecnología">Inversiones en Tecnología</asp:ListItem>

                                          </asp:DropDownList>
                                          

                                      </div>
                                </div>

                                        <div class="col-md-3 ">
                                      <div class="form-group">
                                          <label>Valor Minimo</label>
                                          <asp:TextBox ID="valormin" runat="server" CssClass="form-control"></asp:TextBox>
                                          <label>Valor Maximo</label>
                                          <asp:TextBox ID="valormax" runat="server" CssClass="form-control"></asp:TextBox>

                                      </div>
                                  </div>
                                        </div>



                                            
                                        </div>
                                        <div class="modal-footer">
                                           
                                            <button type="button" class="btn btn-link" data-dismiss="modal">Cerrar</button>
                                             
                                            
                                            
                                             <asp:LinkButton ID="Button3" runat="server"  CssClass="btn btn-primary" OnClick="guardar" > Guardar</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </div>


                
        <!-- /.modal -->



      <div class="table-responsive">
    <asp:GridView ID="regla" runat="server" CellPadding="4" AutoPostBack="true"   
        OnRowUpdating="TaskGridView_RowUpdating"
        OnRowEditing="TaskGridView_RowEditing"
        OnRowCancelingEdit="TaskGridView_RowCancelingEdit"
        OnRowDeleting="OnRowDeleting" 
       CssClass="grid table table-bordered table-striped "
      
         AllowPaging="true" OnPageIndexChanging="regla_PageIndexChanging"
        
        >
         <EditRowStyle BackColor="#ffffcc" />

     

                <Columns>

                    <asp:CommandField EditText="Editar" ShowEditButton="True" >
                    
                     
                    <ControlStyle CssClass="btn  btn-success " />
                    </asp:CommandField>
                    
                     
                    <asp:CommandField ShowDeleteButton="True" >
                    

                    <ControlStyle CssClass="btn  btn-danger" />
                    </asp:CommandField>
                    

                </Columns>
                <HeaderStyle BackColor=" #3c8dbc" Font-Bold="True" ForeColor="White" CssClass="#" />
            </asp:GridView>
    </div>
        </div>
       </div>




</asp:Content>
