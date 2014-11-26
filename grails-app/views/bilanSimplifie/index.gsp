
<%@ page import="compte.BilanSimplifie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bilanSimplifie.label', default: 'BilanSimplifie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bilanSimplifie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bilanSimplifie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="immobilisationsIncorporelles" title="${message(code: 'bilanSimplifie.immobilisationsIncorporelles.label', default: 'Immobilisations Incorporelles')}" />
					
						<g:sortableColumn property="immobilisationsCorporelles" title="${message(code: 'bilanSimplifie.immobilisationsCorporelles.label', default: 'Immobilisations Corporelles')}" />
					
						<g:sortableColumn property="autresActifsImmobilises" title="${message(code: 'bilanSimplifie.autresActifsImmobilises.label', default: 'Autres Actifs Immobilises')}" />
					
						<g:sortableColumn property="stock" title="${message(code: 'bilanSimplifie.stock.label', default: 'Stock')}" />
					
						<g:sortableColumn property="creances" title="${message(code: 'bilanSimplifie.creances.label', default: 'Creances')}" />
					
						<g:sortableColumn property="autresActifsCirculants" title="${message(code: 'bilanSimplifie.autresActifsCirculants.label', default: 'Autres Actifs Circulants')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bilanSimplifieInstanceList}" status="i" var="bilanSimplifieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bilanSimplifieInstance.id}">${fieldValue(bean: bilanSimplifieInstance, field: "immobilisationsIncorporelles")}</g:link></td>
					
						<td>${fieldValue(bean: bilanSimplifieInstance, field: "immobilisationsCorporelles")}</td>
					
						<td>${fieldValue(bean: bilanSimplifieInstance, field: "autresActifsImmobilises")}</td>
					
						<td>${fieldValue(bean: bilanSimplifieInstance, field: "stock")}</td>
					
						<td>${fieldValue(bean: bilanSimplifieInstance, field: "creances")}</td>
					
						<td>${fieldValue(bean: bilanSimplifieInstance, field: "autresActifsCirculants")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bilanSimplifieInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
