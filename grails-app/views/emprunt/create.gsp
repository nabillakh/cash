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
    <meta name="keywords" content="simulateur, crédit">
    <meta name="author" content="Nabil Lakhmissi">  
    <meta name="Content-Langage" content="FR">    
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
<script type="text/javascript" src="http://www.amcharts.com/lib/3/pie.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/none.js"></script>

    <script type="text/javascript" src="${request.contextPath}/js/jquery.sharrre.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/jquery.sharrre.min.js"></script>
   
    <style>
    #chartDiv {
	width		: 40%;
	height		: 220px;
	font-size	: 11px;
}							
    </style>
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
                <a href="${request.contextPath}/"><span class="text">Alloratio</span></a>
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
                         <!--  <li class="nav-item"><a href="#jeu">Testez vos connaissances</a></li>
                       <li class="nav-item dropdown">
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
                        <li class="nav-item nav-item-cta last"><a class="btn btn-cta btn-cta-secondary"  data-toggle="modal" data-target="#formContact" data-whatever="twbootstrap">Contactez nous !</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav>
            <!--//main-nav-->                     
        </div><!--//container-->
    </header><!--//header-->
    
    <!--//bg-slider-wrapper-->        
    <div class="blog-entry-wrapper"> 
            <!--
            <div class="blog-headline-bg">
            </div><!--//blog-headline-bg-->
            <div class="blog-entry">  
                <article class="post">
                    <!--//blog-entry-heading-->
                    <div class="container">
                      <div>
        <center> <h3 class="line-divider"> Simulateur de crédit bancaire </h3>
          </br>
        </center>
      </div>
                               
    <div>
      <div class='span12'>
      <p align='center'>        
        Le principal outil de financement d'une PME est le crédit bancaire. Alloratio vous propose gratuitement son module de simulation de crédit.
        
        </br>
        
      </p>
    </div>
    </div>
                      <div id="formulaire">  
                        <form class="form-horizontal" role="form">
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="nomEmprunt" class="col-sm-3 control-label">Nom du projet</label>
    <div class="input-group col-sm-3">
      <input type="text" class="form-control" id="nomEmprunt" placeholder="Nom" value='${empruntInstance?.nom}'>
    </div><div class="col-sm-3"></div>
  </div>
                    
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="duree" class="col-sm-3 control-label">Durée du crédit (mois) </label>
    <div class="input-group col-sm-3">
      <input type="number" class="form-control" id="duree" placeholder="Mensualités" value="${empruntInstance?.nbMensualite}">
      <div class="input-group-addon">Mois</div>
    </div><div class="col-sm-3"></div>
  </div>                     
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="montantEmprunt" class="col-sm-3 control-label">Montant de l'emprunt</label>
    <div class="input-group col-sm-3">
      <input type="number" step="1000" class="form-control" id="montantEmprunt" placeholder="Montant" value="${empruntInstance?.montant}">
      <div class="input-group-addon">€</div>
    </div><div class="col-sm-3"></div>
  </div>
                          
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="interet" class="col-sm-3 control-label">Taux d'intérêt bancaire</label>
    <div class="input-group col-sm-3">
      <input type="number" step="0.1" class="form-control" id="interet" placeholder="Taux" value="${empruntInstance?.tauxInteret}">
      <div class="input-group-addon">%</div>
    </div><div class="col-sm-3"></div>
  </div>
                          
                          
  <div class="form-group">
    <div class="col-sm-3"></div>
    <label for="assurance" class="col-sm-3 control-label">Taux assurance crédit</label>
    <div class="input-group col-sm-3">
      <input type="number" step="0.1" class="form-control" id="assurance" placeholder="Taux assurance" value="${empruntInstance?.tauxAssurance}">
      <div class="input-group-addon">%</div>
    </div>
    <div class="col-sm-3"></div>
  </div>         
                          
  
  
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-10">
      <a class="btn btn-default" title="amortissement" onclick="javascript:amortissement(this);return false;">Obtenir tableau d'amortissement</a>
    </div>
  </div>
