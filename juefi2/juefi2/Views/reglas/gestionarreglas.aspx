<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestionarreglas.aspx.cs" Inherits="juefi2.Views.reglas.gestionarreglas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestionar reglas</title>
    <link href="../../Content/stilos/griview.css" rel="stylesheet" />
   
      <script language="javascript" type="text/javascript"/>
     javascript:window.history.forward(1);
     </script>
   
      <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

    <link href="../../Content/stilos/estilotab/estilos.css" rel="stylesheet" />
    
   <!-- Vendor styles -->
        
<link href="../../Content/stilos/estiloadmin/css/material-design-iconic-font.min.css" rel="stylesheet" />
      
<link href="../../Content/stilos/estiloadmin/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet" />

<link href="../../Content/stilos/estiloadmin/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.css" rel="stylesheet" />

        <!-- App styles -->
       <link href="../../Content/stilos/estiloadmin/css/app.min.css" rel="stylesheet" />
    <link href="../../Content/stilos/modal.css" rel="stylesheet" />


</head>
<body data-sa-theme="7" >


    <form id="form1" runat="server">

         
  <main class="main">
           

            <header class="header">
                <div class="navigation-trigger hidden-xl-up" data-sa-action="aside-open" data-sa-target=".sidebar">
                    <i class="zmdi zmdi-menu"></i>
                </div>

                <div class="logo hidden-sm-down">
                    <h1><a href="../usuario/principal.aspx">Bienvenido(a) :</a></h1>
                </div>

               

                <ul class="top-nav">
                    <li class="hidden-xl-up"><a href="#" data-sa-action="search-open"><i class="zmdi zmdi-search"></i></a></li>

                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="top-nav__notify"><i class="zmdi zmdi-email"></i></a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu--block">
                            <div class="dropdown-header">
                                Messages

                                <div class="actions">
                                    <a href="messages.html" class="actions__item zmdi zmdi-plus"></a>
                                </div>
                            </div>

                            <div class="listview listview--hover">
                                <a href="#" class="listview__item">
                                    <img src="demo/img/profile-pics/1.jpg" class="listview__img" alt="">

                                    <div class="listview__content">
                                        <div class="listview__heading">
                                            David Belle <small>12:01 PM</small>
                                        </div>
                                        <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                    </div>
                                </a>

                                <a href="#" class="listview__item">
                                    <img src="demo/img/profile-pics/2.jpg" class="listview__img" alt="">

                                    <div class="listview__content">
                                        <div class="listview__heading">
                                            Jonathan Morris
                                            <small>02:45 PM</small>
                                        </div>
                                        <p>Nunc quis diam diamurabitur at dolor elementum, dictum turpis vel</p>
                                    </div>
                                </a>

                                <a href="#" class="listview__item">
                                    <img src="demo/img/profile-pics/3.jpg" class="listview__img" alt="">

                                    <div class="listview__content">
                                        <div class="listview__heading">
                                            Fredric Mitchell Jr.
                                            <small>08:21 PM</small>
                                        </div>
                                        <p>Phasellus a ante et est ornare accumsan at vel magnauis blandit turpis at augue ultricies</p>
                                    </div>
                                </a>

                                <a href="#" class="listview__item">
                                    <img src="demo/img/profile-pics/4.jpg" class="listview__img" alt="">

                                    <div class="listview__content">
                                        <div class="listview__heading">
                                            Glenn Jecobs
                                            <small>08:43 PM</small>
                                        </div>
                                        <p>Ut vitae lacus sem ellentesque maximus, nunc sit amet varius dignissim, dui est consectetur neque</p>
                                    </div>
                                </a>

                                <a href="#" class="listview__item">
                                    <img src="demo/img/profile-pics/5.jpg" class="listview__img" alt="">

                                    <div class="listview__content">
                                        <div class="listview__heading">
                                            Bill Phillips
                                            <small>11:32 PM</small>
                                        </div>
                                        <p>Proin laoreet commodo eros id faucibus. Donec ligula quam, imperdiet vel ante placerat</p>
                                    </div>
                                </a>

                                <a href="#" class="view-more">View all messages</a>
                            </div>
                        </div>
                    </li>

                    

                    

                   

                    <li class="dropdown hidden-xs-down">
                        <a href="#" data-toggle="dropdown"><i class="zmdi zmdi-square-right zmdi-hc-fw"></i></a>

                        <div class="dropdown-menu dropdown-menu-right">
                            <asp:LinkButton ID="LinkButtonsalir" CssClass="dropdown-item" OnClick="LinkButton1_Click" runat="server"><i class="zmdi zmdi-directions-run zmdi-hc-fw"></i>Salir</asp:LinkButton>
                            
                        </div>
                    </li>

                    
                </ul>

                <div class="clock hidden-md-down">
                    <div class="time">
                        <span class="time__hours"></span>
                        <span class="time__min"></span>
                        <span class="time__sec"></span>
                    </div>
                </div>
            </header>

  
  <!-- Left side column. contains the logo and sidebar -->
              <aside class="sidebar">
                <div class="scrollbar-inner">

                    <div class="user">
                        <div class="user__info" data-toggle="dropdown">
                            <img class="user__img" src="../../Content/imagenes/imagesinicio/usuario.png" alt=""/>
                    <div class="pull-left info">
                        <asp:Label ID="lblbnombre" runat="server" Text=""></asp:Label>
                        <br />
                        <!-- Status -->
                        <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                    </div>
                </div>

                       
                    </div>

               <ul class="navigation">
                        <li class="@@indexactive"><a href="../usuario/principal.aspx"><i class="zmdi zmdi-home"></i>Inicio</a></li>
                        <asp:Repeater ID="menurepeter" runat="server">

                    <ItemTemplate>

                        <li class="@@indexactive ">
                            <a href="<%#Eval("url") %>"><i class="<%#Eval("icono") %>"></i><%#Eval("item") %></a>

                        </li>


                    </ItemTemplate>




          </asp:Repeater>
                      
                        
                          </ul>
                </div>
            </aside>


  <!-- Content Wrapper. Contains page content -->
  <!-- Content Wrapper. Contains page content -->
 <section class="content">
 <div class="content__inner">

         <!-- Content Header (Page header) -->
    

        <header class="content__title">
            <h1>xxx</h1>


        </header>



      
  


     <!-- Default box -->
     <div class="card">
            
            <!-- /.box-header -->
            <!-- form start -->

             <div class="card-body">
            <h3 class="card-title">
        Gestionar reglas
      
      </h3>
            <input type="checkbox" name="activarventana" id="activarventana" />
            <label for="activarventana" id="abremodal">
                Registrar nueva regla
                       
                        <i class="fa fa-plus-square"></i>
            </label>

              <%-- modal agregar reglas--%>
                    <div class="ventanamodal" >
                        <div class="contenido">
                            <div class="modal-content">
                                <div class="modal-header">
                                    
                                    <h4 class="modal-title">Registrar Nueva Regla</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                  <div class="col-md-7 col-md-offset-1">

                                      <div class="form-group">
                                          <label>Descripción de la regla</label>
                                          <textarea id="descrip1" cols="2" rows="2" class="form-control" runat="server"></textarea>
                                          <label>Tipo de regla</label>
                                          <asp:DropDownList ID="tiporegla2" runat="server" CssClass="form-control">
                                              <asp:ListItem Value="none">-------</asp:ListItem>
                                              <asp:ListItem Value="General">General</asp:ListItem>
                                              <asp:ListItem Value="compra">Compra</asp:ListItem>
                                              <asp:ListItem Value="inversion">Inversion</asp:ListItem>
                                              <asp:ListItem Value="credito">Credito</asp:ListItem>
                                              <asp:ListItem Value="gastos">Gastos</asp:ListItem>
                                              <asp:ListItem Value="produccion">Produccion</asp:ListItem>
                                              <asp:ListItem Value="gastos_de_publicidad">Gastos de Publicidad</asp:ListItem>
                                              <asp:ListItem Value="inversiones_en_tecnología">Inversiones en Tecnología</asp:ListItem>

                                          </asp:DropDownList>
                                          

                                      </div>
                                </div>

                                        <div class="col-md-3 ">
                                      <div class="form-group">
                                          <label>Valor Minimo</label>
                                          <asp:TextBox ID="valormin" runat="server" CssClass="form-control"></asp:TextBox>
                                          <label>Valor Maximo</label>
                                          <asp:TextBox ID="valormax" runat="server" CssClass="form-control"></asp:TextBox>

                                      </div>
                                  </div>
                                        </div>
                                <div class="modal-footer">

                                   <label for="activarventana" id="cerrarventana">Cerrar</label>
                                  <asp:Button ID="Button2" runat="server" Text="Guardar"  CssClass="btn btn-primary" OnClick="guardar"  />
                                </div>
                            </div>
                                    </div>
                              
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->



      <div class="table-responsive">
    <asp:GridView ID="regla" runat="server" CellPadding="4" AutoPostBack="true"   
        OnRowUpdating="TaskGridView_RowUpdating"
        OnRowEditing="TaskGridView_RowEditing"
        OnRowCancelingEdit="TaskGridView_RowCancelingEdit"
        OnRowDeleting="OnRowDeleting" 
       CssClass="grid sortable {disableSortCols: [5]}"
      
        
        
        >
         <EditRowStyle BackColor="#ffffcc" />

     

                <Columns>

                    <asp:CommandField EditText="Editar" ShowEditButton="True" >
                    
                     
                    <ControlStyle CssClass="btn  btn-success " />
                    </asp:CommandField>
                    
                     
                    <asp:CommandField ShowDeleteButton="True" >
                    

                    <ControlStyle CssClass="btn  btn-danger" />
                    </asp:CommandField>
                    

                </Columns>
                <HeaderStyle BackColor=" #3c8dbc" Font-Bold="True" ForeColor="White" CssClass="#" />
            </asp:GridView>
    </div>
        </div>
       </div>
        <!-- /.box-body -->
   <footer class="footer hidden-xs-down">
                    <p>© Universidad de la amazonia 2018. All rights reserved.</p>

                   
                </footer>
                </div>
            </section>
        </main>
       
  

    
        
   

        <script src="../../Scripts/jquery-1.4.2.min.js"></script>
        <script src="../../Scripts/jquery.dataTables.min.js"></script>
        <script src="../../Scripts/jquery.metadata.js"></script>
    

    <script type="text/javascript">

        $(document).ready(function () {

            // Setup Metadata plugin
            $.metadata.setType("class");

            // Setup GridView
            $("table.grid").each(function () {
                var jTbl = $(this);

                if (jTbl.find("tbody>tr>th").length > 0) {
                    jTbl.find("tbody").before("<thead><tr></tr></thead>");
                    jTbl.find("thead:first tr").append(jTbl.find("th"));
                    jTbl.find("tbody tr:first").remove();
                }

                // If GridView has the 'sortable' class and has more than 10 rows
                if (jTbl.hasClass("sortable") && jTbl.find("tbody:first > tr").length > 10) {

                    // Run DataTable on the GridView
                    jTbl.dataTable({
                        sPaginationType: "full_numbers",
                        sDom: '<"top"lf>rt<"bottom"ip>',
                        oLanguage: {
                            sInfoFiltered: "(from _MAX_ entries)",
                            sSearch: ""
                        },
                        aoColumnDefs: [
                            { bSortable: false, aTargets: jTbl.metadata().disableSortCols }
                        ]
                    });
                }
            });
        });

    </script>

    <!-- jQuery 3 -->
      
  
        


<script src="../../Content/stilos/estiloadmin/vendors/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="../../Content/stilos/estiloadmin/vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
    <script src="../../Content/stilos/estiloadmin/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../../Content/stilos/estiloadmin/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="../../Content/stilos/estiloadmin/vendors/bower_components/jquery-scrollLock/jquery-scrollLock.min.js"></script>


    <!-- App functions and actions -->
     
        
    <script src="../../Content/stilos/estiloadmin/js/app.min.js"></script>
    

    </form>
</body>
</html>
