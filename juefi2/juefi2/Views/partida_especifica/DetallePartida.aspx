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


    


    <asp:Repeater ID="listaempresa" runat="server">

        <ItemTemplate>
            <div class="col-md-9 ">
            <div class="card-demo">
                <div class="card">

                    <div class="card-body">
                        <h4 class="card-title">Partida #  <asp:Label ID="lblidpartida" runat="server" Text="<%#Eval("id_partida_general")%>"></asp:Label>    <%#Eval("nombre_partida")%></h4>
                        <h6 class="card-subtitle">Fecha Inicio:<%#Eval("fecha_inicial")%>   Fecha Fin: <%#Eval("fecha_fin")%> </h6>

                        <div class="col-md-5 ">
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
            </div>
            
        </ItemTemplate>
    </asp:Repeater>

        
</asp:Content>
