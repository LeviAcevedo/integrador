<%-- 
    Document   : index
    Created on : 04-27-2016, 03:13:47 PM
    Author     : sony
--%>

<%@page import="ci.confdb.connSqlServer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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

    <body id="page-top">

        <!--Navbar-->

        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="#">JAHM Medical Services</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a class="page-scroll" href="#categorias">Categorias</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#enfermedades">Enfermedades</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#causas">Causas</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#sintomas">Sintomas</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#consecuencias">Consecuencias</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#accidentes">Accidentes</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#videos">Videos</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#usuarios">Usuarios</a>
                        </li>
                        <li>
                            <div class="dropdown">
                                <button class="btn btn-primary btn-lg" id="menu1" type="button" data-toggle="dropdown">Perfil
                                    <span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                      <li role="presentation"><a role="menuitem" tabindex="-1" href="index.jsp">Cerrar sesión</a></li>
                                    </ul>
                              </div>
                        </li>
                    </ul>
                    <br>
                </div>
            </div>
        </nav>

        <!--LOGIN-->    
        <!-- Modal -->


        <!--IMAGEN DE FONDO-->   


        <!--img src="http://img8.uploadhouse.com/fileuploads/16883/16883478ba61ab7134d4fdc3614c53230c1ba754.png" width="1349" alt=""-->
        <img src="imagenes/received_992752617440079.jpeg" width="1349" alt="">
        <!--CATEGORIAS-->

        <section id="categorias">
            <div class="container">
                <h2>Categorias</h2>
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#agregar">Agregar</a></li>
                    <li><a href="#ver">Ver</a></li>
                    <li><a href="#editar">Editar</a></li>
                </ul>

                <div class="tab-content">
                    <div id="agregar" class="tab-pane fade in active">
                        <form action="agregarcategoria" method="POST">
                            <h4>Nombre de la categoria:</h4>
                            <input type="text" class="form-control" name= "categoria" placeholder="Categoria">
                            <h4>Detalle:</h4>
                            <textarea class="form-control" name= "detalle" rows="3" placeholder="Detalle"></textarea>
                            <h4>Imagen:</h4>
                            <input type="text" class="form-control" name= "imagen" placeholder="URL">
                            <br>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>
                        </form>
                    </div>

                    <div id="ver" class="tab-pane fade">
                        <h4>Categorias Disponibles</h4>
                        <table>
                            <%
                                connSqlServer conn = new connSqlServer();
                                out.println(conn.listarCategorias());
                            %>
                        </table>
                    </div>
                    <div id="editar" class="tab-pane fade">
                        <h4>Nombre de la categoria:</h4>
                        <input type="text" class="form-control" placeholder="Campo de texto">
                        <h4>Detalle:</h4>
                        <textarea class="form-control" rows="3"></textarea>
                        <br>
                        <button type="button" class="btn btn-primary">Guardar cambios</button>
                        <button type="button" class="btn btn-primary">Cancelar</button>
                    </div>
                </div>
            </div>

            <script>
                $(document).ready(function () {
                    $(".nav-tabs a").click(function () {
                        $(this).tab('show');
                    });
                });
            </script>
        </section>


        <!--ENFERMEDADES-->

        <aside class="bg-info">
            <section id="enfermedades">
                <div class="container">
                    <h2>Enfermedades</h2>
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#agregarE">Agregar</a></li>
                        <li><a href="#verE">Ver</a></li>
                        <li><a href="#editarE">Editar</a></li>
                    </ul>

                    <!--agregar-->
                    <div class="tab-content">
                        <div id="agregarE" class="tab-pane fade in active">
                            <form action="agregarenfermedad" method="POST">
                            <h4>Nombre de la enfermedad:</h4>
                            <input type="text" name="nombre" class="form-control" placeholder="Nombre">
                            <h4>Categoria a la que pertenece:</h4>
                            <%
                                out.print(conn.listarCate());
                            %>
                            <h4>Detalle:</h4>
                            <textarea name="detalle" class="form-control" rows="3"></textarea>
                            <h4>Imagen:</h4>
                            <input type="text" name="imagen" class="form-control" placeholder="URL">
                            <br>
                            <button type="submit" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>
                            </form>
                        </div>

                        <!--ver-->
                        <div id="verE" class="tab-pane fade">
                            <h4>Busqueda por categoria:</h4>
                            <table>
                                <tr>
                                    <td>
                            <input type="text" name="categoria" class="form-control" placeholder="nombre de categoria">
                                    </td>
                                    <td>
                            <button type="submit" class="btn btn-primary">Buscar</button>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <table>
                                <%
                                    out.print(conn.listarEnfermedad());
                                %>
                            </table>
                        </div>

                        <!--editar-->
                        <div id="editarE" class="tab-pane fade">
                            <h4>Nombre de la enfermedad:</h4>
                            <input type="text" class="form-control" placeholder="Campo de texto">
                            <h4>Categoria a la que pertenece:</h4>
                            <select multiple class="form-control">
                                <option>categoria 1</option>
                                <option>categoria 2</option>
                                <option>categoria 3</option>
                                <option>categoria 4</option>
                                <option>categoria 5</option>
                                <option>categoria 6</option>
                                <option>categoria 7</option>
                                <option>categoria 8</option>
                                <option>categoria 9</option>
                                <option>categoria 10</option>
                            </select>
                            <h4>Detalle:</h4>
                            <textarea class="form-control" rows="3"></textarea>
                            <h4>Imagen:</h4>
                            <input type="text" name="imagen" class="form-control" placeholder="URL">
                            <br>
                            <button type="button" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>
                        </div>
                    </div>
                </div>

                <script>
                    $(document).ready(function () {
                        $(".nav-tabs a").click(function () {
                            $(this).tab('show');
                        });
                    });
                </script>
            </section>
        </aside>

        <!--CAUSAS-->

        <section id="causas">
            <div class="container">
                <h2>Causas</h2>
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#agregarCa">Agregar</a></li>
                    <li><a href="#verCa">Ver</a></li>
                    <li><a href="#editarCa">Editar</a></li>
                </ul>

                <!--agregar-->
                <div class="tab-content">
                    <div id="agregarCa" class="tab-pane fade in active">
                        <form action="agregarcausa" method="POST">
                        <h4>Categoria a la que pertenece:</h4>
                        <%
                                out.print(conn.listarCat());
                        %>
                        <h4>Enfermedad a la que pertenece:</h4>
                        <%
                                if(request.getParameter("id") != null){
                                    String id = request.getParameter("id");
                                    out.print(conn.listarEnfe(id));
                                }      
                        %>
                        
                        <h4>Causa:</h4>
                        <textarea name="detalle" class="form-control" rows="3"></textarea>
                        <br>
                        <button type="submit" class="btn btn-primary">Guardar cambios</button>
                        <button type="button" class="btn btn-primary">Cancelar</button>
                        </form>
                    </div>

                    <!--ver-->
                    <div id="verCa" class="tab-pane fade">
                        <h4>Busqueda por enfermedad:</h4>
                            <table>
                                <tr>
                                    <td>
                            <input type="text" name="enfermedad" class="form-control" placeholder="Nombre de enfermedad">
                                    </td>
                                    <td>
                            <button type="submit" class="btn btn-primary">Buscar</button>
                                    </td>
                                </tr>
                            </table>
                            <br>
                        <table class="table table-condensed">
                            <%
                                out.print(conn.listarSintoma());
                            %>
                        </table>
                    </div>

                    <!--editar-->
                    <div id="editarCa" class="tab-pane fade">
                        <div id="agregarc" class="tab-pane fade in active">
                            <h4>Categoria a la que pertenece:</h4>
                            <select multiple class="form-control">
                                <option>categoria 1</option>
                                <option>categoria 2</option>
                                <option>categoria 3</option>
                                <option>categoria 4</option>
                                <option>categoria 5</option>
                                <option>categoria 6</option>
                                <option>categoria 7</option>
                                <option>categoria 8</option>
                                <option>categoria 9</option>
                                <option>categoria 10</option>
                            </select>
                            <h4>Enfermedad a la que pertenece:</h4>
                            <select multiple class="form-control">
                                <option>categoria 1</option>
                                <option>categoria 2</option>
                                <option>categoria 3</option>
                                <option>categoria 4</option>
                                <option>categoria 5</option>
                                <option>categoria 6</option>
                                <option>categoria 7</option>
                                <option>categoria 8</option>
                                <option>categoria 9</option>
                                <option>categoria 10</option>
                            </select>
                            <h4>Causa:</h4>
                            <textarea class="form-control" rows="3"></textarea>
                            <br>
                            <button type="button" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>

                        </div>
                    </div>
                </div>

                <script>
                    $(document).ready(function () {
                        $(".nav-tabs a").click(function () {
                            $(this).tab('show');
                        });
                    });
                </script>
        </section>

                            
        <!--SINTOMAS-->
        
        <aside class="bg-info">
        <section id="sintomas">
            <div class="container">
                <h2>Sintomas</h2>
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#agregarS">Agregar</a></li>
                    <li><a href="#verS">Ver</a></li>
                    <li><a href="#editarS">Editar</a></li>
                </ul>

                <!--agregar-->
                <div class="tab-content">
                    <div id="agregarS" class="tab-pane fade in active">
                        <form action="agregarsintoma" method="POST">
                        <h4>Categoria a la que pertenece:</h4>
                        <%
                                out.print(conn.listarCat());
                        %>
                        <h4>Enfermedad a la que pertenece:</h4>
                        <%
                                if(request.getParameter("id") != null){
                                    String id = request.getParameter("id");
                                    out.print(conn.listarEnfe(id));
                                }      
                        %>
                        
                        <h4>Sintoma:</h4>
                        <input type="text" class="form-control" name="nombre" placeholder="Sintoma">
                        <h4>Detalle:</h4>
                        <textarea name="detalle" class="form-control" rows="3"></textarea>
                        <br>
                        <button type="submit" class="btn btn-primary">Guardar cambios</button>
                        <button type="button" class="btn btn-primary">Cancelar</button>
                        </form>
                    </div>

                    <!--ver-->
                    <div id="verS" class="tab-pane fade">
                        <h4>Busqueda por enfermedad:</h4>
                            <table>
                                <tr>
                                    <td>
                            <input type="text" name="enfermedad" class="form-control" placeholder="Nombre de enfermedad">
                                    </td>
                                    <td>
                            <button type="submit" class="btn btn-primary">Buscar</button>
                                    </td>
                                </tr>
                            </table>
                            <br>
                        <table class="table table-condensed">
                            <%
                                out.print(conn.listarSintoma());
                            %>
                        </table>
                    </div>

                    <!--editar-->
                    <div id="editarS" class="tab-pane fade">
                        <div id="agregarS" class="tab-pane fade in active">
                           <h4>Sintoma:</h4>
                            <input type="text" class="form-control" name="sintoma" placeholder="Sintoma">
                            <h4>Detalle:</h4>
                            <textarea class="form-control" rows="3"></textarea>
                            <h4>Categoria a la que pertenece:</h4>
                            <select multiple class="form-control">
                                <option>categoria 1</option>
                                <option>categoria 2</option>
                                <option>categoria 3</option>
                                <option>categoria 4</option>
                                <option>categoria 5</option>
                                <option>categoria 6</option>
                                <option>categoria 7</option>
                                <option>categoria 8</option>
                                <option>categoria 9</option>
                                <option>categoria 10</option>
                            </select>
                            <h4>Enfermedad a la que pertenece:</h4>
                            <select multiple class="form-control">
                                <option>categoria 1</option>
                                <option>categoria 2</option>
                                <option>categoria 3</option>
                                <option>categoria 4</option>
                                <option>categoria 5</option>
                                <option>categoria 6</option>
                                <option>categoria 7</option>
                                <option>categoria 8</option>
                                <option>categoria 9</option>
                                <option>categoria 10</option>
                            </select>
                            <br>
                            <button type="button" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>

                        </div>
                    </div>
                </div>

                <script>
                    $(document).ready(function () {
                        $(".nav-tabs a").click(function () {
                            $(this).tab('show');
                        });
                    });
                </script>
        </section>
        </aside>

        <!--CONSECUENCIAS-->

            <section id="consecuencias">
                <div class="container">
                    <h2>Consecuencias</h2>
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#agregarC">Agregar</a></li>
                        <li><a href="#verC">Ver</a></li>
                        <li><a href="#editarC">Editar</a></li>
                    </ul>

                    <!--agregar-->
                    <div class="tab-content">
                        <div id="agregarC" class="tab-pane fade in active">
                            <form action="agregarconsecuencia" method="POST">
                            <h4>Detalle de consecuencias:</h4>
                            <textarea name= "detalle2" class="form-control" rows="3"></textarea>
                            <h4>Categoria a la que pertenece:</h4>
                            <%
                                out.print(conn.listarCat());
                            %>
                            <h4>Enfermedad a la que pertenece:</h4>
                            <%
                                if(request.getParameter("id") != null){
                                    String id = request.getParameter("id");
                                    out.print(conn.listarEnfe(id));
                                }      
                            %>
                            <br>
                            <button type="submit" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>
                            </form>
                        </div>

                        <!--ver-->
                        <div id="verC" class="tab-pane fade">
                            <h4>Busqueda por enfermedad:</h4>
                            <table>
                                <tr>
                                    <td>
                            <input type="text" name="consecuencias" class="form-control" placeholder="Nombre de enfermedad">
                                    </td>
                                    <td>
                            <button type="submit" class="btn btn-primary">Buscar</button>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <table class="table table-condensed">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombre</th>
                                        <th>Categoria</th>
                                        <th>Detalle</th>
                                        <th>Modificar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>*</td>
                                        <td>*</td>
                                        <td>*</td>
                                        <td>*</td>
                                        <td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></td>
                                    </tr>
                                    <tr>
                                        <td>*</td>
                                        <td>*</td>
                                        <td>*</td>
                                        <td>*</td>
                                        <td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></td>
                                    </tr>
                                    <tr>
                                        <td>*</td>
                                        <td>*</td>
                                        <td>*</td>
                                        <td>*</td>
                                        <td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <!--editar-->
                        <div id="editarC" class="tab-pane fade">
                            <h4>Detalle de consecuencias:</h4>
                            <textarea class="form-control" rows="3"></textarea>
                            <h4>Categoria a la que pertenece:</h4>
                            <select multiple class="form-control">
                                <option>categoria 1</option>
                                <option>categoria 2</option>
                                <option>categoria 3</option>
                                <option>categoria 4</option>
                                <option>categoria 5</option>
                                <option>categoria 6</option>
                                <option>categoria 7</option>
                                <option>categoria 8</option>
                                <option>categoria 9</option>
                                <option>categoria 10</option>
                            </select>
                            <h4>Enfermedad a la que pertenece:</h4>
                            <select multiple class="form-control">
                                <option>categoria 1</option>
                                <option>categoria 2</option>
                                <option>categoria 3</option>
                                <option>categoria 4</option>
                                <option>categoria 5</option>
                                <option>categoria 6</option>
                                <option>categoria 7</option>
                                <option>categoria 8</option>
                                <option>categoria 9</option>
                                <option>categoria 10</option>
                            </select>
                            <br>
                            <button type="button" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>
                        </div>
                    </div>
                </div>

                <script>
                    $(document).ready(function () {
                        $(".nav-tabs a").click(function () {
                            $(this).tab('show');
                        });
                    });
                </script>
            </section>


        <!--ACCIDENTES-->

        <aside class="bg-info">
        <section id="accidentes">
            <div class="container">
                <h2>Accidentes</h2>
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#agregarA">Agregar</a></li>
                    <li><a href="#verA">Ver</a></li>
                    <li><a href="#editarA">Editar</a></li>
                </ul>

                <!--agregar-->
                <div class="tab-content">
                    <div id="agregarA" class="tab-pane fade in active">
                        <form action="agregaraccidente" method="POST">
                            <h4>Tipo de accidente:</h4>
                            <input type="text" class="form-control" name="accidente" placeholder="Accidente">
                            <h4>Detalle de accidente:</h4>
                            <textarea class="form-control" rows="3" name="detalle1" placeholder="Detalle"></textarea>
                            <br>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                            <button type="button" class="btn btn-primary">Cancelar</button>
                        </form>
                    </div>

                    <!--ver-->
                    <div id="verA" class="tab-pane fade">
                        <h4>Accidentes disponibles</h4>
                        <table>
                            <%
                                //connSqlServer conn2 = new connSqlServer();
                                out.print(conn.listarAccidente());
                            %>
                        </table>

                    </div>

                    <!--editar-->
                    <%
                        String codA = request.getParameter("cod");
                        String tipoA = request.getParameter("nomb");
                        String detA = request.getParameter("obs");
                    %>
                    <!--<div id="editarA" class="tab-pane fade">
                      <form action="editA" action="get">
                          <button type="button" class="btn btn-primary">Cancelar</button>
                          <h4>Tipo de accidente:</h4>
                          <input type="hidden" name="idA" value="<%out.print(codA);%>">
                          <input name ="tipoA"type="text" value="<%out.print(tipoA);%>"class="form-control" placeholder="Campo de texto">
                          <h4>Detalle de accidente:</h4>                    
                          <textarea name="detA"class="form-control" value="<%out.print(detA);%>"rows="3"></textarea>
                          <br>
                          <button type="submit" class="btn btn-primary">Guardar cambios</button>
                          <button type="button" class="btn btn-primary">Cancelar</button>
                      </form>
                    </div>-->
    

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                      <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Modal Header</h4>
                          </div>
                          <div class="modal-body">
                            <p>Some text in the modal.</p>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                          <!--Modales editar-->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
                    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

                    <script>
                        $(document).ready(function () {
                            $(".nav-tabs a").click(function () {
                                $(this).tab('show');
                            });
                        });
                    </script>
                    </section>
                </aside>


                    <!--VIDEOS-->

                        <section id="videos">
                            <div class="container">
                                <h2>Videos</h2>
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#agregarV">Agregar</a></li>
                                    <li><a href="#verV">Ver</a></li>
                                    <li><a href="#editarV">Editar</a></li>
                                </ul>

                                <!--agregar-->
                                <div class="tab-content">
                                    <div id="agregarV" class="tab-pane fade in active">
                                        <form action="agregarvideo" method="POST">
                                        <h4>Nombre del video:</h4>
                                        <input name="nombre" type="text" class="form-control" placeholder="Nombre del Video">
                                        <h4>Tipo de accidente:</h4>
                                        
                                        <%
                                            out.print(conn.listarAcc());
                                        %>
                                        
                                        <h4>URL:</h4>
                                        <input name="url" type="text" class="form-control" placeholder="URL del video">
                                        <br>
                                        <button type="submit" class="btn btn-primary">Guardar cambios</button>
                                        <button type="button" class="btn btn-primary">Cancelar</button>
                                        </form>

                                    </div>

                                    <!--ver-->
                                    <div id="verV" class="tab-pane fade">
                                        <h4>Videos disponibles</h4>
                                        <table>
                                            <%
                                                out.print(conn.listarVideos());
                                            %>
                                        </table>
                                    </div>

                                    <!--editar-->    
                                    <div id="editarV" class="tab-pane fade">
                                        <h4>Nombre del video:</h4>
                                        <input type="text" class="form-control" placeholder="Campo de texto">
                                        <h4>Tipo de accidente:</h4>
                                        <input type="text" class="form-control" placeholder="Campo de texto">
                                        <h4>URL:</h4>
                                        <input type="text" class="form-control" placeholder="Campo de texto">
                                        <br>
                                        <button type="button" class="btn btn-primary">Guardar cambios</button>
                                        <button type="button" class="btn btn-primary">Cancelar</button>
                                    </div>
                                </div>
                            </div>
                            <script>
                                $(document).ready(function () {
                                    $(".nav-tabs a").click(function () {
                                        $(this).tab('show');
                                    });
                                });
                            </script>
                        </section>
 

                    <!--USUARIOS-->

                    <aside class="bg-info">
                    <section id="usuarios">
                        <div class="container">
                            <h2>Usuarios</h2>
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#agregarU">Agregar</a></li>
                                <li><a href="#verU">Ver</a></li>
                                <li><a href="#editarU">Editar</a></li>
                            </ul>

                            <!--agregar-->
                            <div class="tab-content">
                                <div id="agregarU" class="tab-pane fade in active">
                                    <form action="agregarusuario" method="POST">
                                    <h4>Agregar usuario:</h4>
                                    <input type="text" name="nombre" class="form-control" placeholder="Nombres">
                                    <br>
                                    <input type="text" name="apellido" class="form-control" placeholder="Apellidos">
                                    <br>
                                    <input type="text" name="edad" class="form-control" placeholder="Edad">
                                    <br>
                                    <input type="email" name="correo" class="form-control" placeholder="Correo electrónico">
                                    <br>
                                    <input type="password" name="pass" class="form-control" placeholder="Contraseña">
                                    <br>
                                    <select name="genero" class="form-control" type="text">
                                        <option value="1">Género</option>
                                        <option value="2">Masculino</option>
                                        <option value="3">Femenino</option>
                                    </select>
                                    <br>
                                    <select name="tipo" class="form-control" type="text">
                                        <option>Tipo de usuario</option>
                                        <option value="1">Típico</option>
                                        <option value="2">Administrador</option>
                                    </select>
                                    <br>
                                    <button type="submit" class="btn btn-primary">Guardar cambios</button>
                                    <button type="button" class="btn btn-primary">Cancelar</button>
                                    </form>
                                </div>

                                <!--ver-->
                                <div id="verU" class="tab-pane fade">
                                    <h2>Listado de usuarios</h2>
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>id</th>
                                                    <th>Nombres</th>
                                                    <th>Apellidos</th>
                                                    <th>Email</th>
                                                    <th>Género</th>
                                                    <th>Tipo</th>
                                                    <th>Modificar</th>                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td>Test</td>
                                                    <td><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <!--Editar-->
                                <div id="editarU" class="tab-pane fade">
                                    <h4>Editar usuario:</h4>
                                    <input type="text" class="form-control" placeholder="Nombres">
                                    <br>
                                    <input type="text" class="form-control" placeholder="Apellidos">
                                    <br>
                                    <input type="text" class="form-control" placeholder="Correo electrónico">
                                    <br>
                                    <input type="text" class="form-control" placeholder="Contraseña">
                                    <br>
                                    <select class="form-control" type="text">
                                        <option>Género</option>
                                        <option>Masculino</option>
                                        <option>Femenino</option>
                                    </select>
                                    <br>
                                    <select class="form-control" type="text">
                                        <option>Tipo de usuario</option>
                                        <option>Típico</option>
                                        <option>Administrador</option>
                                    </select>
                                    <br>
                                    <button type="button" class="btn btn-primary">Guardar cambios</button>
                                    <button type="button" class="btn btn-primary">Cancelar</button>
                                </div>
                            </div>   
                        </div>

                        <script>
                            $(document).ready(function () {
                                $(".nav-tabs a").click(function () {
                                    $(this).tab('show');
                                });
                            });
                        </script>
                    </section>
                    </aside>                        
                        
                        
                    <!-- jQuery -->
                    <script src="js/jquery.js"></script>

                    <!-- Bootstrap Core JavaScript -->
                    <script src="js/bootstrap.min.js"></script>

                    <!-- Plugin JavaScript -->
                    <script src="js/jquery.easing.min.js"></script>
                    <script src="js/jquery.fittext.js"></script>
                    <script src="js/wow.min.js"></script>

                    <!-- Custom Theme JavaScript -->
                    <script src="js/creative.js"></script>

                    <script src="//code.jquery.com/jquery.js"></script>
                    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/4.0.1/ekko-lightbox.min.js"></script>

                    </body>
</html>