</form>
  </div>
                      
     <div class="col-sm-12" id='amortissement'></div>                 
                        
                        
		</div>
                    <script>
                      function modifierVue() {
                        document.getElementById('formulaire').style.display = 'none';
                        // document.getElementById('aMontrer${k}').style.display = 'inline';
                      }
                      
          var nomEmprunt;
          var duree ;
          var montantEmprunt;
          var interet;
          var assurance;
            
          function majAmortissement() {
             nomEmprunt = $('#nomEmprunt2').val();
             duree = $('#duree2').val();
             montantEmprunt = $('#montantEmprunt2').val();
             interet = $('#interet2').val();
             assurance = $('#assurance2').val();
          
        <g:remoteFunction controller="emprunt" action="amortissement" params="\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"  update="amortissement"/>
                        modifierVue();            
          }
          function amortissement() {
             nomEmprunt = $('#nomEmprunt').val();
             duree = $('#duree').val();
             montantEmprunt = $('#montantEmprunt').val();
             interet = $('#interet').val();
             assurance = $('#assurance').val();
          
        <g:remoteFunction controller="emprunt" action="amortissement" params="\'nomEmprunt=\'+nomEmprunt+ '&duree=\' + duree+ '&montantEmprunt=\' + montantEmprunt+ '&interet=\' + interet+ '&assurance=\' + assurance"  update="amortissement"/>
                        modifierVue();
            }
          </script>
                </article><!--//post-->                                      
            </div><!--//blog-entry-->
        </div><!--//blog-entry-wrapper-->  
        
    <!--//section-wrapper-->
    
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
                                <li><a href="#formContact"><i class="fa fa-caret-right"></i>Contactez nous !</a></li>
                            </ul>
                        </div><!--//footer-col-inner-->
                    </div><!--//foooter-col-->    
                    <div class="footer-col connect col-md-6 col-sm-6 col-xs-6">
                        <div class="footer-col-inner">
                            <ul class="social list-inline">
                                <li><a href="https://twitter.com/alloratio" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://fr.linkedin.com/pub/nabil-lakhmissi/7b/559/56/"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="https://plus.google.com/+Alloratio"><i class="fa fa-google-plus"></i></a></li>    
                            </ul>
                            <div class="form-container">
                                <p class="intro">Restez informé de nos nouveautés</p>
                                <form class="signup-form navbar-form">
                                    <div class="form-group">
                                        <input type="text" id ="mail3" class="form-control" placeholder="Entrez votre adresse mail.">
                                    </div>   
                                    <button type="submit" class="btn btn-cta btn-cta-primary"  data-toggle="modal" data-whatever="twbootstrap"  onclick="javascript:adresseMail();return false;">Envoyer !</button>                                 
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
                            <p class="email"><i class="fa fa-envelope-o"></i><a href="#formContact">contact@alloratio.com</a></p> 
                        </div><!--//footer-col-inner-->
                    </div>
                    <div class="footer-col contact col-md-4 col-sm-4 col-xs-4"></div>
                    <div class="footer-col contact col-md-4 col-sm-4 col-xs-4">
                    <a class="twitter-timeline" href="https://twitter.com/alloratio" data-widget-id="537253047089782784">Tweets de @alloratio</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
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
    
    <script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/none.js"></script>



    <script src="//platform.twitter.com/oct.js" type="text/javascript"></script>
<script type="text/javascript">
twttr.conversion.trackPid('l572d');</script>
<noscript>
<img height="1" width="1" style="display:none;" alt="" src="https://analytics.twitter.com/i/adsct?txn_id=l572d&p_id=Twitter" />
<img height="1" width="1" style="display:none;" alt="" src="//t.co/i/adsct?txn_id=l572d&p_id=Twitter" /></noscript>
            
   <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52015735-2', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>