<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="partida_especifica.aspx.cs" Inherits="juefi2.Views.partida_especifica.partida_especifica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Partida Especifica</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Nombre de la Partida</label>
                            <asp:TextBox ID="Textnombrepartida" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Numero de Empresas</label>
                            <asp:TextBox ID="txtnombreempresa" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>



                     <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>

                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" id="atepicker"/>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date range -->
                    </div>

                    
                     <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <label>Fecha de Fin</label>

                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" id="ddatepicker"/>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date range -->
                    </div>
                    


                </div>
            </div>
             <div class="box-footer">
                    <asp:Button ID="guardar" runat="server" Text="Crear partida" CssClass="btn btn-primary"  />
                </div>

        </div>
    </div>
</asp:Content>
