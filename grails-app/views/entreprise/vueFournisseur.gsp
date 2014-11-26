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
    <h4 class="panel-title">${ind.nom} : risque ${ind.risque} </h4>
    <p align="justify"> ${(ind.explication)}</p>
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