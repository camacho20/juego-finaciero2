<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="empresa.aspx.cs" Inherits="juefi2.Views.empresa.empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Gestionar Empresa</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Gestionar Empresa</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">




                      <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Nit de la Empresa</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Nombre de la Empresa</label>
                            <asp:TextBox ID="nombre" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <label>Numero de Integrantes</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <label>Fecha de Inicio</label>

                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" id="datepicker">
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date range -->
                    </div>
                    <div class="col-md-4 col-md-offset-1  ">
                        <div class="form-group">
                            <label>Capital</label>
                            <asp:TextBox ID="capital" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-9  col-md-offset-1 ">
                  <label>Politicas de la Empresa</label>
                  <textarea class="form-control" rows="3" placeholder="Enter ...">
                  </textarea>
                </div>


                </div>
            <!-- /.box-body -->

            <div class="box-footer">
                <asp:Button ID="guardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="guardar_Click" />
            </div>

        </div>


        <!-- nav-tabs-custom -->
    </div>

</asp:Content>
