<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagina_maestra/paginamaestra.Master" AutoEventWireup="true" CodeBehind="balance_final.aspx.cs" Inherits="juefi2.Views.balance_final.balance_final" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <title>Balance Final</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <header class="content__title">
        <h1>xxx</h1>

    </header>

    <br />
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-2 col-md-offset-0">
                <br />
                <br />
                <br />
                <ul class="tabs">
                    <li><a href="#tab1"><span class="fa fa-money"></span><span class="tab-text">Activos</span></a></li>
                    <li><a href="#tab2"><span class=" fa fa-credit-card"></span><span class="tab-text">Pasivos</span></a></li>
                    <li><a href="#tab3"><span class="fa fa-home"></span><span class="tab-text">Patrimonio</span></a></li>

                </ul>
              <article id="tab1">
                  <table class="table table-inverse mb-0">
                            <thead>
                            <tr>
                                <th>Cuenta</th>
                                <th>Valor</th>
                                
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Activos</td>
                                <td></td>
                                
                            </tr>
                                  <tr>
                                <th scope="row">2</th>
                                <td>Corriente:</td>
                                <td></td>

                                
                            </tr>
                                  <tr>
                                <th scope="row">3</th>
                                <td>Efectivo </td>
                                <td>100.000.000  </td>
                               
                            </tr>
                                  <tr>
                                <th scope="row">4</th>
                                <td>Inversiones: </td>
                                <td></td>

                                
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                    <td>  CDT </td>
                                   <td>60.000.000 </td>
                                   
                                     </tr>
                           
                            </tbody>
                        </table>
                    
                
                  </article>

<%--//////////////////////////////////////////////////////////////////////////////////////////////--%>

                <article id="tab2">
                  <table class="table table-inverse mb-0">
                            <thead>
                            <tr>
                                <th>Cuenta</th>
                                <th>Valor</th>
                                
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>aaaaaaaaaa</td>
                                <td></td>
                                
                            </tr>
                                  <tr>
                                <th scope="row">2</th>
                                <td>aaaaaaaaaaaaaaaa</td>
                                <td></td>

                                
                            </tr>
                                  <tr>
                                <th scope="row">3</th>
                                <td>aaaaaaaaaaaa</td>
                                <td>100.000.000  </td>
                               
                            </tr>
                                  <tr>
                                <th scope="row">4</th>
                                <td>aaaaaaaaaaa </td>
                                <td></td>

                                
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                    <td>  CDT </td>
                                   <td>60.000.000 </td>
                                   
                                     </tr>
                           
                            </tbody>
                        </table>
                    
                
                  </article>
  <%--///////////////////////////////////////////////////////////////////////////////////////////////////////--%>
                          <article id="tab3">
                  <table id="data-table" class="table">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td> <asp:Label ID="Label1" runat="server" Text="Efectivo :"></asp:Label></td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr>
                            </tbody>
                        </table>
                    
                
                  </article>
                </div>
    </div>
    </div>

</asp:Content>
