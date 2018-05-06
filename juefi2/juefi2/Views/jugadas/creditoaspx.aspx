<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="creditoaspx.aspx.cs" Inherits="juefi2.Views.jugadas.creditoaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-9 ">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Credito</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->

            <div class="box-body">
                <div class="row">

                      <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto cretido</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>
                 
                    <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <label>Tiempo del cretido</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">3 meses</option>
                                <option>6 meses</option>
                                <option>9 meses</option>
                                 <option>12 meses</option>
                            </select>
                        </div>
                    </div>
                  
                    <div class="col-md-4 col-md-offset-1  ">
                        <div class="form-group">
                            <label>Cuota Mensual</label>
                            <asp:TextBox ID="capital" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                 

                </div>
            <!-- /.box-body -->

            <div class="box-footer">
                <asp:Button ID="guardar" runat="server" Text="Relizar Cretido" CssClass="btn btn-primary"  />
            </div>

        </div>


        <!-- nav-tabs-custom -->
    </div>
</asp:Content>
