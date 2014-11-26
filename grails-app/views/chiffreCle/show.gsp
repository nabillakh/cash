
<%@ page import="compte.ChiffreCle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'chiffreCle.label', default: 'ChiffreCle')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-chiffreCle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-chiffreCle" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list chiffreCle">
			
				<g:if test="${chiffreCleInstance?.capaciteAutofinancement}">
				<li class="fieldcontain">
					<span id="capaciteAutofinancement-label" class="property-label"><g:message code="chiffreCle.capaciteAutofinancement.label" default="Capacite Autofinancement" /></span>
					
						<span class="property-value" aria-labelledby="capaciteAutofinancement-label"><g:fieldValue bean="${chiffreCleInstance}" field="capaciteAutofinancement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chiffreCleInstance?.liquiditeReduite}">
				<li class="fieldcontain">
					<span id="liquiditeReduite-label" class="property-label"><g:message code="chiffreCle.liquiditeReduite.label" default="Liquidite Reduite" /></span>
					
						<span class="property-value" aria-labelledby="liquiditeReduite-label"><g:fieldValue bean="${chiffreCleInstance}" field="liquiditeReduite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chiffreCleInstance?.performance}">
				<li class="fieldcontain">
					<span id="performance-label" class="property-label"><g:message code="chiffreCle.performance.label" default="Performance" /></span>
					
						<span class="property-value" aria-labelledby="performance-label"><g:fieldValue bean="${chiffreCleInstance}" field="performance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chiffreCleInstance?.rendementCapitauxPropres}">
				<li class="fieldcontain">
					<span id="rendementCapitauxPropres-label" class="property-label"><g:message code="chiffreCle.rendementCapitauxPropres.label" default="Rendement Capitaux Propres" /></span>
					
						<span class="property-value" aria-labelledby="rendementCapitauxPropres-label"><g:fieldValue bean="${chiffreCleInstance}" field="rendementCapitauxPropres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chiffreCleInstance?.rendementCapitalInvesti}">
				<li class="fieldcontain">
					<span id="rendementCapitalInvesti-label" class="property-label"><g:message code="chiffreCle.rendementCapitalInvesti.label" default="Rendement Capital Investi" /></span>
					
						<span class="property-value" aria-labelledby="rendementCapitalInvesti-label"><g:fieldValue bean="${chiffreCleInstance}" field="rendementCapitalInvesti"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chiffreCleInstance?.solvabilite}">
				<li class="fieldcontain">
					<span id="solvabilite-label" class="property-label"><g:message code="chiffreCle.solvabilite.label" default="Solvabilite" /></span>
					
						<span class="property-value" aria-labelledby="solvabilite-label"><g:fieldValue bean="${chiffreCleInstance}" field="solvabilite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${chiffreCleInstance?.effectifs}">
				<li class="fieldcontain">
					<span id="effectifs-label" class="property-label"><g:message code="chiffreCle.effectifs.label" default="Effectifs" /></span>
					
						<span class="property-value" aria-labelledby="effectifs-label"><g:fieldValue bean="${chiffreCleInstance}" field="effectifs"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:chiffreCleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${chiffreCleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
