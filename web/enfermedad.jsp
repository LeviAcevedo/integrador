<%-- 
    Document   : pruebita
    Created on : 06-02-2016, 11:10:52 AM
    Author     : sony
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ci.confdb.connSqlServer"%>
<%
    if(request.getParameter("cat") != null){
    connSqlServer conn = new connSqlServer();
    String cat = "",enf="";
    cat = request.getParameter("cat");
    enf = request.getParameter("enf");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

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
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8">

                <br>
                <%  
                        if (request.getParameter("enf") != null) {
                                ResultSet enfermedad = conn.enfermedades(cat, enf);
                                while (enfermedad.next()) {
                                    //out.println(enfermedad.getString("s_nombre"));
                                
                 %>
                 
                 <%out.print("<center><h1>"+enfermedad.getString("e_nombre")+"</h1></center>");%>             
                 
                 
                 
                <!-- Date/Time -->
                

                <hr>

                <!-- Preview Image -->
                <img class="img-responsive" src="http://placehold.it/900x300" alt="">

                <hr>

                <!-- DETALLES -->
                <h1>DETALLE DE ENFERMEDAD</h1>
                <%out.print(""
                        + "<p class='lead'>"
                        + ""+enfermedad.getString("e_detalle")+""
                        + "</p>"
                        + "");
                %>
               
                
                <h1>SINTOMAS</h1>
                <%out.print(""
                        + "<p>"
                        + ""+enfermedad.getString("s_detalle")+""
                        + "</p>"
                        + "");
                %>
                
                <h1>CONSECUENCIAS</h1>
                <%out.print(""
                        + "<p class='lead'>"
                        //+ ""+enfermedad.getString("e_detalle")+""
                        + "consecuencia  parametro c_consecuencia"
                        + "</p>"
                        + "");
                %>
                
                                <hr>
                <h1>MEDICAMENTOS</h1>
                <%out.print(""
                        + "<p class='lead'>"
                        //+ ""+enfermedad.getString("e_detalle")+""
                        + "datos de los medicamentos posibles parametro es m_nombre"
                        + "</p>"
                        + "");
                %>
                
                <%
                        }
                        } else {
                               // out.print("No Existen sintomas de esta enfermedad");
                            }       
                %>

                <!-- Blog Comments -->
                <h1>COMENTARIOS</h1>
                <!-- Comments Form -->
                <div class="well">
                    <h4>Deja tu comentario:</h4>
                    <form role="form">
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>

                <hr>

                <!-- Posted Comments -->

                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Start Bootstrap
                            <small>August 25, 2014 at 9:30 PM</small>
                        </h4>
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                    </div>
                </div>

                <!-- Comment -->
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="http://placehold.it/64x64" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Start Bootstrap
                            <small>August 25, 2014 at 9:30 PM</small>
                        </h4>
                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                        <!-- Nested Comment -->
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="http://placehold.it/64x64" alt="">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Nested Start Bootstrap
                                    <small>August 25, 2014 at 9:30 PM</small>
                                </h4>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                            </div>
                        </div>
                        <!-- End Nested Comment -->
                    </div>
                </div>

            </div>
            <br>
            <br>
            <br>
            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">
                
                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Buscar</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Enfermedades del sistema digestivo</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            
                            <ul class="list-unstyled">
                                <%                                
                                if (request.getParameter("cat") != null) {
                                    cat = request.getParameter("cat");
                                    enf = request.getParameter("enf");
                                    ResultSet rs = conn.megaM(cat);
                                    while (rs.next()) {
                                        out.print("<li>"
                                                + "<a href='enfermedad.jsp?"
                                                + "cat="+rs.getString("id_categoria")+"&"
                                                + "enf="+rs.getString("id_enfermedad")+""
                                                + "'>"
                                                + "" + rs.getString("nombre") + ""
                                                + "</a>"
                                                + "</li>");
                                    }
                                    //out.print(conn.megaM(cat));
                                } else {
                                    out.print("<li>No Existen</li>");
                                }
                            %>
                            </ul>
                        </div>
                        
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
                <div class="well">
                    <h4>Categorias</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <%
                                    //conn.listarCateUsuario();
                                    ResultSet rscat = conn.listarCateUsuario();
                                    
                                    while(rscat.next()){
                                        out.println("<li><a href='enfermedad.jsp?cat="+rscat.getString("id_categoria")+"'>"+rscat.getString("nombre")+"</a>");                                        
                                    }
                                %>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>


            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; JAHM Medical Services</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

<%}else{response.sendRedirect("index.jsp");}%>