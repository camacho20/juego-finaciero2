<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="creditoaspx.aspx.cs" Inherits="juefi2.Views.jugadas.creditoaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-8 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Creditos</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                      <div class="col-md-6 col-md-offset-0">
                          <button type="button" class="btn  btn-primary" data-toggle="modal" data-target="#modal-corto">
                              Credito a corto plazo
             
                          </button>
                       <p>Son creditos menores a 1 años.</p>
                         
             <a href="../Simulaciones/SimulacionCredito.aspx">Click aqui para Simular credito a Corto Plazo</a>

                    </div>
                 
                    <div class="col-md-6  ">

                          <button type="button" class="btn  btn-primary" data-toggle="modal" data-target="#modal-largo1">
                              Credito a largo plazo
                             

                          </button>
                         <p>Son creditos mayores a 1 año</p>
                        
        <a href="../Simulaciones/SimulacionCreditoLargoplazo.aspx">Click aqui para Simular credito a largo plazo</a>
             
                       
                    </div>
                   
                   <%-- modal credito a corto plazo--%>
                    <div class="modal fade" id="modal-corto">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Default Modal</h4>
                                </div>
                                <div class="modal-body">
                                    <p>One fine body&hellip;</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                            
                            <!-- /.modal-content -->

                           
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->





                               <%-- modal credito a largo plazo--%>
                    <div class="modal fade" id="modal-largo1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Default Modal</h4>
                                </div>
                                <div class="modal-body">
                                    <p>One fine body&hellip;</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->



                
            <!-- /.box-body -->

            

        </div>
          
        <!-- nav-tabs-custom -->
    </div>
            </div>
        </div>
</asp:Content>
