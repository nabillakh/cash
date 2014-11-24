<%@ page import="entreprises.Entreprise" %>



<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'mesLiasses', 'error')} ">
	<label for="mesLiasses">
		<g:message code="entreprise.mesLiasses.label" default="Mes Liasses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entrepriseInstance?.mesLiasses?}" var="m">
    <li><g:link controller="liasse" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="liasse" action="create" params="['entreprise.id': entrepriseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'liasse.label', default: 'Liasse')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'siren', 'error')} ">
	<label for="siren">
		<g:message code="entreprise.siren.label" default="Siren" />
		
	</label>
	<g:textField name="siren" value="${entrepriseInstance?.siren}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'clients', 'error')} ">
	<label for="clients">
		<g:message code="entreprise.clients.label" default="Clients" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entrepriseInstance?.clients?}" var="c">
    <li><g:link controller="fournisseur" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="fournisseur" action="create" params="['entreprise.id': entrepriseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'fournisseur.label', default: 'Fournisseur')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'fournisseurs', 'error')} ">
	<label for="fournisseurs">
		<g:message code="entreprise.fournisseurs.label" default="Fournisseurs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entrepriseInstance?.fournisseurs?}" var="f">
    <li><g:link controller="fournisseur" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="fournisseur" action="create" params="['entreprise.id': entrepriseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'fournisseur.label', default: 'Fournisseur')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: entrepriseInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="entreprise.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${entrepriseInstance?.nom}"/>

</div>

