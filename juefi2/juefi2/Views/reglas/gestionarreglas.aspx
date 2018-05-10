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
   
     <!-- Bootstrap 3.3.7 -->
    <link href="../../Content/stilos/estiloadmin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    
  <!-- Font Awesome -->
  
<link href="../../Content/stilos/estiloadmin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Ionicons -->
  
<link href="../../Content/stilos/estiloadmin/bower_components/Ionicons/css/ionicons.min.css" rel="stylesheet" />
  <!-- Theme style -->
  
<link href="../../Content/stilos/estiloadmin/dist/css/AdminLTE.min.css" rel="stylesheet" />
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  
<link href="../../Content/stilos/estiloadmin/dist/css/skins/_all-skins.min.css" rel="stylesheet" />
  <!-- Morris chart -->
  
<link href="../../Content/stilos/estiloadmin/bower_components/morris.js/morris.css" rel="stylesheet" />
  <!-- jvectormap -->

<link href="../../Content/stilos/estiloadmin/bower_components/jvectormap/jquery-jvectormap.css" rel="stylesheet" />
  <!-- Date Picker -->
  
<link href="../../Content/stilos/estiloadmin/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
  <!-- Daterange picker -->
  
<link href="../../Content/stilos/estiloadmin/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
  <!-- bootstrap wysihtml5 - text editor -->
  
<link href="../../Content/stilos/estiloadmin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" />


<link href="../../Content/stilos/modal.css" rel="stylesheet" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">





</head>
<body class="hold-transition skin-blue sidebar-mini" >


    <form id="form1" runat="server">

         
        <div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>JS</b>F</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Bienvenido(a)</b></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          
                <!-- inner menu: contains the messages -->
                
             <!-- User Menu-->
          
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click"><i class="fa fa-sign-out fa-lg"></i> Cerrar Sesión</asp:LinkButton></li>
                </ul>
          
          <!-- /.messages-menu -->

          <!-- Notifications Menu -->
          
         
        
          
          <!-- User Account Menu -->
          
              <!-- Menu Body -->
              
                <!-- /.row -->
            
        
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../Content/imagenes/imagesinicio/usuario.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
        <br />
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

     

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
         <li class="active"><a href="../usuario/principal.aspx"><i class="fa fa-institution"></i> <span>Inicio</span></a></li>
        <li><a href="../reglas/gestionarreglas.aspx"><i class="fa fa-pencil-square-o"></i> <span>Gestionar reglas</span></a></li>
          <li><a href="../reglas/gestionarpuc.aspx"><i class="fa  fa-usd"></i> <span>Plan de Cuentas</span></a></li>
      
         <li><a href="../balance/balanceinicial.aspx"><i class="fa  fa-balance-scale"></i> <span>Balance General</span></a></li>
       <li><a href="../empresa/empresa.aspx"><i class="fa  fa-television"></i> <span>Empresa</span></a></li>
           <li><a href="../proveedores/proveedores.aspx"><i class="fa   fa-cart-arrow-down"></i> <span>Proveedores</span></a></li>
       

 <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Jugadas</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="../jugadas/compra_materia_prima.aspx"><i class="fa fa-circle-o"></i>Compra de Materia Prima </a></li>
             </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   

    <!-- Main content -->
    <section class="content container-fluid">

         <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Gestionar reglas
        <small>(Consultar,Editar,Eliminar)</small>
      </h1>
    
    </section>


    <br />


     <!-- Default box -->
    <div class="box box-info">
        <div class="box-header with-border">
           

              
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



               
               
               
            </div>


        
        <div class="box-body">
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
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
 
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
       

    
        
   

        <script src="../../Scripts/jquery-1.4.2.min.js"></script>

        
    <script src="../../Scripts/jquery.dataTables.min.js" ></script>
    <script src="../../Scripts/jquery.metadata.js" ></script>
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
      
  
        


<!-- jQuery UI 1.11.4 -->
<script src="../../Content/stilos/estiloadmin/bower_components/jquery-ui/jquery-ui.min.js"></script>


<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="../../Content/stilos/estiloadmin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="../../Content/stilos/estiloadmin/bower_components/raphael/raphael.min.js"></script>
<script src="../../Content/stilos/estiloadmin/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="../../Content/stilos/estiloadmin/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->

<script src="../../Content/stilos/estiloadmin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../Content/stilos/estiloadmin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../../Content/stilos/estiloadmin/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../../Content/stilos/estiloadmin/bower_components/moment/min/moment.min.js"></script>
<script src="../../Content/stilos/estiloadmin/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../../Content/stilos/estiloadmin/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../../Content/stilos/estiloadmin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../../Content/stilos/estiloadmin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../Content/stilos/estiloadmin/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../Content/stilos/estiloadmin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../../Content/stilos/estiloadmin/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../Content/stilos/estiloadmin/dist/js/demo.js"></script>


    

    </form>
</body>
</html>
