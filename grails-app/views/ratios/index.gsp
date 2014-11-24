
<%@ page import="compte.Ratios" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ratios.label', default: 'Ratios')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ratios" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ratios" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="rendementCapitauxPropres" title="${message(code: 'ratios.rendementCapitauxPropres.label', default: 'Rendement Capitaux Propres')}" />
					
						<g:sortableColumn property="rendementCapitalInvesti" title="${message(code: 'ratios.rendementCapitalInvesti.label', default: 'Rendement Capital Investi')}" />
					
						<g:sortableColumn property="retourSurActif" title="${message(code: 'ratios.retourSurActif.label', default: 'Retour Sur Actif')}" />
					
						<g:sortableColumn property="roce" title="${message(code: 'ratios.roce.label', default: 'Roce')}" />
					
						<g:sortableColumn property="performance" title="${message(code: 'ratios.performance.label', default: 'Performance')}" />
					
						<g:sortableColumn property="margeCommercialeBrute" title="${message(code: 'ratios.margeCommercialeBrute.label', default: 'Marge Commerciale Brute')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ratiosInstanceList}" status="i" var="ratiosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ratiosInstance.id}">${fieldValue(bean: ratiosInstance, field: "rendementCapitauxPropres")}</g:link></td>
					
						<td>${fieldValue(bean: ratiosInstance, field: "rendementCapitalInvesti")}</td>
					
						<td>${fieldValue(bean: ratiosInstance, field: "retourSurActif")}</td>
					
						<td>${fieldValue(bean: ratiosInstance, field: "roce")}</td>
					
						<td>${fieldValue(bean: ratiosInstance, field: "performance")}</td>
					
						<td>${fieldValue(bean: ratiosInstance, field: "margeCommercialeBrute")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ratiosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
