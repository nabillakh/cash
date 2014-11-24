<%@ page import="referentiel.Indicateur" %>



<div class="fieldcontain ${hasErrors(bean: indicateurInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="indicateur.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${indicateurInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: indicateurInstance, field: 'definition', 'error')} ">
	<label for="definition">
		<g:message code="indicateur.definition.label" default="Definition" />
		
	</label>
	<g:textField name="definition" value="${indicateurInstance?.definition}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: indicateurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="indicateur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${indicateurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: indicateurInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="indicateur.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" value="${fieldValue(bean: indicateurInstance, field: 'numero')}" required=""/>

</div>

