
<%@ page import="compte.Liasse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'liasse.label', default: 'Liasse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-liasse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-liasse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list liasse">
			
				<g:if test="${liasseInstance?.annee}">
				<li class="fieldcontain">
					<span id="annee-label" class="property-label"><g:message code="liasse.annee.label" default="Annee" /></span>
					
						<span class="property-value" aria-labelledby="annee-label"><g:fieldValue bean="${liasseInstance}" field="annee"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${liasseInstance?.bilan}">
				<li class="fieldcontain">
					<span id="bilan-label" class="property-label"><g:message code="liasse.bilan.label" default="Bilan" /></span>
					
						<span class="property-value" aria-labelledby="bilan-label"><g:link controller="bilanSimplifie" action="show" id="${liasseInstance?.bilan?.id}">${liasseInstance?.bilan?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${liasseInstance?.chiffresCles}">
				<li class="fieldcontain">
					<span id="chiffresCles-label" class="property-label"><g:message code="liasse.chiffresCles.label" default="Chiffres Cles" /></span>
					
						<span class="property-value" aria-labelledby="chiffresCles-label"><g:link controller="chiffreCle" action="show" id="${liasseInstance?.chiffresCles?.id}">${liasseInstance?.chiffresCles?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${liasseInstance?.cres}">
				<li class="fieldcontain">
					<span id="cres-label" class="property-label"><g:message code="liasse.cres.label" default="Cres" /></span>
					
						<span class="property-value" aria-labelledby="cres-label"><g:link controller="cres" action="show" id="${liasseInstance?.cres?.id}">${liasseInstance?.cres?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${liasseInstance?.entreprise}">
				<li class="fieldcontain">
					<span id="entreprise-label" class="property-label"><g:message code="liasse.entreprise.label" default="Entreprise" /></span>
					
						<span class="property-value" aria-labelledby="entreprise-label"><g:link controller="entreprise" action="show" id="${liasseInstance?.entreprise?.id}">${liasseInstance?.entreprise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${liasseInstance?.ratio}">
				<li class="fieldcontain">
					<span id="ratio-label" class="property-label"><g:message code="liasse.ratio.label" default="Ratio" /></span>
					
						<span class="property-value" aria-labelledby="ratio-label"><g:link controller="ratios" action="show" id="${liasseInstance?.ratio?.id}">${liasseInstance?.ratio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:liasseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${liasseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
