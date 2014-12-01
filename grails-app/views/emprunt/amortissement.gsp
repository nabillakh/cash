
    <div class="col-sm-6">
      
      <h4> Données de la simulation </h4></br>
      
    <form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="nomEmprunt2" class="col-sm-4 control-label">Nom du projet</label>
    <div class="input-group col-sm-4">
      <input type="text" class="form-control" id="nomEmprunt2" placeholder="Nom" value='${empruntInstance?.nom}'>
    </div>
  </div>
                    
                          
  <div class="form-group">
    <label for="duree2" class="col-sm-4 control-label">Durée du crédit </label>
    <div class="input-group col-sm-4">
      <input type="number" class="form-control" id="duree2" placeholder="Mensualités" value="${empruntInstance?.nbMensualite}">
      <div class="input-group-addon">Mois</div>
    </div>
  </div>                     
                          
  <div class="form-group">
    <label for="montantEmprunt2" class="col-sm-4 control-label">Montant de l'emprunt</label>
    <div class="input-group col-sm-4">
      <input type="number" step="1000" class="form-control" id="montantEmprunt2" placeholder="Montant" value="${empruntInstance?.montant}">
      <div class="input-group-addon">€</div>
    </div>
  </div>
                          
                          
  <div class="form-group">
    <label for="interet2" class="col-sm-4 control-label">Taux d'intérêt bancaire</label>
    <div class="input-group col-sm-4">
      <input type="number" step="0.1" class="form-control" id="interet2" placeholder="Taux" value="${empruntInstance?.tauxInteret}">
      <div class="input-group-addon">%</div>
    </div>
  </div>
                          
                          
  <div class="form-group">
    <label for="assurance2" class="col-sm-4 control-label">Taux assurance crédit</label>
    <div class="input-group col-sm-4">
      <input type="number" step="0.1" class="form-control" id="assurance2" placeholder="Taux assurance" value="${empruntInstance?.tauxAssurance}">
      <div class="input-group-addon">%</div>
    </div>
    
  </div>         
                          
  
  
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-10">
      <a class="btn btn-default" title="amortissement" onclick="javascript:majAmortissement(this);return false;">Mettre à jour</a>
    </div>
  </div>
</form>
    </div>

<div class="clo-sm-6"> 
      <h4> Répartiton du remboursement </h4> </br></div>
<div class="col-sm-6" id="chartDiv">
    </div>

    <div class="col-sm-12"> 
      </br>
   <hr width="60%" color="blue"> 
      </br>
    </div>

    <div class="col-sm-3"></div> <div class="col-sm-6">
                            <div class="form-container">
                                <p class="intro">Pour en savoir sur l'impact trésorerie de votre projet, contactez nous !</p>
                                <form class="signup-form navbar-form">
                                    <div class="form-group">
                                        <input type="text" id ="mail3" class="form-control" placeholder="Entrez votre adresse mail.">
                                    </div>   
                                    <button type="submit" class="btn btn-cta btn-cta-primary"  data-toggle="modal" data-whatever="twbootstrap"  onclick="javascript:adresseMailSimulateur();return false;">Envoyer !</button>                                 
                                    
                                </form>                               
                            </div><!--//subscription-form-->
                        </div><!--//footer-col-inner-->
           </div> <div class="col-sm-3"></div>             
    <div class="col-sm-12"> 
      </br>
   <hr width="60%" color="blue"> 
      </br>
    </div>
                        
                        
<div class="col-sm-3"></div> 
    <div class="col-sm-6"> 
      <h4 class='center'> Tableau d'amortissement </h4> </br>
      
<table class="table table-condensed table-hover">
   <tr>
   <th align="center">Mois</th>
   <th align="center">Capital dû</th>
   <th align="center">Intérêt payé</th>
   <th align="center">Capital payé</th>
   </tr>
 <g:each in="${mensualitesCompletes}" var="mensualite" status="k">
   <tr>
   <td align="center" >${mensualite.Mois} </td>
   <td align="center">${mensualite.capitalDu} € </td>
   <td align="center">${mensualite.interetMois} €</td>
   <td align="center">${mensualite.capital} €</td>
   </tr>
   
   
 </g:each>
</table>
      
      </div>

<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/pie.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/none.js"></script>


    
<script>

var chart = AmCharts.makeChart("chartDiv", {
       "type": "pie",
    "theme": "none",
    "dataProvider": [{
        "title": "Intérêts",
        "value": ${coutCredit} 
    },{
        "title": "Capital",
        "value": ${montantEmprunt} 
    },  {
        "title": "Assurance",
        "value": ${coutAssurance} 
    }],
    "titleField": "title",
    "valueField": "value",
    "labelRadius": 5,

    "radius": "42%",
    "innerRadius": "60%",
    "labelText": "[[title]]"
});


      function adresseMailSimulateur() {
        var mail = $('#mail3').val();
        var message = "inscription via simulateur";
       <g:remoteFunction controller = "prospect" action="envoyer" params="\'mail=\' + mail+ '&message=\' + message"/>;
        
      }

</script>