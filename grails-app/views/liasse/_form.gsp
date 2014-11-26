<%@ page import="compte.Liasse" %>



<div class="fieldcontain ${hasErrors(bean: liasseInstance, field: 'annee', 'error')} required">
	<label for="annee">
		<g:message code="liasse.annee.label" default="Annee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="annee" value="${fieldValue(bean: liasseInstance, field: 'annee')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: liasseInstance, field: 'bilan', 'error')} required">
	<label for="bilan">
		<g:message code="liasse.bilan.label" default="Bilan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="bilan" name="bilan.id" from="${compte.BilanSimplifie.list()}" optionKey="id" required="" value="${liasseInstance?.bilan?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: liasseInstance, field: 'chiffresCles', 'error')} required">
	<label for="chiffresCles">
		<g:message code="liasse.chiffresCles.label" default="Chiffres Cles" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="chiffresCles" name="chiffresCles.id" from="${compte.ChiffreCle.list()}" optionKey="id" required="" value="${liasseInstance?.chiffresCles?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: liasseInstance, field: 'cres', 'error')} required">
	<label for="cres">
		<g:message code="liasse.cres.label" default="Cres" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cres" name="cres.id" from="${compte.Cres.list()}" optionKey="id" required="" value="${liasseInstance?.cres?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: liasseInstance, field: 'entreprise', 'error')} required">
	<label for="entreprise">
		<g:message code="liasse.entreprise.label" default="Entreprise" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="entreprise" name="entreprise.id" from="${entreprises.Entreprise.list()}" optionKey="id" required="" value="${liasseInstance?.entreprise?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: liasseInstance, field: 'ratio', 'error')} required">
	<label for="ratio">
		<g:message code="liasse.ratio.label" default="Ratio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ratio" name="ratio.id" from="${compte.Ratios.list()}" optionKey="id" required="" value="${liasseInstance?.ratio?.id}" class="many-to-one"/>

</div>

