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
    <meta name="keywords" content="Trésorerie, cash">
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
                <a href=""><span class="text">Alloratio</span></a>
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
    
    <div class="bg-slider-wrapper">
        <div class="flexslider bg-slider">
            <ul class="slides">
                <li class="slide slide-1"></li>
                <li class="slide slide-2"></li>
                <li class="slide slide-3"></li>
            </ul>
        </div>
    </div> 
    <!--//bg-slider-wrapper-->        
    
    <section id ="accueil" class="promo section section-on-bg">
        <div class="container text-center">                
            <h2 class="title">
            Alloratio, partenaire de la trésorerie des PME</h2> 
            <p class="intro" name="suivi_financier">
            Vos partenaires financiers (banques, assureurs, clients, fournisseurs...) évaluent vos risques de trésorerie, et vous?
          <!--  <p><button type="button" class="btn btn-cta-primary" data-toggle="modal" data-target="#formContact" data-whatever="twbootstrap">Essayez nous !</button></p> -->
            <p><button type="button" class="btn btn-cta-primary" data-toggle="modal" data-target="#analyseEntreprise" data-whatever="twbootstrap"> Evaluez votre entreprise gratuitement!</button></p> 
            </br>
          <!--    <q>Profits are vanity but cash is reality</q>
           <a class="btn-link " href="#jeu" data-backdrop="static" data-keyboard="false"><i class="glyphicon glyphicon-th"></i> Testez vos connaissances ! </a>
          <button type="button" class="play-trigger btn-link " data-toggle="modal" data-target="#modal-video" data-backdrop="static" data-keyboard="false"><i class="fa fa-youtube-play"></i> Watch the video</button>-->
        </div><!--//container-->
    </section><!--//promo-->
    <div class="modal fade" id="formContact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Nous contacter :</h4>
      </div>
      <div class="modal-body">
        <form role="form">
          <div class="form-group">
            <label for="recipient-name" class="control-label">Adresse email :</label>
            <input type="text" class="form-control" id="mail"/>
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">Votre message :</label>
            <textarea class="form-control" id="message"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:envoyer();return false;">Envoyer !</button>
      </div>
    </div>
    <script>
      function envoyer() {
        var mail = $('#mail').val();
        var message = $('#message').val();
       <g:remoteFunction controller = "prospect" action="envoyer" params="\'mail=\' + mail+ '&message=\' + message"/>
       }
        </script>
  </div>
</div>
    
       <div name ="analyse_de_votre_entreprise" class="modal fade" id="analyseEntreprise" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Découvrez ce que vos partenaires pensent de votre trésorerie.</h4>
      </div>
      <div class="modal-body">
        <form role="form">
          <div class="form-group">
            <label for="societe" class="control-label">Nom société :</label>
            <input type="text" class="form-control" id="societe"/>
          </div>
          <div class="form-group">
            <label for="siren" class="control-label">Numéro SIREN :</label>
            <input type="text" class="form-control"  id="siren"/>
          </div>
          <div class="form-group">
            <label for="mail" class="control-label">Votre adresse email : </label>
            <input type="text" class="form-control" id="mail2"/>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:eval();return false;">Envoyer !</button>
      </div>
    </div>
    <script>
      function envoyer() {
        var mail = $('#mail').val();
        var message = $('#message').val();
       <g:remoteFunction controller = "prospect" action="envoyer" params="\'mail=\' + mail+ '&message=\' + message"/>
       }
      function eval() {
        var mail = $('#mail2').val();
        var siren = $('#siren').val();
        var societe = $('#societe').val();
       <g:remoteFunction controller = "prospect" action="evaluationAfaire" params="\'mail=\' + mail+ '&societe=\' + societe+ '&siren=\' + siren"/>
       }
      function adresseMail() {
        var mail = $('#mail3').val()
        var message = "Nouvelle adresse mail"
       <g:remoteFunction controller = "prospect" action="envoyer" params="\'mail=\' + mail+ '&message=\' + message"/>
        
      }
        </script>
  </div>
