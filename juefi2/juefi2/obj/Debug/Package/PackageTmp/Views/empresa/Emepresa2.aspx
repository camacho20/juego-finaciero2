<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emepresa2.aspx.cs" Inherits="juefi2.Views.empresa.Emepresa2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


     <title>Gestionar Emepresa</title>

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

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
 





   
</head>
<body class="hold-transition  skin-blue sidebar-mini">
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
        <a class="navbar-brand text-center" href="principal.aspx" id="mensaje" runat="server"></a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          
                <!-- inner menu: contains the messages -->
                
             <!-- User Menu-->
          
                    <li>
                        <asp:LinkButton ID="LinkButton1" runat="server"   ><i class="fa fa-sign-out fa-lg"></i> Cerrar Sesión</asp:LinkButton></li>
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
        <asp:Repeater ID="menurepeter" runat="server">

              <ItemTemplate>
               
                   <li >

                     

                    <%--   <a href="<%#Eval("url") %>"><i class="<%#Eval("icono") %>"></i><%#Eval("item") %></a>--%>


                   </li>
                   
               
           </ItemTemplate>
            </asp:Repeater>
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
        Gestionar empresa
        <small>(Consultar,Editar)</small>
      </h1>
    
    </section>


    <br />


     <!-- Default box -->
    <div class="box box-info">
        
  <div class="box-body">
       <label for="tags">Tags: </label>
  <input id="tags" />
  <input id="tagId" />
     
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

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <script>
  $( function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    $("#tags").autocomplete({
        source: SourceFromDataBase,
        select: function (e, ui) {
            e.preventDefault();
            $("#tags").val(ui.item.nombre);
            console.log(ui.item.apellido);
        },
        focus: function (event, ui) {
            event.preventDefault();
            $("#tags").val(ui.item.nombre);
            $("#tagId").val(ui.item.apellido);
        }
    });
  } );
  </script>

 <asp:Literal ID="ltlSourceFromDataBase" runat="server"></asp:Literal>




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
