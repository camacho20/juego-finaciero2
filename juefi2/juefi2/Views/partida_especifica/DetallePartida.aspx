<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="DetallePartida.aspx.cs" Inherits="juefi2.Views.partida_especifica.DetallePartida" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
                          <h5><i class="zmdi zmdi-settings-square zmdi-hc-fw"></i>Detalle de Partida</h5>
                      </a>
                  </div>
              </div>

          </div>
    </header>

     <div class="col-md-12 ">




                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Detalle partida</h4>

                        <div class="row">
                            <div class="col-md-3  col-md-offset-1 ">
                                <div class="form-group">
                                    <label>Fecha de Inicio</label>
                                </div>
                            </div>


                            <div class="col-md-3   ">
                                <div class="form-group">
                                    <label>Fecha de Fin</label>
                                </div>

                            </div>
                             <div class="col-md-3  ">
                                 <asp:DropDownList ID="partida1" CssClass="form-control select2" runat="server">
                                     
                                 </asp:DropDownList>

                            </div>


                            <div class="col-md-3 ">
                                <asp:Button ID="Button1" runat="server" Text="Mirar balance" CssClass="btn btn-primary"  OnClick="Button1_Click" />
                            </div>
                        </div>

                        <br />
                        <br />


                        <div class="col-md-7 ">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-1 ">
                                    <div class=" form-group">
                                        <asp:TextBox ID="txtBuscar" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>

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
                        AllowPaging="true" OnPageIndexChanging="puces_PageIndexChanging">
                        <EditRowStyle BackColor="#ffffcc" />



                        <Columns>

                            <asp:CommandField EditText="Editar" ShowEditButton="True">


                                <ControlStyle CssClass="btn  btn-success " />
                            </asp:CommandField>


                            <asp:CommandField ShowDeleteButton="True">


                                <ControlStyle CssClass="btn  btn-danger" />
                            </asp:CommandField>


                        </Columns>
                        <HeaderStyle BackColor=" #3c8dbc" Font-Bold="True" ForeColor="White" CssClass="#" />
                    </asp:GridView>

                    </div>
                   
                </div>





    </div>

    


     
</asp:Content>
