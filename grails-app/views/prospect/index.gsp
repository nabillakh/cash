
<%@ page import="contact.Prospect" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prospect.label', default: 'Prospect')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prospect" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prospect" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="message" title="${message(code: 'prospect.message.label', default: 'Message')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'prospect.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="dateInscription" title="${message(code: 'prospect.dateInscription.label', default: 'Date Inscription')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prospectInstanceList}" status="i" var="prospectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prospectInstance.id}">${fieldValue(bean: prospectInstance, field: "message")}</g:link></td>
					
						<td>${fieldValue(bean: prospectInstance, field: "mail")}</td>
					
						<td><g:formatDate date="${prospectInstance.dateInscription}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prospectInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
