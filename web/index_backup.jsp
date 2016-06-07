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
                        <button class="btn btn-primary btn-lg" href="#signup" data-toggle="modal" data-target=".bs-modal-sm">Iniciar sesión</button>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
    <!--LOGIN-->    
    <!-- Modal -->
<div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
        <br>
        <div class="bs-example bs-example-tabs">
            <ul id="myTab" class="nav nav-tabs">
              <li class="active"><a href="#signin" data-toggle="tab">Iniciar</a></li>
              <li class=""><a href="#signup" data-toggle="tab">Registrarse</a></li>
              
            </ul>
        </div>
      <div class="modal-body">
        <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active in" id="signin">
            <form class="form-horizontal">
            <fieldset>
            <!-- Sign In Form -->
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="userid">Alias:</label>
              <div class="controls">
                <input required="" id="userid" name="userid" type="text" class="form-control" placeholder="alias" class="input-medium" required="">
              </div>
            </div>

            <!-- Password input-->
            <div class="control-group">
              <label class="control-label" for="passwordinput">Contraseña:</label>
              <div class="controls">
                <input required="" id="passwordinput" name="passwordinput" class="form-control" type="password" placeholder="********" class="input-medium">
              </div>
            </div>

            <!-- Multiple Checkboxes (inline) -->
            <div class="control-group">
              <label class="control-label" for="rememberme"></label>
              <div class="controls">
                <label class="checkbox inline" for="rememberme-0">
                  <input type="checkbox" name="rememberme" id="rememberme-0" value="Remember me"><label>Recordarme</label>
                </label>
              </div>
            </div>

            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="signin"></label>
              <div class="controls">
                <button id="signin" name="signin" class="btn btn-success">Iniciar</button>
              </div>
            </div>
            </fieldset>
            </form>
        </div>
        <div class="tab-pane fade" id="signup">
            <form class="form-horizontal">
            <fieldset>
            <!-- Sign Up Form -->
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="Nomb">Nombre:</label>
              <div class="controls">
                <input id="nomb" name="Nomb" class="form-control" type="text" placeholder="Escriba su nombre aqui..." class="input-large" required="">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="Apell">Apellido:</label>
              <div class="controls">
                <input id="apell" name="Apell" class="form-control" type="text" placeholder="Escriba su apellido aqui..." class="input-large" required="">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="Gen">Genero:</label>
                <select class="form-control" type="text" placeholder="Genero">
                        <option>Masculino</option>
                        <option>Femenino</option>
                        <option>Otros</option>
                </select>
            </div>
            <div class="control-group">
              <label class="control-label" for="Email">Correo electrónico:</label>
              <div class="controls">
                <input id="Email" name="Email" class="form-control" type="text" placeholder="micorreo@ejemplo.com" class="input-large" required="">
              </div>
            </div>
            
            <!-- Password input-->
            <div class="control-group">
              <label class="control-label" for="password">Contraseña:</label>
              <div class="controls">
                <input id="password" name="password" class="form-control" type="password" placeholder="********" class="input-large" required="">
                <em>1-8 Caractéres</em>
              </div>
            </div>
            
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="reenterpassword">Repetir contraseña:</label>
              <div class="controls">
                <input id="reenterpassword" class="form-control" name="reenterpassword" type="password" placeholder="********" class="input-large" required="">
              </div>
            </div>
            
            <!-- Multiple Radios (inline) -->
            <br>
           
            
            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="confirmsignup"></label>
              <div class="controls">
                <button id="confirmsignup" name="confirmsignup" class="btn btn-success">Registrarme</button>
              </div>
            </div>
            </fieldset>
            </form>
      </div>
    </div>
      </div>
      <div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </center>
      </div>
    </div>
  </div>
</div>
    
    <!--IMAGEN DE FONDO-->   
    
          
               <!--img src="http://img8.uploadhouse.com/fileuploads/16883/16883478ba61ab7134d4fdc3614c53230c1ba754.png" width="1349" alt=""-->
               <img src="imagenes/received_992752617440079.jpeg" width="1349" alt="">
          <!--CARRUSEL-->
          <!--<div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <!--<ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <!--<div class="carousel-inner" role="listbox">
              <div class="item active">
                <img class="first-slide" src="http://herseyburada-86.com/uploads/images/health_hd_new.jpg" width="2000" alt="...">
                <div class="carousel-caption">
                </div>
              </div>
              <div class="item">
                <img class="second-slide" src="http://img8.uploadhouse.com/fileuploads/16883/16883478ba61ab7134d4fdc3614c53230c1ba754.png" width="2000" alt="...">
                <div class="carousel-caption">
                </div>
              </div>
               <div class="item">
                <img class="third-slide" src="http://avn-navigator.com/wp-content/uploads/2015/04/avn-med-austria.jpg" width="2000" alt="...">
                <div class="carousel-caption">
                </div>
              </div>       
            
            </div>-->

            <!-- Controls -->
            <!--<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>-->
          

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
            <%--
                connSqlServer cat = new connSqlServer();
                String categoria = "";
                ResultSet rscat;
                rscat = cat.listarCateUsuario();
                categoria += "<div class='row no-gutter'>";
                while (rscat.next()) {
                    categoria +="<div class='col-lg-4 col-sm-6'>"
                            + "<a href='enfermedad.jsp' class='portfolio-box'>"
                            + "<div class='portfolio-box-caption'>"
                            + "<div class='portfolio-box-caption-content'>"
                            + "<div class='project-category text-faded'></div>"
                            + "<div class='project-name'>Sistema digestivo</div>"
                            + "</div>"
                            + "</div>"
                            + "</a>"
                            + "</div>"
                            + "";
                }
                categoria+="</div>";
                out.print(categoria);
            --%>
            <div class="row no-gutter">
                <div class="col-lg-4 col-sm-6">
                     <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="https://i.ytimg.com/vi/C0RbKrAxk2U/maxresdefault.jpg" margin="0" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded"></div>
                                <div class="project-name">Sistema digestivo</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="http://d1hw6n3yxknhky.cloudfront.net/000995141_prevstill.jpeg" width="500" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Aparato respiratorio
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="https://i.ytimg.com/vi/lcuJOFPhltM/maxresdefault.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Sistema circulatorio
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="https://d1hw6n3yxknhky.cloudfront.net/012623271_prevstill.jpeg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Sistema inmunologico
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="http://footage.framepool.com/shotimg/qf/293181128-glande-parathyroide-carotide-glande-endocrine-organe-endocrines.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Sistema endocrino
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="https://i.ytimg.com/vi/mJoznoYeHRo/maxresdefault.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Enfermedades de la piel
                                </div>
                            </div>
                        </div>
                    </a>
                </div>                 
            </div>
        </div>
    </section>
        <section class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="http://i0.wp.com/atusaludenlinea.com/wp-content/uploads/2015/03/tips-para-sexualidad-perfecta-a-tu-salud2.jpg?fit=1920%2C1080" width="500" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Enfermedades de transmisión sexual
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="https://i.ytimg.com/vi/YrWVklrww2E/maxresdefault.jpg" width="500" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Sistema renal
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="enfermedad.jsp" class="portfolio-box">
                        <img src="https://ugc.kn3.net/i/origin/http://www.institutoatman.com/wp-content/uploads/2015/04/27039-running-on-neurons-1920x1080-digital-art-wallpaper.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                </div>
                                <div class="project-name">
                                    Sistema nervioso
                                </div>
                            </div>
                        </div>
                    </a>
                </div>                  
            </div>
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
