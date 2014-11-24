
<%@ page import="compte.Ratios" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ratios.label', default: 'Ratios')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ratios" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ratios" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ratios">
			
				<g:if test="${ratiosInstance?.rendementCapitauxPropres}">
				<li class="fieldcontain">
					<span id="rendementCapitauxPropres-label" class="property-label"><g:message code="ratios.rendementCapitauxPropres.label" default="Rendement Capitaux Propres" /></span>
					
						<span class="property-value" aria-labelledby="rendementCapitauxPropres-label"><g:fieldValue bean="${ratiosInstance}" field="rendementCapitauxPropres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.rendementCapitalInvesti}">
				<li class="fieldcontain">
					<span id="rendementCapitalInvesti-label" class="property-label"><g:message code="ratios.rendementCapitalInvesti.label" default="Rendement Capital Investi" /></span>
					
						<span class="property-value" aria-labelledby="rendementCapitalInvesti-label"><g:fieldValue bean="${ratiosInstance}" field="rendementCapitalInvesti"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.retourSurActif}">
				<li class="fieldcontain">
					<span id="retourSurActif-label" class="property-label"><g:message code="ratios.retourSurActif.label" default="Retour Sur Actif" /></span>
					
						<span class="property-value" aria-labelledby="retourSurActif-label"><g:fieldValue bean="${ratiosInstance}" field="retourSurActif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.roce}">
				<li class="fieldcontain">
					<span id="roce-label" class="property-label"><g:message code="ratios.roce.label" default="Roce" /></span>
					
						<span class="property-value" aria-labelledby="roce-label"><g:fieldValue bean="${ratiosInstance}" field="roce"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.performance}">
				<li class="fieldcontain">
					<span id="performance-label" class="property-label"><g:message code="ratios.performance.label" default="Performance" /></span>
					
						<span class="property-value" aria-labelledby="performance-label"><g:fieldValue bean="${ratiosInstance}" field="performance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.margeCommercialeBrute}">
				<li class="fieldcontain">
					<span id="margeCommercialeBrute-label" class="property-label"><g:message code="ratios.margeCommercialeBrute.label" default="Marge Commerciale Brute" /></span>
					
						<span class="property-value" aria-labelledby="margeCommercialeBrute-label"><g:fieldValue bean="${ratiosInstance}" field="margeCommercialeBrute"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.ebitda}">
				<li class="fieldcontain">
					<span id="ebitda-label" class="property-label"><g:message code="ratios.ebitda.label" default="Ebitda" /></span>
					
						<span class="property-value" aria-labelledby="ebitda-label"><g:fieldValue bean="${ratiosInstance}" field="ebitda"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.ebit}">
				<li class="fieldcontain">
					<span id="ebit-label" class="property-label"><g:message code="ratios.ebit.label" default="Ebit" /></span>
					
						<span class="property-value" aria-labelledby="ebit-label"><g:fieldValue bean="${ratiosInstance}" field="ebit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.cafSurCa}">
				<li class="fieldcontain">
					<span id="cafSurCa-label" class="property-label"><g:message code="ratios.cafSurCa.label" default="Caf Sur Ca" /></span>
					
						<span class="property-value" aria-labelledby="cafSurCa-label"><g:fieldValue bean="${ratiosInstance}" field="cafSurCa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.caSurActif}">
				<li class="fieldcontain">
					<span id="caSurActif-label" class="property-label"><g:message code="ratios.caSurActif.label" default="Ca Sur Actif" /></span>
					
						<span class="property-value" aria-labelledby="caSurActif-label"><g:fieldValue bean="${ratiosInstance}" field="caSurActif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.garantieTaux}">
				<li class="fieldcontain">
					<span id="garantieTaux-label" class="property-label"><g:message code="ratios.garantieTaux.label" default="Garantie Taux" /></span>
					
						<span class="property-value" aria-labelledby="garantieTaux-label"><g:fieldValue bean="${ratiosInstance}" field="garantieTaux"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.rotationStock}">
				<li class="fieldcontain">
					<span id="rotationStock-label" class="property-label"><g:message code="ratios.rotationStock.label" default="Rotation Stock" /></span>
					
						<span class="property-value" aria-labelledby="rotationStock-label"><g:fieldValue bean="${ratiosInstance}" field="rotationStock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.creditClient}">
				<li class="fieldcontain">
					<span id="creditClient-label" class="property-label"><g:message code="ratios.creditClient.label" default="Credit Client" /></span>
					
						<span class="property-value" aria-labelledby="creditClient-label"><g:fieldValue bean="${ratiosInstance}" field="creditClient"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.creditForunisseur}">
				<li class="fieldcontain">
					<span id="creditForunisseur-label" class="property-label"><g:message code="ratios.creditForunisseur.label" default="Credit Forunisseur" /></span>
					
						<span class="property-value" aria-labelledby="creditForunisseur-label"><g:fieldValue bean="${ratiosInstance}" field="creditForunisseur"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.chiffreAffairesExport}">
				<li class="fieldcontain">
					<span id="chiffreAffairesExport-label" class="property-label"><g:message code="ratios.chiffreAffairesExport.label" default="Chiffre Affaires Export" /></span>
					
						<span class="property-value" aria-labelledby="chiffreAffairesExport-label"><g:fieldValue bean="${ratiosInstance}" field="chiffreAffairesExport"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.depenseRDSurExploitation}">
				<li class="fieldcontain">
					<span id="depenseRDSurExploitation-label" class="property-label"><g:message code="ratios.depenseRDSurExploitation.label" default="Depense RDS ur Exploitation" /></span>
					
						<span class="property-value" aria-labelledby="depenseRDSurExploitation-label"><g:fieldValue bean="${ratiosInstance}" field="depenseRDSurExploitation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.liquiditeReduite}">
				<li class="fieldcontain">
					<span id="liquiditeReduite-label" class="property-label"><g:message code="ratios.liquiditeReduite.label" default="Liquidite Reduite" /></span>
					
						<span class="property-value" aria-labelledby="liquiditeReduite-label"><g:fieldValue bean="${ratiosInstance}" field="liquiditeReduite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.liquidite}">
				<li class="fieldcontain">
					<span id="liquidite-label" class="property-label"><g:message code="ratios.liquidite.label" default="Liquidite" /></span>
					
						<span class="property-value" aria-labelledby="liquidite-label"><g:fieldValue bean="${ratiosInstance}" field="liquidite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.liquiditeActionnaires}">
				<li class="fieldcontain">
					<span id="liquiditeActionnaires-label" class="property-label"><g:message code="ratios.liquiditeActionnaires.label" default="Liquidite Actionnaires" /></span>
					
						<span class="property-value" aria-labelledby="liquiditeActionnaires-label"><g:fieldValue bean="${ratiosInstance}" field="liquiditeActionnaires"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.solvabiliteSurActif}">
				<li class="fieldcontain">
					<span id="solvabiliteSurActif-label" class="property-label"><g:message code="ratios.solvabiliteSurActif.label" default="Solvabilite Sur Actif" /></span>
					
						<span class="property-value" aria-labelledby="solvabiliteSurActif-label"><g:fieldValue bean="${ratiosInstance}" field="solvabiliteSurActif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.solvabiliteSurPassif}">
				<li class="fieldcontain">
					<span id="solvabiliteSurPassif-label" class="property-label"><g:message code="ratios.solvabiliteSurPassif.label" default="Solvabilite Sur Passif" /></span>
					
						<span class="property-value" aria-labelledby="solvabiliteSurPassif-label"><g:fieldValue bean="${ratiosInstance}" field="solvabiliteSurPassif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.coefficientEndettement}">
				<li class="fieldcontain">
					<span id="coefficientEndettement-label" class="property-label"><g:message code="ratios.coefficientEndettement.label" default="Coefficient Endettement" /></span>
					
						<span class="property-value" aria-labelledby="coefficientEndettement-label"><g:fieldValue bean="${ratiosInstance}" field="coefficientEndettement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.resultatParEffectif}">
				<li class="fieldcontain">
					<span id="resultatParEffectif-label" class="property-label"><g:message code="ratios.resultatParEffectif.label" default="Resultat Par Effectif" /></span>
					
						<span class="property-value" aria-labelledby="resultatParEffectif-label"><g:fieldValue bean="${ratiosInstance}" field="resultatParEffectif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.caParEmploye}">
				<li class="fieldcontain">
					<span id="caParEmploye-label" class="property-label"><g:message code="ratios.caParEmploye.label" default="Ca Par Employe" /></span>
					
						<span class="property-value" aria-labelledby="caParEmploye-label"><g:fieldValue bean="${ratiosInstance}" field="caParEmploye"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.masseSalarialeSurCA}">
				<li class="fieldcontain">
					<span id="masseSalarialeSurCA-label" class="property-label"><g:message code="ratios.masseSalarialeSurCA.label" default="Masse Salariale Sur CA" /></span>
					
						<span class="property-value" aria-labelledby="masseSalarialeSurCA-label"><g:fieldValue bean="${ratiosInstance}" field="masseSalarialeSurCA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.etp}">
				<li class="fieldcontain">
					<span id="etp-label" class="property-label"><g:message code="ratios.etp.label" default="Etp" /></span>
					
						<span class="property-value" aria-labelledby="etp-label"><g:fieldValue bean="${ratiosInstance}" field="etp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ratiosInstance?.capitalParEmploye}">
				<li class="fieldcontain">
					<span id="capitalParEmploye-label" class="property-label"><g:message code="ratios.capitalParEmploye.label" default="Capital Par Employe" /></span>
					
						<span class="property-value" aria-labelledby="capitalParEmploye-label"><g:fieldValue bean="${ratiosInstance}" field="capitalParEmploye"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:ratiosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${ratiosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
