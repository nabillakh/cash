
<%@ page import="compte.Liasse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'liasse.label', default: 'Liasse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-liasse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-liasse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="annee" title="${message(code: 'liasse.annee.label', default: 'Annee')}" />
					
						<th><g:message code="liasse.bilan.label" default="Bilan" /></th>
					
						<th><g:message code="liasse.chiffresCles.label" default="Chiffres Cles" /></th>
					
						<th><g:message code="liasse.cres.label" default="Cres" /></th>
					
						<th><g:message code="liasse.entreprise.label" default="Entreprise" /></th>
					
						<th><g:message code="liasse.ratio.label" default="Ratio" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${liasseInstanceList}" status="i" var="liasseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${liasseInstance.id}">${fieldValue(bean: liasseInstance, field: "annee")}</g:link></td>
					
						<td>${fieldValue(bean: liasseInstance, field: "bilan")}</td>
					
						<td>${fieldValue(bean: liasseInstance, field: "chiffresCles")}</td>
					
						<td>${fieldValue(bean: liasseInstance, field: "cres")}</td>
					
						<td>${fieldValue(bean: liasseInstance, field: "entreprise")}</td>
					
						<td>${fieldValue(bean: liasseInstance, field: "ratio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${liasseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