</div>
    
    
    
    <div class="sections-wrapper">   
     
        <!-- ******Why Section****** -->
        <section id="why" name ="amélioration"class="section why">
            <div class="container">
                <h2 class="title text-center">Notre offre de services</h2>
                <p class="intro text-center">Nous développons une solution de gestion et optimisation de la trésorerie des PME.
                  </br> Gagnez du temps, de la visibilité et faites des économies !
                </br></br>
                
              La gestion de la trésorerie permet de sécuriser vos futurs financements,
            d'anticiper des difficultés de trésorerie (crise du crédit 2008...) et de réduire les coûts de financement.</p>
                
                
                <div class="row item">
                    <div class="content col-md-4 col-sm-4 col-xs-4">
                        <h3 class="title" name="analyse_financiere">Analyse trésorerie</h3>
                        <div class="desc">
                            <p align="justify">Nos outils nous permettent d'analyser votre entreprise et votre gestion de la trésorerie.
                              Etudes dynamiques, prospectives, concurrences... Positionnez vous grâce à Alloratio.</p>
                            <p align="justify"><i class="glyphicon glyphicon-ok"></i> Objectif : réaliser une photographie de votre trésorerie</p>
                        </div>
                    </div><!--//content-->
                    <div class="content col-md-4 col-sm-4 col-xs-4">
                        <h3 class="title" name ="amelioration_continue">Amélioration trésorerie</h3>
                        <div class="desc">
                            <p align="justify">Nous analysons les axes d'amélioration de votre trésorerie et proposons les actions idoines.
                            Le chiffrage et le suivi des actions est assuré par Alloratio.</p>
                            <p align="justify"><i class="glyphicon glyphicon-ok"></i> Objectif : améliorer votre trésorerie sur le long terme</p>
                            
                        </div>
                        <!--//quote-->                        
                    </div><!--//content-->
                    <div class="content col-md-4 col-sm-4 col-xs-4" name ="plan_tresorerie">
                        <h3 class="title">Anticipation</h3>
                        <div class="desc">
                            <p align="justify">Nous préparons et anticipons à vos côtés vos besoins de financement. Développer votre EBE 
                            de demain en sécurisant aujourd'hui votre trésorerie.</p>
                            
                            <p align="justify"><i class="glyphicon glyphicon-ok"></i> Objectif : solidité financière et économique</p>
                        </div>
                        <!--//quote-->                        
                    </div>
                   
                </div>
            </div><!--//container-->
        </section><!--//why-->  
        
        </section><!--//why-->       
        <style>
          .question{
    height:100px;
    vertical-align: middle;
    text-align: center;
    font-size: 1.5em;
    padding-top: 35px;
    cursor: pointer;
}
</style>
<!--
        
        <section id="jeu">
          <div class="container">
            </br>
            </br>
            </br>
            </br><h2 class="title text-center">Jeopardy du cash management</h2>
                <p class="intro text-center">Testez vos connaissances en gestion de trésorerie 
                  </br> et comparez vous à vos confrères !</p>
<div class="panel panel-default">
	<div class="panel-heading"></div>
	<div class="panel-body" id="main-board"></div>
	<div class="panel-footer">
                <div class="pull-right"><h4>Score: <span id="score">0</span></h4></div>
                <div class="clearfix"></div>
        </div>
</div>
<div class="modal fade" id="question-modal" role="dialog" aria-labelledby="question-modal" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p id="question" style="font-size: 1.5em"></p>
      </div>
      <div class="modal-footer ">
        <div id="answers" class="text-center">

        </div>
      </div>
    </div><!-- /.modal-content
  </div><!-- /.modal-dialog
