<%-- 
    Document   : index
    Created on : 04-27-2016, 03:13:47 PM
    Author     : sony
--%>
<%@page import="java.sql.ResultSet"%>
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
                        <a class="page-scroll" href="#services">Nuestros consejos</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#categorias">Enfermedades</a>
                    </li>                   
                    <li>
                        <a class="page-scroll" href="#videos">Primeros auxilios</a>
                    </li>
      
                    <li>
            <div class="dropdown">
                <button class="btn btn-primary btn-lg" id="menu1" type="button" data-toggle="dropdown">Perfil
                    <span class="caret"></span></button>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="index.jsp">Cerrar sesión</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" data-toggle="modal" href="#myModalHorizontal">Editar perfil</a></li>
                        </ul>
                      </div>
                    </li>
                    </ul>
                    <br>
                </div>
            </div>
        </nav>
    
    <!--Editar perfil-->
    
<!-- Modal -->
<div class="modal fade" id="myModalHorizontal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" 
                   data-dismiss="modal">
                       <span aria-hidden="true">&times;</span>
                       <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">
                   Información personal
                </h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">            
                <form class="form-horizontal" role="form">
                  <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="nom">Nombres</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                        id="inputEmail3" placeholder=""/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="ape" >Apellidos</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"
                            id="inputPassword3" placeholder=""/>
                    </div>
                  </div>
                     <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="nom">Género</label>
                    <div class="col-sm-10">
                        <select class="form-control" type="text">
                            <option>Género</option>
                            <option>Masculino</option>
                            <option>Femenino</option>
                        </select>
                    </div>
                  </div>
                    <center><a role="menuitem" tabindex="-1" data-toggle="modal" href="#myModalHorizontal2">¿Desea cambiar su contraseña?</a></center>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">
                                    Cancelar
                        </button>
                        <button type="button" class="btn btn-primary">
                            Guardar cambios
                        </button>
                    </div>
                    </form>
                      </div>
                  </div>
          </div>
    </div>
                    
                    <div class="modal fade" id="myModalHorizontal2" tabindex="-1" role="dialog" 
                    aria-labelledby="myModalLabel" aria-hidden="true">
                   <div class="modal-dialog">
                       <div class="modal-content">
                           <!-- Modal Header -->
                           <div class="modal-header">
                               <button type="button" class="close" 
                                  data-dismiss="modal">
                                      <span aria-hidden="true">&times;</span>
                                      <span class="sr-only">Close</span>
                               </button>
                    <h4 class="modal-title" id="myModalLabel">
                        Configuración de contraseña
                    </h4>
                    </div>
                    <div class="modal-body">            
                <form class="form-horizontal" role="form">
                  <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="actual" >Contraseña actual</label>
                    <div class="col-sm-10">
                        <input required="" type="password" class="form-control"
                            id="actualC" placeholder=""/>
                    </div>
                  </div>
                    <form>
                    <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="nueva" >Contraseña nueva</label>
                    <div class="col-sm-10">
                        <input required="" type="password" class="form-control"
                            id="nuevaC" placeholder=""/>
                    </div>
                  </div>
                    <div class="form-group">
                    <label  class="col-sm-2 control-label"
                          for="repetir" >Repita contraseña</label>
                    <div class="col-sm-10">
                        <input required="" type="password" class="form-control"
                            id="repetirC" placeholder=""/>
                    </div>
                  </div>
                        
                </form>                
            </div>
            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">
                            Cancelar
                </button>
                <button type="button" class="btn btn-primary">
                    Guardar cambios
                </button>
            </div>
        </div>
    </div>
