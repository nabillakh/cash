
<%@ page import="compte.Cres" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cres.label', default: 'Cres')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cres" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cres" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="chiffreAffaires" title="${message(code: 'cres.chiffreAffaires.label', default: 'Chiffre Affaires')}" />
					
						<g:sortableColumn property="chiffreAffairesNet" title="${message(code: 'cres.chiffreAffairesNet.label', default: 'Chiffre Affaires Net')}" />
					
						<g:sortableColumn property="coutVentes" title="${message(code: 'cres.coutVentes.label', default: 'Cout Ventes')}" />
					
						<g:sortableColumn property="margeBrute" title="${message(code: 'cres.margeBrute.label', default: 'Marge Brute')}" />
					
						<g:sortableColumn property="autresChargesExploitations" title="${message(code: 'cres.autresChargesExploitations.label', default: 'Autres Charges Exploitations')}" />
					
						<g:sortableColumn property="resultatExploitation" title="${message(code: 'cres.resultatExploitation.label', default: 'Resultat Exploitation')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cresInstanceList}" status="i" var="cresInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cresInstance.id}">${fieldValue(bean: cresInstance, field: "chiffreAffaires")}</g:link></td>
					
						<td>${fieldValue(bean: cresInstance, field: "chiffreAffairesNet")}</td>
					
						<td>${fieldValue(bean: cresInstance, field: "coutVentes")}</td>
					
						<td>${fieldValue(bean: cresInstance, field: "margeBrute")}</td>
					
						<td>${fieldValue(bean: cresInstance, field: "autresChargesExploitations")}</td>
					
						<td>${fieldValue(bean: cresInstance, field: "resultatExploitation")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cresInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
