<%-- 
    Document   : informacion
    Created on : 05-01-2016, 11:31:18 AM
    Author     : Medrano Acevedo
--%>
<%@page import="java.sql.ResultSet"%>
<%
    connSqlServer conn = new connSqlServer();
    String cat = "",enf="";
%>
<%@page import="ci.confdb.connSqlServer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap-3.3.6-dist/css/bootstrap-theme.css" rel="stylesheet">

        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

        <!-- Custom Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

        <!-- Plugin CSS -->
        <link rel="stylesheet" href="css/animate.min.css" type="text/css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/creative.css" type="text/css">
        <link rel="stylesheet" href="index.css" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top megamenu"> 
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-brand">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">JAHM MEDICAL SERVICES</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-brand">
                    <ul class="nav navbar-nav">

                        <li class="dropdown megamenu-fw">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" ><font color="black">Enfermedades<span class="caret"></span></font></a>
                            <ul class="dropdown-menu megamenu-content">
                                <%                                    
                                    if (request.getParameter("cat") != null) {
                                        cat = request.getParameter("cat");
                                        enf = request.getParameter("enf");
                                        out.print(conn.megaM(cat));
                                    } else {
                                        out.print("No Existen");
                                    }
                                %>                                

                            </ul>
                        </li>

                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div><!-- /.navbar-collapse -->
            </div>
        </nav>
        <%
           ResultSet enfermedad = conn.enfermedades(cat, enf);
           while(enfermedad.next()){
               out.println(enfermedad.getString("s_nombre"));
           }
           
        %>
        <script src="js/jquery.js"></script>
        <script>
            jQuery(document).ready(function () {
                $(".dropdown").hover(
                        function () {
                            $('.dropdown-menu', this).fadeIn("fast");
                        },
                        function () {
                            $('.dropdown-menu', this).fadeOut("fast");
                        });
            });
        </script>
        
    </body>
</html>
