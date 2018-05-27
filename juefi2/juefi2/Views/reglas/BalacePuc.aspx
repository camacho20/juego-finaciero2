<%@ Page   Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="BalacePuc.aspx.cs" Inherits="juefi2.Views.reglas.BalacePuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Balance general -PUC</title>
     
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
                        <h5><i class="zmdi zmdi-money-box zmdi-hc-fw"></i>Balance general-puc</h5>
                    </a>
                </div>
            </div>

        </div>
    </header>



    <!-- Default box -->
    <div class="card" id="puc">

        <!-- /.box-header -->
        <!-- form start -->

        <div class="card-body">

            <div class="row">

                <div class="col-md-3 col-md-offset-1">
                    <br />
                    <h1 class="card-title">Balance General- PUC </h1>

                </div>
                <div class="col-md-4 ">
                    <asp:LinkButton ID="modal" CssClass="btn btn-primary" data-toggle="modal" data-target="#modal-default" runat="server">Agregar nuevo Puc <i class="zmdi zmdi-hospital zmdi-hc-fw"></i></asp:LinkButton>
                     
                    </div>

                <div class="col-md-5 ">
                     <div class="row">
                         <div class="col-md-6 col-md-offset-1 ">
                     <div class=" form-group">
                    <asp:TextBox ID="txtBuscar"  CssClass="form-control" runat="server"></asp:TextBox></div>
                   
                         </div>
                         <div class="col-md-6 ">
                          <asp:LinkButton ID="btnbucas" CssClass="btn  btn-info " OnClick="btnbucas_Click" runat="server">Buscar <i class=" zmdi zmdi-search"  ></i></asp:LinkButton>
                </div>
                         </div>
                         
                          </div>



            </div>
          
           




            <asp:GridView ID="puces" runat="server" CellPadding="4" AutoPostBack="true"   
        OnRowUpdating="TaskGridView_RowUpdating"
        OnRowEditing="TaskGridView_RowEditing"
        OnRowCancelingEdit="TaskGridView_RowCancelingEdit"
        OnRowDeleting="OnRowDeleting" 
       CssClass="table table-bordered table-striped grid "
      
        AllowPaging="true" OnPageIndexChanging="puces_PageIndexChanging"
        
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
      <%-- modal agregar reglas--%>
            <div class="modal fade" id="modal-default" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title pull-left">Agregar nuevo valor Puc</h5>
                        </div>
                        <div class="modal-body">
                            

                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-0">
                                            <div class="form-group">
                                                <label>Codigo PUC</label>
                                                <asp:TextBox ID="codigo" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6 ">
                                            <div class="form-group">
                                            <label>Valor</label>
                                             <asp:TextBox ID="txtValor" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                            </div>
                                </div>


                            
                                         <div class="col-md-10 ">
                                             <div class="form-group">
                                        <label>Nombre</label>
                                        <textarea id="descrip2" cols="2" rows="2" class="form-control" runat="server"></textarea>
                                    </div>
                                             </div>
                        
                        </div>
                        <div class="modal-footer">
                           
                            <button type="button" class="btn btn-link" data-dismiss="modal">Close</button>

                            <asp:LinkButton ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click">Guardar</asp:LinkButton>

                           

                        </div>
                    </div>
                </div>
            </div>
   </div>


</asp:Content>
