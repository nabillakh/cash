
<%@ page import="entreprises.Entreprise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entreprise.label', default: 'Entreprise')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-entreprise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-entreprise" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="siren" title="${message(code: 'entreprise.siren.label', default: 'Siren')}" />
					
						<g:sortableColumn property="nom" title="${message(code: 'entreprise.nom.label', default: 'Nom')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${entrepriseInstanceList}" status="i" var="entrepriseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${entrepriseInstance.id}">${fieldValue(bean: entrepriseInstance, field: "siren")}</g:link></td>
					
						<td>${fieldValue(bean: entrepriseInstance, field: "nom")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${entrepriseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
