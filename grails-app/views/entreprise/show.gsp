<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Alloratio, partenaire de votre santé financière</title>
    <g:javascript library="jquery" plugin="jquery" />
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Partenaire de la tésorerie des PME">
    <meta name="keywords" content="Trésorerie, cash, bfr, PME, LBO, Liquidation">
    <meta name="author" content="Nabil Lakhmissi">    
    <link rel="shortcut icon" href="favicon.ico">  
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,500,500italic,700,700italic,900,900italic,300italic,300' rel='stylesheet' type='text/css'> 
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300,100' rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href="${request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href="${request.contextPath}/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="${request.contextPath}/assets/plugins/flexslider/flexslider.css">
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="${request.contextPath}/assets/css/styles.css">
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script type="text/javascript" src="${request.contextPath}/template/assets/js/jquery-ias.min.js"></script>

  <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
   <script src="http://cdn.oesmith.co.uk/morris-0.5.1.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head> 

<body class="home-page">   
    <!-- ******HEADER****** --> 
    <header id="header" class="header">  
        <div class="container">       
            <h1 class="logo">
                <a href="/cash"><span class="text">Alloratio</span></a>
            </h1><!--//logo-->
            <nav class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->
                <div id="navbar-collapse" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active nav-item"><a href="#accueil">Accueil</a></li>
                        <li class="nav-item"><a href="#why">Services</a></li>
                        <li class="nav-item"><a href="#jeu">Testez vos connaissances</a></li>
                         <!-- <li class="nav-item dropdown">
                          <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" href="#">Pages <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#why">Download Apps</a></li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="blog-single.html">Blog Single</a></li>
                                <li><a href="blog-category.html">Blog Category</a></li>
                                <li><a href="blog-archive.html">Blog Archive</a></li>
                                <li><a href="about.html">About Us</a></li>
                                <li><a href="contact.html">Contact</a></li>                    
                            </ul>                      
                        </li>-->      <!--//dropdown-->                         
                        <li class="nav-item nav-item-cta last"><a class="btn btn-cta btn-cta-secondary"  data-toggle="modal" data-target="#formContact" data-whatever="twbootstrap">Testez nous !</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav>
            <!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->
    
    
    <div class="blog blog-category container">
            <h2 class="page-title text-center"><i class="glyphicon glyphicon-camera"></i>  Analyse de la société ${entrepriseInstance.nom}</h2>
            <div class="row">
                <div class="blog-list blog-category-list">
                    <article class="post col-md-10 col-sm-12 col-xs-12 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
                        <div class="post-inner">
                            <figure class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="${request.contextPath}/assets/images/blog/Fournisseurs.jpg" alt="" /></a>                                
                            </figure><!--//post-thumb-->
                            <div class="content">
                                <h3 class="post-title"><a href="blog-single.html">Votre société vue par vos clients : </a></h3>
                                <div class="meta">
                                    <ul class="meta-list list-inline">                                       
                                    	<li class="post-time">Dernier exercice : </li>
                                    	<li class="post-author"> by <a href="/cash/"> Alloratio</a></li>
                                    	<li class="post-comments-link">
                                	        <a href="blog-single.html#comment-area"><i class="fa fa-comments"></i> 0 </a>
                                	    </li>
                                	</ul><!--//meta-list-->                           	
                                </div><!--meta-->
                                <div class="post-entry">
                                    <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. </p>
                                    <a class="read-more" href="blog-single.html">Read more <i class="fa fa-long-arrow-right"></i></a>
                                </div>                                
                            </div><!--//content-->
                        </div><!--//post-inner-->
                    </article><!--//post-->
                    
                    <article class="post col-md-10 col-sm-12 col-xs-12 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
                        <div class="post-inner">
                            <figure class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="assets/images/blog/post-6.jpg" alt="" /></a>                                
                            </figure><!--//post-thumb-->
                            <div class="content">
                                <h3 class="post-title"><a href="blog-single.html">Etiam imperdiet imperdiet orci</a></h3>
                                <div class="meta">
                                    <ul class="meta-list list-inline">                                       
                                    	<li class="post-time">24th Sep, 2014</li>
                                    	<li class="post-author"> by <a href="#">Stella	Harper</a></li>
                                    	<li class="post-comments-link">
                                	        <a href="blog-single.html#comment-area"><i class="fa fa-comments"></i>8</a>
                                	    </li>
                                	</ul><!--//meta-list-->                           	
                                </div><!--meta-->
                                <div class="post-entry">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin lobortis mattis erat, dictum facilisis magna posuere ac. Curabitur consectetur magna mauris, et aliquam lectus ornare nec.</p>
                                    <a class="read-more" href="blog-single.html">Read more <i class="fa fa-long-arrow-right"></i></a>
                                </div>                                
                            </div><!--//content-->
                        </div><!--//post-inner-->
                    </article><!--//post-->
                    
                    <article class="post col-md-10 col-sm-12 col-xs-12 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
                        <div class="post-inner">
                            <figure class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="assets/images/blog/post-9.jpg" alt="" /></a>                                
                            </figure><!--//post-thumb-->
                            <div class="content">
                                <h3 class="post-title"><a href="blog-single.html">Curabitur consectetur magna mauris</a></h3>
                                <div class="meta">
                                    <ul class="meta-list list-inline">                                       
                                    	<li class="post-time">18th Sep, 2014</li>
                                    	<li class="post-author"> by <a href="#">James Lee</a></li>
                                    	<li class="post-comments-link">
                                	        <a href="blog-single.html#comment-area"><i class="fa fa-comments"></i>8</a>
                                	    </li>
                                	</ul><!--//meta-list-->                           	
                                </div><!--meta-->
                                <div class="post-entry">
                                    <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
                                    <a class="read-more" href="blog-single.html">Read more <i class="fa fa-long-arrow-right"></i></a>
                                </div>                                
                            </div><!--//content-->
                        </div><!--//post-inner-->
                    </article><!--//post-->
                    
                    <article class="post col-md-10 col-sm-12 col-xs-12 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
                        <div class="post-inner">
                            <figure class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="assets/images/blog/post-8.jpg" alt="" /></a>                                
                            </figure><!--//post-thumb-->
                            <div class="content">
                                <h3 class="post-title"><a href="blog-single.html">Phasellus accumsan</a></h3>
                                <div class="meta">
                                    <ul class="meta-list list-inline">                                       
                                    	<li class="post-time">12th Aug, 2014</li>
                                    	<li class="post-author"> by <a href="#">Adam Stevens</a></li>
                                    	<li class="post-comments-link">
                                	        <a href="blog-single.html#comment-area"><i class="fa fa-comments"></i>8</a>
                                	    </li>
                                	</ul><!--//meta-list-->                           	
                                </div><!--meta-->
                                <div class="post-entry">
                                    <p>Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu. Phasellus accumsan cursus velit.</p>
                                    <a class="read-more" href="blog-single.html">Read more <i class="fa fa-long-arrow-right"></i></a>
                                </div>                                
                            </div><!--//content-->
                        </div><!--//post-inner-->
                    </article><!--//post-->
                    
                    <article class="post col-md-10 col-sm-12 col-xs-12 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
                        <div class="post-inner">
                            <figure class="post-thumb">
                                <a href="blog-single.html"><img class="img-responsive" src="assets/images/blog/post-7.jpg" alt="" /></a>                                
                            </figure><!--//post-thumb-->
                            <div class="content">
                                <h3 class="post-title"><a href="blog-single.html">Vestibulum ante ipsum primis in faucibus</a></h3>
                                <div class="meta">
                                    <ul class="meta-list list-inline">                                       
                                    	<li class="post-time">12th Aug, 2014</li>
                                    	<li class="post-author"> by <a href="#">Adam Stevens</a></li>
                                    	<li class="post-comments-link">
                                	        <a href="blog-single.html#comment-area"><i class="fa fa-comments"></i>8</a>
                                	    </li>
                                	</ul><!--//meta-list-->                           	
                                </div><!--meta-->
                                <div class="post-entry">
                                    <p>Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.</p>
                                    <a class="read-more" href="blog-single.html">Read more <i class="fa fa-long-arrow-right"></i></a>
                                </div>                                
                            </div><!--//content-->
                        </div><!--//post-inner-->
                    </article><!--//post-->
                                        
                </div><!--//blog-list-->  
            </div><!--//row-->
            <div class="pagination-container text-center">
                <ul class="pagination">
                    <li class="disabled"><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul><!--//pagination-->
            </div><!--//pagination-container-->
        </div><!--//blog-->        
    </div>
    
    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="footer-content">
            <div class="container">
                <div class="row">                    
                    <div class="footer-col links col-md-3 col-sm-3 col-xs-3">
                        <div class="footer-col-inner">
                            <h3 class="title">Sommaire</h3>
                            <ul class="list-unstyled">
                                <li><a href="#why"><i class="fa fa-caret-right"></i>Qui sommes nous?</a></li>
                                <li><a href="#contact"><i class="fa fa-caret-right"></i>Contactez nous !</a></li>
                            </ul>
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->    
                    <div class="footer-col connect col-md-6 col-sm-6 col-xs-6">
                        <div class="footer-col-inner">
                            <ul class="social list-inline">
                                <li><a href="https://twitter.com/alloratio" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>   
                                <li class="row-end"><a href="#"><i class="fa fa-rss"></i></a></li>             
                            </ul>
                            <div class="form-container">
                                <p class="intro">Restez informé de nos nouveautés</p>
                                <form class="signup-form navbar-form">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Entrez votre adresse mail.">
                                    </div>   
                                    <button type="submit" class="btn btn-cta btn-cta-primary"  data-toggle="modal" data-target="#formContact" data-whatever="twbootstrap">Envoyer !</button>                                 
                                </form>                               
                            </div><!--//subscription-form-->
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->
                    <div class="footer-col contact col-md-3 col-sm-3 col-xs-3">
                        <div class="footer-col-inner">
                            <h3 class="title">Contactez nous !</h3>                          
                            <p class="adr clearfix">
                                <i class="fa fa-map-marker pull-left"></i>        
                                <span class="adr-group pull-left">       
                                    <span class="street-address">26 rue Damrémont</span><br>
                                    <span class="region">75018 Paris</span><br>
                                    <span class="country-name">France</span>
                                </span>
                            </p>
                           <!-- <p class="tel"><i class="fa fa-phone"></i>0800 123 4567</p>-->
                            <p class="email"><i class="fa fa-envelope-o"></i><a href="#">contact@alloratio.com</a></p> 
                            <a href="https://twitter.com/3rdwave_themes" class="twitter-follow-button" data-show-count="false">Follow @3rdwave_themes</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>                        
                        </div><!--//footer-col-inner-->
                    </div>

                </div>
            </div><!--//container-->
        </div><!--//footer-content-->
        <div class="bottom-bar">
            <div class="container">
                <small class="copyright">Copyright @ 2014 Alloratio</small>                
            </div><!--//container-->
        </div><!--//bottom-bar-->
    </footer><!--//footer-->
    
    <!-- Video Modal -->
    <div class="modal modal-video" id="modal-video" tabindex="-1" role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="videoModalLabel" class="modal-title sr-only">Video Tour</h4>
                </div>
                <div class="modal-body">
                    <div class="video-container">
                        <iframe src="//player.vimeo.com/video/28872840?color=ffffff&amp;wmode=transparent" width="720" height="405" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div><!--//video-container-->
                </div><!--//modal-body-->
            </div><!--//modal-content-->
        </div><!--//modal-dialog-->
    </div><!--//modal-->
    
                    
    <!-- Javascript -->          
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/FitVids/jquery.fitvids.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/flexslider/jquery.flexslider-min.js"></script>     
    <script type="text/javascript" src="${request.contextPath}/assets/js/main.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/amcharts.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/serial.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/radar.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/gauge.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/themes/light.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/morris.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/morris-chart-settings.js"></script>
    
            
</body>
</html> 

