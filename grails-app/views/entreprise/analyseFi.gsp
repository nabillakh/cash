</br>
<h3> Démarche d'analyse financière de l'entreprise : </h3>
</br>
<h4> Analyse de la trésorerie nette </h4>
</br>
<div class="col-md-3"></div>
  <div id="chart5" class="col-md-6"></div>
<div class="col-md-3"></div>
<div class="col-md-12"> ok teste la</div>


<div class="col-md-1"></div>
  <div id="tresor" class="col-md-10"></div>
<div class="col-md-1"></div>
<div class="col-md-12"> ok teste la</div>





<div class="col-md-2"></div>
<div class="col-md-8">
<div id="bfrSurCa"></div>	
</div>
<div class="col-md-2"></div>
<div class="col-md-2"></div>
<div class="col-md-8">
<div id="frSurBfr"></div>	
</div>
<div class="col-md-2"></div>
<div class="col-md-2"></div>
<div class="col-md-8">	

</div>
<div class="col-md-2"></div>
	

  
  


<script>
  var capa;
  var chartData2 =  $.ajax({
                   type:'GET',
                   url: '/cash/entreprise/graphiques',
                   async: false,
                   global: false,
                   data : {
                     entreprise : entreprise
                   },
                   success: function(data) {
                       capa = data;
                   }, 
                           error:function(){
                       alert("Error loading chart avancement charge capa");
                   }
               });
               
               var chart2 = AmCharts.makeChart("tresor", {
        "type": "serial",
		"theme": "none",
        "pathToImages": "/lib/3/images/",

	"titles": [
		{
			"text": "Evolution de la structure de la trésorerie",
			"size": 15
		}
	],
        "dataProvider": capa,
        "valueAxes": [{
            "axisAlpha": 0,
            "position": "left"
        }],
        "startDuration": 1,
        "graphs": [{
            "alphaField": "alpha",
            "bullet": "round",
            "balloonText": "<span style='font-size:13px;'>[[title]] en [[category]]:<b>[[value]] ke</b> [[additional]]</span>",
            "dashLengthField": "dashLengthLine",
            "lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#FFFFFF",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
            "title": "Fond de roulement",
            "valueField": "fondDeRoulement"
        }, {
            "balloonText": "<span style='font-size:13px;'>[[title]] en [[category]]:<b>[[value]] ke</b> [[additional]]</span>",
            "bullet": "round",
            "dashLengthField": "dashLengthLine",
            "lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#FFFFFF",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
            "title": "Besoin en fond de roulement",
            "valueField": "bFR"
        }, {
            "balloonText": "<span style='font-size:13px;'>[[title]] en [[category]]:<b>[[value]] ke</b> [[additional]]</span>",
            "dashLengthField": "dashLengthLine",
            "lineThickness": 3,
            "title": "tnt",
            "type": "column",
            "valueField": "deltaTresorerieNette"
        }],//"type": "column",
        "categoryField": "annee",
        "categoryAxis": {
            "gridPosition": "start",
			"axisAlpha":0,
			"tickLength":0
        }
    });
    
    var chart3 = AmCharts.makeChart("frSurBfr", {
        "type": "serial",
		"theme": "none",
        "pathToImages": "/lib/3/images/",
        
	"titles": [
		{
			"text": "Evolution du ratio FR / BFR. ",
			"size": 15
		}
	],

        "dataProvider": capa,
        "valueAxes": [{
            "axisAlpha": 0,
            "position": "left"
        }],
        "startDuration": 1,
        "graphs": [{
            "alphaField": "alpha",
            "bullet": "round",
            "balloonText": "<span style='font-size:13px;'>[[title]] en [[category]]:<b>[[value]] %</b> [[additional]]</span>",
            "dashLengthField": "dashLengthLine",
            "lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#FFFFFF",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
            "title": "fr sur bfr",
            "valueField": "frSurBfr"
        }, {
            "balloonText": "<span style='font-size:13px;'>[[title]] en [[category]]:<b>[[value]] %</b> [[additional]]</span>",
            "bullet": "round",
            "dashLengthField": "dashLengthLine",
            "lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#FFFFFF",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
            "title": "Cible",
            "valueField": "frSurBfrCible"
        }],
        "categoryField": "annee",
        "categoryAxis": {
            "gridPosition": "start",
			"axisAlpha":0,
			"tickLength":0
        }
    });
    
    var chart4 = AmCharts.makeChart("bfrSurCa", {
        "type": "serial",
		"theme": "none",
        "pathToImages": "/lib/3/images/",
        
	"titles": [
		{
			"text": "Evolution BFR rapporté au chiffre d'affaires",
			"size": 15
		}
	],

        "dataProvider": capa,
        "valueAxes": [{
            "axisAlpha": 0,
            "position": "left"
        }],
        "startDuration": 1,
        "graphs": [{
            "alphaField": "alpha",
            "bullet": "round",
            "balloonText": "<span style='font-size:13px;'>[[title]] en [[category]]:<b>[[value]] %</b> [[additional]]</span>",
            "dashLengthField": "dashLengthLine",
            "lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#FFFFFF",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
            "title": "bfrsurca",
            "valueField": "bfrsurca"
        }, {
            "balloonText": "<span style='font-size:13px;'>[[title]] en [[category]]:<b>[[value]] %</b> [[additional]]</span>",
            "bullet": "round",
            "dashLengthField": "dashLengthLine",
            "lineThickness": 3,
			"bulletSize": 7,
			"bulletBorderAlpha": 1,
			"bulletColor": "#FFFFFF",
			"useLineColorForBulletBorder": true,
			"bulletBorderThickness": 3,
			"fillAlphas": 0,
			"lineAlpha": 1,
            "title": "autonomieFi",
            "valueField": "autonomieFi"
        }],
        "categoryField": "annee",
        "categoryAxis": {
            "gridPosition": "start",
			"axisAlpha":0,
			"tickLength":0
        }
    });
    
    
    var chart5 = AmCharts.makeChart("chart5", {
    "type": "serial",
	"theme": "none",
	"titles": [
		{
			"text": "Trésorerie à la dernière clôture",
			"size": 15
		}
	],
    "dataProvider": [{
        "name": "Fond de roulement",
        "open": 0,
        "close": 11,
        "color": "#54cb6a",
        "balloonValue": 11
    },   {
        "name": "BFR",
        "open": 11,
        "close": -3,
        "color": "#bbcb6a",
        "balloonValue": 9
    },{
        "name": "Treso",
        "open": 0,
        "close": -3,
        "color": "red",
        "balloonValue": - 3
    }],
    "valueAxes": [{
        "axisAlpha": 0,
        "gridAlpha": 0.1,
        "position": "left"
    }],
    "startDuration": 1,
    "graphs": [{
        "balloonText": "<span style='color:[[color]]'>[[category]]</span><br><b>$[[balloonValue]] ke</b>",
        "colorField": "color",
        "fillAlphas": 0.8,
        "labelText": "$[[balloonValue]]",
        "lineColor": "#BBBBBB",
        "openField": "open",
        "type": "column",
        "valueField": "close"
    }],
    "trendLines": [{
        "dashLength": 3,
        "finalCategory": "BFR",
        "finalValue": -3,
        "initialCategory": "Treso",
        "initialValue": -3,
        "lineColor": "#888888"
    }],
    "columnWidth": 0.6,
    "categoryField": "name",
    "categoryAxis": {
        "gridPosition": "start",
        "axisAlpha": 0,
        "gridAlpha": 0.1
    },
    "exportConfig": {
        "menuTop":"20px",
        "menuRight":"20px",
        "menuItems": [{
            "icon": 'http://www.amcharts.com/lib/3/images/export.png',
            "format": 'png'
        }]
    }
});
    
  </script>