<%@ page import="compte.Ratios" %>



<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'rendementCapitauxPropres', 'error')} ">
	<label for="rendementCapitauxPropres">
		<g:message code="ratios.rendementCapitauxPropres.label" default="Rendement Capitaux Propres" />
		
	</label>
	<g:field name="rendementCapitauxPropres" value="${fieldValue(bean: ratiosInstance, field: 'rendementCapitauxPropres')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'rendementCapitalInvesti', 'error')} ">
	<label for="rendementCapitalInvesti">
		<g:message code="ratios.rendementCapitalInvesti.label" default="Rendement Capital Investi" />
		
	</label>
	<g:field name="rendementCapitalInvesti" value="${fieldValue(bean: ratiosInstance, field: 'rendementCapitalInvesti')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'retourSurActif', 'error')} ">
	<label for="retourSurActif">
		<g:message code="ratios.retourSurActif.label" default="Retour Sur Actif" />
		
	</label>
	<g:field name="retourSurActif" value="${fieldValue(bean: ratiosInstance, field: 'retourSurActif')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'roce', 'error')} ">
	<label for="roce">
		<g:message code="ratios.roce.label" default="Roce" />
		
	</label>
	<g:field name="roce" value="${fieldValue(bean: ratiosInstance, field: 'roce')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'performance', 'error')} ">
	<label for="performance">
		<g:message code="ratios.performance.label" default="Performance" />
		
	</label>
	<g:field name="performance" value="${fieldValue(bean: ratiosInstance, field: 'performance')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'margeCommercialeBrute', 'error')} ">
	<label for="margeCommercialeBrute">
		<g:message code="ratios.margeCommercialeBrute.label" default="Marge Commerciale Brute" />
		
	</label>
	<g:field name="margeCommercialeBrute" value="${fieldValue(bean: ratiosInstance, field: 'margeCommercialeBrute')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'ebitda', 'error')} ">
	<label for="ebitda">
		<g:message code="ratios.ebitda.label" default="Ebitda" />
		
	</label>
	<g:field name="ebitda" value="${fieldValue(bean: ratiosInstance, field: 'ebitda')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'ebit', 'error')} ">
	<label for="ebit">
		<g:message code="ratios.ebit.label" default="Ebit" />
		
	</label>
	<g:field name="ebit" value="${fieldValue(bean: ratiosInstance, field: 'ebit')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'cafSurCa', 'error')} ">
	<label for="cafSurCa">
		<g:message code="ratios.cafSurCa.label" default="Caf Sur Ca" />
		
	</label>
	<g:field name="cafSurCa" value="${fieldValue(bean: ratiosInstance, field: 'cafSurCa')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'caSurActif', 'error')} ">
	<label for="caSurActif">
		<g:message code="ratios.caSurActif.label" default="Ca Sur Actif" />
		
	</label>
	<g:field name="caSurActif" value="${fieldValue(bean: ratiosInstance, field: 'caSurActif')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'garantieTaux', 'error')} ">
	<label for="garantieTaux">
		<g:message code="ratios.garantieTaux.label" default="Garantie Taux" />
		
	</label>
	<g:field name="garantieTaux" value="${fieldValue(bean: ratiosInstance, field: 'garantieTaux')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'rotationStock', 'error')} ">
	<label for="rotationStock">
		<g:message code="ratios.rotationStock.label" default="Rotation Stock" />
		
	</label>
	<g:field name="rotationStock" value="${fieldValue(bean: ratiosInstance, field: 'rotationStock')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'creditClient', 'error')} ">
	<label for="creditClient">
		<g:message code="ratios.creditClient.label" default="Credit Client" />
		
	</label>
	<g:field name="creditClient" value="${fieldValue(bean: ratiosInstance, field: 'creditClient')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'creditForunisseur', 'error')} ">
	<label for="creditForunisseur">
		<g:message code="ratios.creditForunisseur.label" default="Credit Forunisseur" />
		
	</label>
	<g:field name="creditForunisseur" value="${fieldValue(bean: ratiosInstance, field: 'creditForunisseur')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'chiffreAffairesExport', 'error')} ">
	<label for="chiffreAffairesExport">
		<g:message code="ratios.chiffreAffairesExport.label" default="Chiffre Affaires Export" />
		
	</label>
	<g:field name="chiffreAffairesExport" value="${fieldValue(bean: ratiosInstance, field: 'chiffreAffairesExport')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'depenseRDSurExploitation', 'error')} ">
	<label for="depenseRDSurExploitation">
		<g:message code="ratios.depenseRDSurExploitation.label" default="Depense RDS ur Exploitation" />
		
	</label>
	<g:field name="depenseRDSurExploitation" value="${fieldValue(bean: ratiosInstance, field: 'depenseRDSurExploitation')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'liquiditeReduite', 'error')} ">
	<label for="liquiditeReduite">
		<g:message code="ratios.liquiditeReduite.label" default="Liquidite Reduite" />
		
	</label>
	<g:field name="liquiditeReduite" value="${fieldValue(bean: ratiosInstance, field: 'liquiditeReduite')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'liquidite', 'error')} ">
	<label for="liquidite">
		<g:message code="ratios.liquidite.label" default="Liquidite" />
		
	</label>
	<g:field name="liquidite" value="${fieldValue(bean: ratiosInstance, field: 'liquidite')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'liquiditeActionnaires', 'error')} ">
	<label for="liquiditeActionnaires">
		<g:message code="ratios.liquiditeActionnaires.label" default="Liquidite Actionnaires" />
		
	</label>
	<g:field name="liquiditeActionnaires" value="${fieldValue(bean: ratiosInstance, field: 'liquiditeActionnaires')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'solvabiliteSurActif', 'error')} ">
	<label for="solvabiliteSurActif">
		<g:message code="ratios.solvabiliteSurActif.label" default="Solvabilite Sur Actif" />
		
	</label>
	<g:field name="solvabiliteSurActif" value="${fieldValue(bean: ratiosInstance, field: 'solvabiliteSurActif')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'solvabiliteSurPassif', 'error')} ">
	<label for="solvabiliteSurPassif">
		<g:message code="ratios.solvabiliteSurPassif.label" default="Solvabilite Sur Passif" />
		
	</label>
	<g:field name="solvabiliteSurPassif" value="${fieldValue(bean: ratiosInstance, field: 'solvabiliteSurPassif')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'coefficientEndettement', 'error')} ">
	<label for="coefficientEndettement">
		<g:message code="ratios.coefficientEndettement.label" default="Coefficient Endettement" />
		
	</label>
	<g:field name="coefficientEndettement" value="${fieldValue(bean: ratiosInstance, field: 'coefficientEndettement')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'resultatParEffectif', 'error')} ">
	<label for="resultatParEffectif">
		<g:message code="ratios.resultatParEffectif.label" default="Resultat Par Effectif" />
		
	</label>
	<g:field name="resultatParEffectif" value="${fieldValue(bean: ratiosInstance, field: 'resultatParEffectif')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'caParEmploye', 'error')} ">
	<label for="caParEmploye">
		<g:message code="ratios.caParEmploye.label" default="Ca Par Employe" />
		
	</label>
	<g:field name="caParEmploye" value="${fieldValue(bean: ratiosInstance, field: 'caParEmploye')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'masseSalarialeSurCA', 'error')} ">
	<label for="masseSalarialeSurCA">
		<g:message code="ratios.masseSalarialeSurCA.label" default="Masse Salariale Sur CA" />
		
	</label>
	<g:field name="masseSalarialeSurCA" value="${fieldValue(bean: ratiosInstance, field: 'masseSalarialeSurCA')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'etp', 'error')} ">
	<label for="etp">
		<g:message code="ratios.etp.label" default="Etp" />
		
	</label>
	<g:field name="etp" value="${fieldValue(bean: ratiosInstance, field: 'etp')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ratiosInstance, field: 'capitalParEmploye', 'error')} ">
	<label for="capitalParEmploye">
		<g:message code="ratios.capitalParEmploye.label" default="Capital Par Employe" />
		
	</label>
	<g:field name="capitalParEmploye" value="${fieldValue(bean: ratiosInstance, field: 'capitalParEmploye')}"/>

</div>

