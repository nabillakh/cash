
<%@ page import="compte.BilanSimplifie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bilanSimplifie.label', default: 'BilanSimplifie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bilanSimplifie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bilanSimplifie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bilanSimplifie">
			
				<g:if test="${bilanSimplifieInstance?.immobilisationsIncorporelles}">
				<li class="fieldcontain">
					<span id="immobilisationsIncorporelles-label" class="property-label"><g:message code="bilanSimplifie.immobilisationsIncorporelles.label" default="Immobilisations Incorporelles" /></span>
					
						<span class="property-value" aria-labelledby="immobilisationsIncorporelles-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="immobilisationsIncorporelles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.immobilisationsCorporelles}">
				<li class="fieldcontain">
					<span id="immobilisationsCorporelles-label" class="property-label"><g:message code="bilanSimplifie.immobilisationsCorporelles.label" default="Immobilisations Corporelles" /></span>
					
						<span class="property-value" aria-labelledby="immobilisationsCorporelles-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="immobilisationsCorporelles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.autresActifsImmobilises}">
				<li class="fieldcontain">
					<span id="autresActifsImmobilises-label" class="property-label"><g:message code="bilanSimplifie.autresActifsImmobilises.label" default="Autres Actifs Immobilises" /></span>
					
						<span class="property-value" aria-labelledby="autresActifsImmobilises-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="autresActifsImmobilises"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.stock}">
				<li class="fieldcontain">
					<span id="stock-label" class="property-label"><g:message code="bilanSimplifie.stock.label" default="Stock" /></span>
					
						<span class="property-value" aria-labelledby="stock-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="stock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.creances}">
				<li class="fieldcontain">
					<span id="creances-label" class="property-label"><g:message code="bilanSimplifie.creances.label" default="Creances" /></span>
					
						<span class="property-value" aria-labelledby="creances-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="creances"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.autresActifsCirculants}">
				<li class="fieldcontain">
					<span id="autresActifsCirculants-label" class="property-label"><g:message code="bilanSimplifie.autresActifsCirculants.label" default="Autres Actifs Circulants" /></span>
					
						<span class="property-value" aria-labelledby="autresActifsCirculants-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="autresActifsCirculants"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.valeursDisponibles}">
				<li class="fieldcontain">
					<span id="valeursDisponibles-label" class="property-label"><g:message code="bilanSimplifie.valeursDisponibles.label" default="Valeurs Disponibles" /></span>
					
						<span class="property-value" aria-labelledby="valeursDisponibles-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="valeursDisponibles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.capital}">
				<li class="fieldcontain">
					<span id="capital-label" class="property-label"><g:message code="bilanSimplifie.capital.label" default="Capital" /></span>
					
						<span class="property-value" aria-labelledby="capital-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="capital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.autresCapitauxPropres}">
				<li class="fieldcontain">
					<span id="autresCapitauxPropres-label" class="property-label"><g:message code="bilanSimplifie.autresCapitauxPropres.label" default="Autres Capitaux Propres" /></span>
					
						<span class="property-value" aria-labelledby="autresCapitauxPropres-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="autresCapitauxPropres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.dettesLongTerme}">
				<li class="fieldcontain">
					<span id="dettesLongTerme-label" class="property-label"><g:message code="bilanSimplifie.dettesLongTerme.label" default="Dettes Long Terme" /></span>
					
						<span class="property-value" aria-labelledby="dettesLongTerme-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="dettesLongTerme"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.autresDettesLongTerme}">
				<li class="fieldcontain">
					<span id="autresDettesLongTerme-label" class="property-label"><g:message code="bilanSimplifie.autresDettesLongTerme.label" default="Autres Dettes Long Terme" /></span>
					
						<span class="property-value" aria-labelledby="autresDettesLongTerme-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="autresDettesLongTerme"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.provisionsPourRisquesCharges}">
				<li class="fieldcontain">
					<span id="provisionsPourRisquesCharges-label" class="property-label"><g:message code="bilanSimplifie.provisionsPourRisquesCharges.label" default="Provisions Pour Risques Charges" /></span>
					
						<span class="property-value" aria-labelledby="provisionsPourRisquesCharges-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="provisionsPourRisquesCharges"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.empruntsCT}">
				<li class="fieldcontain">
					<span id="empruntsCT-label" class="property-label"><g:message code="bilanSimplifie.empruntsCT.label" default="Emprunts CT" /></span>
					
						<span class="property-value" aria-labelledby="empruntsCT-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="empruntsCT"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.fournisseurs}">
				<li class="fieldcontain">
					<span id="fournisseurs-label" class="property-label"><g:message code="bilanSimplifie.fournisseurs.label" default="Fournisseurs" /></span>
					
						<span class="property-value" aria-labelledby="fournisseurs-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="fournisseurs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bilanSimplifieInstance?.autresDCT}">
				<li class="fieldcontain">
					<span id="autresDCT-label" class="property-label"><g:message code="bilanSimplifie.autresDCT.label" default="Autres DCT" /></span>
					
						<span class="property-value" aria-labelledby="autresDCT-label"><g:fieldValue bean="${bilanSimplifieInstance}" field="autresDCT"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bilanSimplifieInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bilanSimplifieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
