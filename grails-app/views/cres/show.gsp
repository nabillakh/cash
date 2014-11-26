
<%@ page import="compte.Cres" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cres.label', default: 'Cres')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cres" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cres" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cres">
			
				<g:if test="${cresInstance?.chiffreAffaires}">
				<li class="fieldcontain">
					<span id="chiffreAffaires-label" class="property-label"><g:message code="cres.chiffreAffaires.label" default="Chiffre Affaires" /></span>
					
						<span class="property-value" aria-labelledby="chiffreAffaires-label"><g:fieldValue bean="${cresInstance}" field="chiffreAffaires"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.chiffreAffairesNet}">
				<li class="fieldcontain">
					<span id="chiffreAffairesNet-label" class="property-label"><g:message code="cres.chiffreAffairesNet.label" default="Chiffre Affaires Net" /></span>
					
						<span class="property-value" aria-labelledby="chiffreAffairesNet-label"><g:fieldValue bean="${cresInstance}" field="chiffreAffairesNet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.coutVentes}">
				<li class="fieldcontain">
					<span id="coutVentes-label" class="property-label"><g:message code="cres.coutVentes.label" default="Cout Ventes" /></span>
					
						<span class="property-value" aria-labelledby="coutVentes-label"><g:fieldValue bean="${cresInstance}" field="coutVentes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.margeBrute}">
				<li class="fieldcontain">
					<span id="margeBrute-label" class="property-label"><g:message code="cres.margeBrute.label" default="Marge Brute" /></span>
					
						<span class="property-value" aria-labelledby="margeBrute-label"><g:fieldValue bean="${cresInstance}" field="margeBrute"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.autresChargesExploitations}">
				<li class="fieldcontain">
					<span id="autresChargesExploitations-label" class="property-label"><g:message code="cres.autresChargesExploitations.label" default="Autres Charges Exploitations" /></span>
					
						<span class="property-value" aria-labelledby="autresChargesExploitations-label"><g:fieldValue bean="${cresInstance}" field="autresChargesExploitations"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.resultatExploitation}">
				<li class="fieldcontain">
					<span id="resultatExploitation-label" class="property-label"><g:message code="cres.resultatExploitation.label" default="Resultat Exploitation" /></span>
					
						<span class="property-value" aria-labelledby="resultatExploitation-label"><g:fieldValue bean="${cresInstance}" field="resultatExploitation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.produitsFinanciers}">
				<li class="fieldcontain">
					<span id="produitsFinanciers-label" class="property-label"><g:message code="cres.produitsFinanciers.label" default="Produits Financiers" /></span>
					
						<span class="property-value" aria-labelledby="produitsFinanciers-label"><g:fieldValue bean="${cresInstance}" field="produitsFinanciers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.chargesFinancieres}">
				<li class="fieldcontain">
					<span id="chargesFinancieres-label" class="property-label"><g:message code="cres.chargesFinancieres.label" default="Charges Financieres" /></span>
					
						<span class="property-value" aria-labelledby="chargesFinancieres-label"><g:fieldValue bean="${cresInstance}" field="chargesFinancieres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.resultatFinancier}">
				<li class="fieldcontain">
					<span id="resultatFinancier-label" class="property-label"><g:message code="cres.resultatFinancier.label" default="Resultat Financier" /></span>
					
						<span class="property-value" aria-labelledby="resultatFinancier-label"><g:fieldValue bean="${cresInstance}" field="resultatFinancier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.resultatCourantAvantImpot}">
				<li class="fieldcontain">
					<span id="resultatCourantAvantImpot-label" class="property-label"><g:message code="cres.resultatCourantAvantImpot.label" default="Resultat Courant Avant Impot" /></span>
					
						<span class="property-value" aria-labelledby="resultatCourantAvantImpot-label"><g:fieldValue bean="${cresInstance}" field="resultatCourantAvantImpot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.impotsTaxes}">
				<li class="fieldcontain">
					<span id="impotsTaxes-label" class="property-label"><g:message code="cres.impotsTaxes.label" default="Impots Taxes" /></span>
					
						<span class="property-value" aria-labelledby="impotsTaxes-label"><g:fieldValue bean="${cresInstance}" field="impotsTaxes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.resultatApresImpot}">
				<li class="fieldcontain">
					<span id="resultatApresImpot-label" class="property-label"><g:message code="cres.resultatApresImpot.label" default="Resultat Apres Impot" /></span>
					
						<span class="property-value" aria-labelledby="resultatApresImpot-label"><g:fieldValue bean="${cresInstance}" field="resultatApresImpot"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.produitsExceptionnels}">
				<li class="fieldcontain">
					<span id="produitsExceptionnels-label" class="property-label"><g:message code="cres.produitsExceptionnels.label" default="Produits Exceptionnels" /></span>
					
						<span class="property-value" aria-labelledby="produitsExceptionnels-label"><g:fieldValue bean="${cresInstance}" field="produitsExceptionnels"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.chargesExceptionnelles}">
				<li class="fieldcontain">
					<span id="chargesExceptionnelles-label" class="property-label"><g:message code="cres.chargesExceptionnelles.label" default="Charges Exceptionnelles" /></span>
					
						<span class="property-value" aria-labelledby="chargesExceptionnelles-label"><g:fieldValue bean="${cresInstance}" field="chargesExceptionnelles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.resultatExceptionnel}">
				<li class="fieldcontain">
					<span id="resultatExceptionnel-label" class="property-label"><g:message code="cres.resultatExceptionnel.label" default="Resultat Exceptionnel" /></span>
					
						<span class="property-value" aria-labelledby="resultatExceptionnel-label"><g:fieldValue bean="${cresInstance}" field="resultatExceptionnel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cresInstance?.resultat}">
				<li class="fieldcontain">
					<span id="resultat-label" class="property-label"><g:message code="cres.resultat.label" default="Resultat" /></span>
					
						<span class="property-value" aria-labelledby="resultat-label"><g:fieldValue bean="${cresInstance}" field="resultat"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cresInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cresInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
