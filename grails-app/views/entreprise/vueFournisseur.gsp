
<style>
  .montrer { 
   zoom: 1; /*offre le layout à un élément (*)*/
   display: inline;
}
  .cacher { 
   zoom: 1; /*offre le layout à un élément (*)*/
   display: none;
}
  </style>
  </br></br>


<g:each in="${liste}" var="ind" status="k" >
          <g:if test="${ind.risque == "FORT"}">
       <div class="bs-callout bs-callout-danger">
          </g:if>
          <g:else>
          <g:if test="${ind.risque == "MODERE"}">
        <div class="bs-callout bs-callout-warning">
          </g:if>
          <g:else>
          
        <div class="bs-callout bs-callout-info">
          </g:else>
          </g:else>
    <h4 class="panel-title">${ind.nom} : ${ind.mesure} </h4>
    <p align="justify"> ${(ind.explication)}</br></p>
    <center>  
    <a  class="btn-link montrer" id='aMontrer${k}' onclick="javascript:montrer${k}();return false;"><i class="glyphicon glyphicon-chevron-down"></i> En voir plus </a>
    <a  class="btn-link cacher" id='aCacher${k}' onclick="javascript:cacher${k}();return false;" ><i class="glyphicon glyphicon-chevron-up"></i> Refermer la note </a>
    </center>
    <div id="note${k}" class="cacher"> 
      <p>Definition : </p>
      <p>Formule : </p>   
      <p>Conexte : </p>      
      <p>Données : </p>    
    <div id="myfirstchart${k}" style="width: 500px; height: 300px;"> </div> 
    </div>
    <script>
      // cacher${k}();
      function cacher${k}()
{
	document.getElementById('note${k}').style.display = 'none';
	document.getElementById('aMontrer${k}').style.display = 'inline';
	document.getElementById('aCacher${k}').style.display = 'none';
};
      function montrer${k}()
{
	document.getElementById('note${k}').style.display = 'inline';
	document.getElementById('aMontrer${k}').style.display = 'none';
	document.getElementById('aCacher${k}').style.display = 'inline';
};
      
      $(function () {
  $('[data-toggle="popover"]').popover()
});
new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'myfirstchart${k}',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
    { year: '2008', value: 20 },
    { year: '2009', value: 10 },
    { year: '2010', value: 5 },
    { year: '2011', value: 5 },
    { year: '2012', value: 20 }
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'year',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['value'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Value']
});
      </script>
   <!-- <div id="chartdiv${k}"  style="width: 100%; height: 180px; background-color: #FFFFFF;"  ></div> -->

          <!--
          <script type="text/javascript">
                         
     var gaugeChart${k} = AmCharts.makeChart("chartdiv${k}", {
        "type": "gauge",
        "theme": "none",    
        "axes": [{
            "axisThickness":1,
             "axisAlpha":0.2,
             "tickAlpha":0.2,
            "bands": [{
                "color": "#cc4748",
                "endValue": 30,
                "startValue": 0
            }, {
                "color": "#fdd400",
                "endValue": 50,
                "startValue": 30
            }, {
                "color": "#84b761",
                "endValue": 80,
                "startValue": 50
            }],
            "bottomText": "Risque ",
            "bottomTextYOffset": -20,
            "endValue": 80
        }],
        "arrows": [{}]
    });

setInterval(randomValue, 2000);
 // set random value
function randomValue() {
    var value = 10;
    if(gaugeChart${k}){
    if(gaugeChart${k}.arrows){
      if(gaugeChart${k}.arrows[0]){
        if(gaugeChart${k}.arrows[0].setValue){
          gaugeChart${k}.arrows[0].setValue(value);
          gaugeChart${k}.axes[0].setBottomText("risque " + 10 + " %");
        }
      }
    }
  }
}   
			
		</script>-->
</div></g:each>