<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="PerioodoPartida.aspx.cs" Inherits="juefi2.Views.partida_especifica.PerioodoPartida" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Periodo de partida</title>
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

                      <a href="../partida_especifica.aspx">
                          <h5><i class="zmdi zmdi-settings-square zmdi-hc-fw"></i>Partida</h5>
                      </a>
                      
                       <span>>> </span>

                      <a href='#'>
                          <h5><i class="zmdi zmdi-code zmdi-hc-fw"></i>Periodo</h5>
                      </a>

                  </div>
              </div>

          </div>
    </header>

    <div class="col-md-12 ">




                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Gestionar periodo</h4>
                      
                       
                                    <div class="row">
                                        <div class="col-md-4  col-md-offset-1 " >
                                            
                                            <label>Seleccionar partida :</label>
                                             <asp:DropDownList ID="partida1" runat="server">
                                             <asp:ListItem Value="none">-------</asp:ListItem>
                                           </asp:DropDownList>
                                           </div>



                                    <div class="col-md-4   ">
                                            <div class="form-group">
                                                <label>Fecha de Inicio</label>

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control date-picker" id="fechaInicio" runat="server" placeholder="aa/mm/dd" />
                                                        <i class="form-group__bar"></i>
                                                    </div>
                                                </div>

     
                                            </div>
                                      
                                        </div>
                                         </div>
                                        <div class="row">

                                        <div class="col-md-4   ">
                                            <div class="form-group">
                                                <label>Fecha de Fin</label>

                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control date-picker" runat="server" id="fechaFin" placeholder="aa/mm/dd" />
                                                        <i class="form-group__bar"></i>
                                                    </div>
                                                </div>

                                            </div>
                                                 
                                        </div>

                                            <div class="col-md-4   ">

                                                <asp:Button ID="guardar" runat="server" Text="Crear partida" CssClass="btn btn-primary" OnClick="guardar_Click" />
                                            </div>
                                        </div>

                        <asp:LinkButton ID="Finalizar" CssClass="btn btn-info" runat="server" OnClick="Finalizar_Click">Finalizar</asp:LinkButton>

                                       </div>

                  
                            </div>               
                                 </div>




</asp:Content>
