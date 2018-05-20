<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="gastos_publicidad.aspx.cs" Inherits="juefi2.Views.jugadas.gastos_publicidad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <header class="content__title">
        <h1>xxx</h1>


    </header>

    <div class="col-md-9 ">
         <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">

                  <h3 class="card-title">Inversión en Tecnologia</h3>
                <div class="row">

                    <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <label>Monto públicidad</label>
                            <asp:TextBox ID="Txtmonto" runat="server" CssClass=" form-control"></asp:TextBox>
                        </div>
                    </div>

                   

                     <div class="col-md-4 col-md-offset-1 ">
                        <div class="form-group">
                            <label>Tiempo de diferido</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">1 mes</option>
                                <option>2 meses</option>
                                <option>3 meses</option>
                            </select>
                        </div>
                    </div>

                     <div class="col-md-4 col-md-offset-1">
                        <div class="form-group">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Pago Diferido"></asp:CheckBox>
                        </div>

                    </div>

                    <div class="col-md-4  col-md-offset-1 ">
                        <div class="form-group">
                            <div class="box-footer">
                                <asp:Button ID="guardar" runat="server" Text="Realizar Inversión"  OnClick="guardar_Click" CssClass="btn btn-primary" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
