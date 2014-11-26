
<%@ page import="compte.ChiffreCle" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'chiffreCle.label', default: 'ChiffreCle')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-chiffreCle" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-chiffreCle" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="capaciteAutofinancement" title="${message(code: 'chiffreCle.capaciteAutofinancement.label', default: 'Capacite Autofinancement')}" />
					
						<g:sortableColumn property="liquiditeReduite" title="${message(code: 'chiffreCle.liquiditeReduite.label', default: 'Liquidite Reduite')}" />
					
						<g:sortableColumn property="performance" title="${message(code: 'chiffreCle.performance.label', default: 'Performance')}" />
					
						<g:sortableColumn property="rendementCapitauxPropres" title="${message(code: 'chiffreCle.rendementCapitauxPropres.label', default: 'Rendement Capitaux Propres')}" />
					
						<g:sortableColumn property="rendementCapitalInvesti" title="${message(code: 'chiffreCle.rendementCapitalInvesti.label', default: 'Rendement Capital Investi')}" />
					
						<g:sortableColumn property="solvabilite" title="${message(code: 'chiffreCle.solvabilite.label', default: 'Solvabilite')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${chiffreCleInstanceList}" status="i" var="chiffreCleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${chiffreCleInstance.id}">${fieldValue(bean: chiffreCleInstance, field: "capaciteAutofinancement")}</g:link></td>
					
						<td>${fieldValue(bean: chiffreCleInstance, field: "liquiditeReduite")}</td>
					
						<td>${fieldValue(bean: chiffreCleInstance, field: "performance")}</td>
					
						<td>${fieldValue(bean: chiffreCleInstance, field: "rendementCapitauxPropres")}</td>
					
						<td>${fieldValue(bean: chiffreCleInstance, field: "rendementCapitalInvesti")}</td>
					
						<td>${fieldValue(bean: chiffreCleInstance, field: "solvabilite")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${chiffreCleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
