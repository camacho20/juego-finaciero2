<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="BalacePuc.aspx.cs" Inherits="juefi2.Views.reglas.BalacePuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Balance general -PUC</title>

    <script>

        function panelBalance() {
        
            $('#puc').trigger('click');
            return true;
        };

        function ModalBalance() {//modalBalance
            $('#modaldefault').modal('show');
            return true;
        };
       

        function Mensaje() {
            $('#modalMensaje').modal('show');
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
                          <h5><i class="zmdi zmdi-money-box zmdi-hc-fw"></i>Balance general-puc</h5>
                      </a>
                  </div>
              </div>

          </div>
    </header>

    <!-- Default actulizar puc -->

    <div class="modal fade" id="modaldefault" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title pull-left">Editar PUC</h5>
                </div>
                <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-1">

                                    <div class="form-group">
                                        <label>Codigo PUC</label>
                                         <asp:TextBox ID="codigo" runat="server" CssClass="form-control"></asp:TextBox>
                                       
                                    </div>
                                    </div>
                                    <div class="col-md-6 ">
                                         <div class="form-group">
                                       <label>Valor</label>
                                        <asp:TextBox ID="txtValor" runat="server" CssClass="form-control" ></asp:TextBox>
                                             </div>

                                        </div>

                                
                                
                            </div>
                    <div class="form-group">
                        <label>Nombre</label>
                        <textarea id="descrip1" cols="2" rows="2" class="form-control" runat="server"></textarea>
                    </div>
                                       
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-link" data-dismiss="modal">Cancelar</button>
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                </div>
            </div>
        </div>
    </div>
 
 


         <!-- Default box --> 
     <div class="card" id="puc">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
                
                

             <h1 class="card-title">Gestionar PUC </h1>

                   <table id="data-table" class="table table-bordered table-striped">
                <thead>
                <tr>
                    
                  <th>Codigo</th>
                  <th>Nombre</th>
                  <th>Valor</th>
                  <th>Editar</th>
                 
                </tr>
                </thead>
                <tbody>

               <asp:Repeater ID="tablapuc" runat="server">

                   <ItemTemplate>

                       <tr>
                            
                           <td><%#Eval("codigo") %></td>
                           <td><%#Eval("descripcion") %></td>
                           <td><%#Eval("valor") %></td>
                           <td>  <%--<asp:LinkButton ID="linkbotonBalance"
                                   runat="server"
                                   CommandArgument='<%# Eval("idpuc") %>'
                                   OnCommand="linkbotonBalance_Command"   >editar</asp:LinkButton>--%>

                               <asp:Button  ID="linkbotonBalance"
                                   runat="server"
                                   CommandArgument='<%# Eval("idpuc") %>'
                                   OnCommand="linkbotonBalance_Command"  Text="Button"   />

                           </td>





                       </tr>


                 </ItemTemplate>
                    

               </asp:Repeater>


                </tbody>
                
              </table>
    </div>





                 </div>
         



</asp:Content>
