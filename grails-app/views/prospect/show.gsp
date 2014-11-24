
<%@ page import="contact.Prospect" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prospect.label', default: 'Prospect')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prospect" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prospect" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prospect">
			
				<g:if test="${prospectInstance?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="prospect.message.label" default="Message" /></span>
					
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${prospectInstance}" field="message"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="prospect.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${prospectInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prospectInstance?.dateInscription}">
				<li class="fieldcontain">
					<span id="dateInscription-label" class="property-label"><g:message code="prospect.dateInscription.label" default="Date Inscription" /></span>
					
						<span class="property-value" aria-labelledby="dateInscription-label"><g:formatDate date="${prospectInstance?.dateInscription}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:prospectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${prospectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