</div>

    <!--IMAGEN DE FONDO-->   
    
          
                <!--img src="http://img8.uploadhouse.com/fileuploads/16883/16883478ba61ab7134d4fdc3614c53230c1ba754.png" width="1349" alt=""-->
                <img src="imagenes/received_992752617440079.jpeg" width="1349" alt="">
          
    <!--RECOMENDACIONES-->
    
    <aside class="bg-dark">
    <section id="services">
        <div class="row">
              <div class="col-lg-4">
                <center><img class="img-circle" src="http://mejorconsalud.com/wp-content/uploads/2014/01/Lavar-las-manos.jpg" alt="Generic placeholder image" width="140" height="140"></center>
                <center><h2>Lavate las manos antes de comer</h2></center>
                <center><p>Para no enfermarte a causa de bacterias y parasitos</p></center>
                
              </div><!-- /.col-lg-4 -->
              <div class="col-lg-4">
                <center><img class="img-circle" src="http://www.olebebe.com/wp-content/uploads/comida-chatarra-785691.jpg" alt="Generic placeholder image" width="140" height="140"></center>
                <center><h2>Evita las comidas altas en grasa</h2></center>
                <center><p>Asi evitaras problemas de colesterol y trigliceridos</p></center>
                
              </div><!-- /.col-lg-4 -->
              <div class="col-lg-4">
                <center><img class="img-circle" src="http://misanimales.com/wp-content/uploads/2015/10/acariciar-perro.jpg" alt="Generic placeholder image" width="140" height="140"></center>
                <center><h2>No expongas tus heridas a mascotas</h2></center>
                <center><p>Asi evitaras infecciones y problemas mayores</p></center>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
    </section></aside>
    
    
    <!--CATEGORIAS-->
    
    <section class="no-padding" id="categorias">
        <div class="container-fluid">
            <%
                connSqlServer cat = new connSqlServer();
                String categoria = "";
                ResultSet rscat;
                rscat = cat.listarCateUsuario();
                categoria += "<div class='row no-gutter'>";
                while (rscat.next()) {
                    categoria +="<div class='col-lg-4 col-sm-6'>"
                            + "<a href='enfermedad.jsp?cat="+rscat.getString("id_categoria")+"' class='portfolio-box'>"
                            + "<img src='"+rscat.getString("imagen")+"' margin='0' class='img-responsive' alt=''>"
                            + "<div class='portfolio-box-caption'>"
                            + "<div class='portfolio-box-caption-content'>"
                            + "<div class='project-category text-faded'></div>"
                            + "<div class='project-name'>"+rscat.getString("nombre")+"</div>"
                            + "</div>"
                            + "</div>"
                            + "</a>"
                            + "</div>"
                            + "";
                }
                categoria+="</div>";
                out.print(categoria);
            %>       
        </div>
    </section>
     
    <!--VIDEOS-->
    
    <aside class="bg-dark"> 
    <section class="no-padding" id="videos">
                    <div class="row">
                        <div class="col-md-offset-1 col-md-10">
                            <div class="row">
                                
                                <a href="https://www.youtube.com/embed/W8SRXJR4dpE" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4" >
                                    <img src="http://img.youtube.com/vi/W8SRXJR4dpE/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/lkBEiP-Pr5A" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                                    <img src="http://img.youtube.com/vi/lkBEiP-Pr5A/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/kpBCpXA_-Vs" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                                    <img src="http://img.youtube.com/vi/kpBCpXA_-Vs/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/kkTRVoNDBwA" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4" >
                                    <img src="http://img.youtube.com/vi/kkTRVoNDBwA/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/UmzVmVlqT60" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                                    <img src="http://img.youtube.com/vi/UmzVmVlqT60/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/sBHzOB74KuY" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                                    <img src="http://img.youtube.com/vi/sBHzOB74KuY/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/wq553GhvQS8" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                                    <img src="http://img.youtube.com/vi/wq553GhvQS8/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/hgTeMyoshX4" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                                    <img src="http://img.youtube.com/vi/hgTeMyoshX4/0.jpg" class="img-responsive">
                                </a>
                                <a href="https://www.youtube.com/embed/FjSGJqCmju8" data-toggle="lightbox" data-gallery="youtubevideos" class="col-sm-4">
                                    <img src="http://img.youtube.com/vi/FjSGJqCmju8/0.jpg" class="img-responsive">
                                </a>
                            </div>
                        </div>
                    </div>
    </section>
        </aside>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x wow bounceIn"></i>
                    <p>123-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
                    <p><a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a></p>
                </div>
            </div>
        </div>
    </section>

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

                
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="bootstrap-3.3.6/js/carousel.js"></script>
    <script src="bootstrap-3.3.6/js/transition.js"></script>
    <script>
        $(document).ready(function(){
    $('.modal-footer button').click(function(){
		var button = $(this);

		if ( button.attr("data-dismiss") !== "modal" ){
			var inputs = $('form input');
			var title = $('.modal-title');
			var progress = $('.progress');
			var progressBar = $('.progress-bar');

			inputs.attr("disabled", "disabled");

			button.hide();

			progress.show();

			progressBar.animate({width : "100%"}, 100);

			progress.delay(1000)
					.fadeOut(600);

			button.text("Close")
					.removeClass("btn-primary")
					.addClass("btn-success")
    				.blur()
					.delay(1600)
					.fadeIn(function(){
						title.text("Log in is successful");
						button.attr("data-dismiss", "modal");
					});
		}
	});

	$('#myModal').on('hidden.bs.modal', function (e) {
		var inputs = $('form input');
		var title = $('.modal-title');
		var progressBar = $('.progress-bar');
		var button = $('.modal-footer button');

		inputs.removeAttr("disabled");

		title.text("Log in");

		progressBar.css({ "width" : "0%" });

		button.removeClass("btn-success")
				.addClass("btn-primary")
				.text("Ok")
				.removeAttr("data-dismiss");
                
	});
});
        </script>
        
        <script src="//code.jquery.com/jquery.js"></script>
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/4.0.1/ekko-lightbox.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function ($) {

				// delegate calls to data-toggle="lightbox"
				$(document).delegate('*[data-toggle="lightbox"]:not([data-gallery="navigateTo"])', 'click', function(event) {
					event.preventDefault();
					return $(this).ekkoLightbox({
						onShown: function() {
							if (window.console) {
								return console.log('onShown event fired');
							}
						},
						onContentLoaded: function() {
							if (window.console) {
								return console.log('onContentLoaded event fired');
							}
						},
						onNavigate: function(direction, itemIndex) {
							if (window.console) {
								return console.log('Navigating '+direction+'. Current item: '+itemIndex);
							}
						}
					});
				});

				//Programatically call
				$('#open-image').click(function (e) {
					e.preventDefault();
					$(this).ekkoLightbox();
				});
				$('#open-youtube').click(function (e) {
					e.preventDefault();
					$(this).ekkoLightbox();
				});

				$(document).delegate('*[data-gallery="navigateTo"]', 'click', function(event) {
					event.preventDefault();
					return $(this).ekkoLightbox({
						onShown: function() {
							var lb = this;
							$(lb.modal_content).on('click', '.modal-footer a#jumpit', function(e) {
								e.preventDefault();
								lb.navigateTo(2);
							});
							$(lb.modal_content).on('click', '.modal-footer a#closeit', function(e) {
								e.preventDefault();
								lb.close();
							});
						}
					});
				});

			});
		</script>

</body>
</html>