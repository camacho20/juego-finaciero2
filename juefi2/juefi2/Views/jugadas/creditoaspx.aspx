<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="creditoaspx.aspx.cs" Inherits="juefi2.Views.jugadas.creditoaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <header class="content__title">
       <div class="toolbar">
             <div class="col-md-9 ">
            <div class="toolbar__nav">
                <a href="../usuario/principal.aspx"><h5><i class="zmdi zmdi-home"></i> Inicio</h5></a>
              <span> >> </span>
              
                <a href='#'><h5><i class="zmdi zmdi-card zmdi-hc-fw"></i> Creditos </h5></a>
                     </div>
            </div>

        </div>

    </header>


    <div class="col-md-8 ">
       <div class="card">
            
           <div class="card-body">
               <h3 class="card-title">Simular Creditos</h3>

               <div class="row">

                   <div class="col-md-4 col-md-offset-0">
                       <div class="form-group">
                           <label>Monto credito</label>
                           <asp:TextBox ID="txtMonto"  runat="server" onkeydown="return validNumericos(event)" CssClass=" form-control"></asp:TextBox>


                       </div>
                   </div>

                   <div class="col-md-6  ">
                       <div class="form-group">
                           <label>Tiempo del Credito en Meses</label>
                           <asp:TextBox ID="txtMeses" CssClass=" form-control" onkeydown="return validNumericos(event)" runat="server"></asp:TextBox>
                       </div>
                   </div>


                   

                  </div>



               <div class="row">

                <div class="col-md-6  ">
                    <label>Mes | Cuota | Interes | Amortizacion | Saldo</label>
                    <asp:ListBox ID="Listmostrar" CssClass=" form-control" runat="server"
                        Height="270" Width="270" ></asp:ListBox>


                    </div>
                   <div class="col-md-4 ">
                       <div class="form-group">
                           <label>Porcentaje</label>
                           <asp:TextBox ID="txtporcetaje" CssClass=" form-control" runat="server"></asp:TextBox>
                       </div>

                       <div class="form-group">
                           <asp:Button ID="btncalcular" CssClass=" btn btn-primary" OnClick="btncalcular_Click" runat="server" Text="Calcular" />   
                       </div>

                   </div>

                  

               </div>

           </div>
       </div>
    </div>
</asp:Content>