</div><!-- /.modal        
            <script>      
      $(function(){
        $.ajax({//ajax method to load the board.json and call the loadBoard() function on success 
        'async': false,
        'global': false,
        type:'GET',
        dataType:'json',
        url:'/cash/jeu/questions',
        success:function(data){
            map = data;
            loadBoard();
        }
    });
    
    
    $('.unanswered').click(function(){//event bound to clicking on a tile. it grabs the data from the click event, populates the modal, fires the modal, and binds the answer method
     
        var category = $(this).parent().data('category');
        var question = $(this).data('question');
        var value = map[category].questions[question].value;
        var answers = $('#answers');
        $('.modal-title').empty().text(map[category].name);
        $('#question').empty().text(map[category].questions[question].question);
        answers.empty();
        $.each(map[category].questions[question].answers, function(i, answer){//loop over the answers and make buttons for each
            answers.append(
                '<button class="btn btn-danger answer" ' +
                    'data-category="'+category+'"' +
                    'data-question="'+question+'"' +
                    'data-value="'+value+'"' +
                    'data-correct="'+answer.correct+'"' +
                    '>'+ answer.text+'</button><br><br>'
            )
        });
        $('#question-modal').modal('show');//fire modal
        console.log(category, question);
        console.log(map[category].questions[question]);
        handleAnswer(); //bind answer onclick to newly created buttons
    });

});
var score = 0;
var map;
function loadBoard(){//function that turns the board.json (loaded in the the map variable) into a jeopardy board
    var board = $('#main-board');
    var columns = map.length;
    var column_width = parseInt(12/columns); //get the width/12 rounded down, to use the bootstrap column width appropriate for the number of categories
    console.log(columns);
    $.each(map, function(i,category){
        //load category name
        var header_class = 'text-center col-md-' + column_width; 
        if (i === 0 && columns % 2 != 0){ //if the number of columns is odd, offset the first one by one to center them

            header_class += ' col-md-offset-1';
        }
        $('.panel-heading').append(
            '<div class="'+header_class+'"><h4>'+category.name+'</h4></div>'
        );
        //add column
        var div_class = 'category col-md-' + column_width;
        if (i === 0 && columns % 2 != 0){
            div_class += ' col-md-offset-1';
        }
        board.append('<div class="'+div_class+'" id="cat-'+i+'" data-category="'+i+'"></div>');
        var column = $('#cat-'+i);
        $.each(category.questions, function(n,question){
            //add questions
            column.append('<div class="well question unanswered" data-question="'+n+'">'+question.value+'</div>')
        });
    });
    $('.panel-heading').append('<div class="clearfix"></div>')

}

function updateScore(){
    $('#score').empty().text(score);
}

function handleAnswer(){
    $('.answer').click(function(){// hide empty the tile, mike it unclickable, update the score if correct, and hide the modal
        var tile= $('div[data-category="'+$(this).data('category')+'"]>[data-question="'+$(this).data('question')+'"]')[0];
        $(tile).empty().removeClass('unanswered').unbind().css('cursor','not-allowed');
        if ($(this).data('correct')){
            score += parseInt($(this).data('value'));
        }
        $('#question-modal').modal('hide');
        updateScore();
    })
}
      </script>-->

        </section>




        <!-- ******CTA Section****** -->
        <section id="cta-section" class="section cta-section text-center home-cta-section">
            <div class="container">
               <h2 class="title">Vous souhaitez évaluez votre entreprise ? </h2>
               <p class="intro">Plus de <span class="counting">60%</span> des PME ont une trésorerie fragile. </p>
               <p class="intro"><span class="counting">100%</span> des entreprises en banqueroute ont connu une crise de trésorerie. </p>
               
               <p><button type="button" class="btn btn-cta-primary" data-toggle="modal" data-target="#analyseEntreprise" data-whatever="twbootstrap">Et vous, comment va votre trésorerie ?</button></p>
            </div><!--//container-->
        </section><!--//cta-section-->
        
    </div><!--//section-wrapper-->
    
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
    <script type="text/javascript" src="${request.contextPath}/js/amchart/amcharts.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/serial.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/radar.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/gauge.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/themes/light.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/morris.min.js"></script>
    <script type="text/javascript" src="${request.contextPath}/js/amchart/morris-chart-settings.js"></script>
    
            
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

