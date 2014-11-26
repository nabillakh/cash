 
                                      <div id="monCompte"class="pave2 c">

<ul class="nav nav-tabs center"> 
 <g:each in="${annees}" var="annee" status="k">
 <input type="hidden" id="liasse${k}" value="${annee.liasse}"> 
   <g:if test="${annee.actif}">
     <input type="hidden" id="maLiasse" value="${annee.liasse}"/>     
    <li  role="tab" data-toggle="tab" class="info active"  onclick="javascript:majExercice${k}();return false;"><span> ${Math.round(annee.annee)} </span></li>
    <script>
      majExercice${k}()
      </script>
   </g:if>
   <g:else>
    <li  role="tab" data-toggle="tab" class="info"  onclick="javascript:majExercice${k}();return false;"><span >${Math.round(annee.annee)}</span ></li>
   </g:else>
  <script>
                      function majExercice${k}() {
                                    var liasse${k} = ${annee.liasse};
                                    $('#maLiasse').val(liasse${k});
                                    $('#anneeLiasse').val(${annee.annee});
                                    compte();
                              }
                      function compte() {
                        var liasse = liasse${k}
                    <g:remoteFunction controller="liasse" action="liasseAnnuelle" params="\'liasseInstance=\'+liasse" update="maLiasse"/>
                              }
                              
                    </script>
 </g:each>
  </ul>
<div id="maLiasse">
</div>
                                      </div>
 <script>
                      function compte() {
 
                                    var liasse = $('#maLiasse').val();
                    <g:remoteFunction controller="liasse" action="liasseAnnuelle" params="\'liasseInstance=\'+liasse" update="maLiasse"/>
                              }
                              
                    </script>