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
    

    <script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/none.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
                              <style>
                              #tresor {
	width	: 50%;
	height	: 100px;
}		
#frSurBfr {
	width	: 50%;
	height	: 200px;
}		

#bfrSurCa {
	width	: 50%;
	height	: 200px;
}		


#chart5 {
	width	: 50%;
	height	: 200px;
}		

.bs-callout {
    padding: 20px;
    margin: 20px 0;
    border: 1px solid #eee;
    border-left-width: 5px;
    border-radius: 3px;
}
.bs-callout h4 {
    margin-top: 0;
    margin-bottom: 5px;
}
.bs-callout p:last-child {
    margin-bottom: 0;
}
.bs-callout code {
    border-radius: 3px;
}
.bs-callout+.bs-callout {
    margin-top: -5px;
}
.bs-callout-default {
    border-left-color: #777;
}
.bs-callout-default h4 {
    color: #777;
}
.bs-callout-primary {
    border-left-color: #428bca;
}
.bs-callout-primary h4 {
    color: #428bca;
}
.bs-callout-success {
    border-left-color: #5cb85c;
}
.bs-callout-success h4 {
    color: #5cb85c;
}
.bs-callout-danger {
    border-left-color: #d9534f;
}
.bs-callout-danger h4 {
    color: #d9534f;
}
.bs-callout-warning {
    border-left-color: #f0ad4e;
}
.bs-callout-warning h4 {
    color: #f0ad4e;
}
.bs-callout-info {
    border-left-color: #5bc0de;
}
.bs-callout-info h4 {
    color: #5bc0de;
}

  #tresor {
	width		: 100%;
	height		: 250px;
	font-size	: 11px;
}	

                              </style>
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
                        <li class="nav-item"><a href="#why" color="grey">Services</a></li>
                        <li class="nav-item"><a href="#jeu">Testez vos connaissances</a></li>
                        
                        <li class="nav-item nav-item-cta last"><a class="btn btn-cta btn-cta-secondary"  data-toggle="modal" data-target="#formContact" data-whatever="twbootstrap">Testez nous !</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav>
            <!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->
    
    
    <div class="blog-entry-wrapper"> 
            <!--
            <div class="blog-headline-bg">
            </div><!--//blog-headline-bg-->
            <div class="blog-entry">  
                <article class="post">
                    <!--//blog-entry-heading-->
                    <div class="container">
                      <div>
        <center> <h3 class="line-divider"> La société ${entrepriseInstance.nom} </br> vue par ses clients </h3>
        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
        </center>
      </div>
                               
    <div>
      <div class='span12'>
      <p align='justify'>        
        Pour vos clients, vous êtes leurs fournisseurs. Aussi, votre capacité à rembourser vos dettes court et long terme est déterminante
        pour eux en phase de négociations commerciales.
        </br>
        
      </p>
    </div>
    </div>
                        <div class="row">
                          
                          </br>
                        <ul class="nav nav-tabs center" role="tablist">
                          <li class="active">
                            <a href="#general" role="tab" data-toggle="tab"  onclick="javascript:general();return false;" >Données générales</a></li>
                          <li>
                            <a href="#vueFournisseur" role="tab" data-toggle="tab"  onclick="javascript:vueFournisseur();return false;">Analyse vue de vos clients</a></li>
                          <li>
                            <a href="#financier" role="tab" data-toggle="tab" onclick="javascript:financier();return false;">Analyse d'un analyste financier</a></li>
                          <li>
                            <a href="#analyseFi" role="tab" data-toggle="tab" onclick="javascript:analyseFi();return false;">Analyse de votre trésorerie</a></li>
                          <li>
                            <a  href="#liasse" role="tab" data-toggle="tab"  onclick="javascript:liasse();return false;"> Bilans gratuits </a>

                          </li>
                        </ul>
                          <div class="blog-entry-content col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1 col-xs-offset-0">
                     <input type="hidden" id="entreprise" value="${entrepriseInstance.id}"> 
                                <div class='span12' >
                                 
                             

                              <div class="tab-content">
                                <div class="tab-pane active" id="general">
                                </div>
                                <script type="text/javascript">
        var entreprise = $('#entreprise').val()
        <g:remoteFunction controller="entreprise" action="general" params="\'entrepriseInstance=\'+entreprise"  update="general"/>
      </script>
                                <div class="tab-pane" id="vueFournisseur">
                                  
                                </div>
                                <div class="tab-pane" id="financier">
                                  
                                </div>
                                <div class="tab-pane" id="analyseFi">
                                 
                                </div>
                                <div class="tab-pane" id="liasse">
                                </div>
                              </div>
                                </div>
                        </div><!--//row-->
                        
                    <script>
                      var entreprise = $('#entreprise').val();
                      function liasse() {
                    <g:remoteFunction controller="entreprise" action="liasse" params="\'entrepriseInstance=\'+entreprise" update="liasse"/>
                              }
                      function financier() {
                    <g:remoteFunction controller="entreprise" action="financier" params="\'entrepriseInstance=\'+entreprise" update="financier"/>
                              }
                      function vueFournisseur() {
                    <g:remoteFunction controller="entreprise" action="vueFournisseur" params="\'entrepriseInstance=\'+entreprise" update="vueFournisseur"/>
                              }
                      function general() {
                    <g:remoteFunction controller="entreprise" action="general" params="\'entrepriseInstance=\'+entreprise" update="general"/>
                              }
                      function analyseFi() {
                    <g:remoteFunction controller="entreprise" action="analyseFi" params="\'entrepriseInstance=\'+entreprise" update="analyseFi"/>
                              }
                              
                     
                  </script>
                        
                        
                </article><!--//post-->                                      
            </div><!--//blog-entry-->
        </div><!--//blog-entry-wrapper-->  
    </div><!--//wrapper-->
    
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
    
                    
    <!-- Javascript -->          
    
    <script src="${request.contextPath}/js/amchart/raphael.2.1.0.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/bootstrap-hover-dropdown.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/FitVids/jquery.fitvids.js"></script>
    <script type="text/javascript" src="${request.contextPath}/assets/plugins/flexslider/jquery.flexslider-min.js"></script>     
    <script type="text/javascript" src="${request.contextPath}/assets/js/main.js"></script>
    
    
    <script src="${request.contextPath}/js/amchart/raphael.2.1.0.min.js"></script>
    
    




</body>
</html> 

