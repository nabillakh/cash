<%@ page import="compte.ChiffreCle" %>



<div class="fieldcontain ${hasErrors(bean: chiffreCleInstance, field: 'capaciteAutofinancement', 'error')} ">
	<label for="capaciteAutofinancement">
		<g:message code="chiffreCle.capaciteAutofinancement.label" default="Capacite Autofinancement" />
		
	</label>
	<g:field name="capaciteAutofinancement" value="${fieldValue(bean: chiffreCleInstance, field: 'capaciteAutofinancement')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chiffreCleInstance, field: 'liquiditeReduite', 'error')} ">
	<label for="liquiditeReduite">
		<g:message code="chiffreCle.liquiditeReduite.label" default="Liquidite Reduite" />
		
	</label>
	<g:field name="liquiditeReduite" value="${fieldValue(bean: chiffreCleInstance, field: 'liquiditeReduite')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chiffreCleInstance, field: 'performance', 'error')} ">
	<label for="performance">
		<g:message code="chiffreCle.performance.label" default="Performance" />
		
	</label>
	<g:field name="performance" value="${fieldValue(bean: chiffreCleInstance, field: 'performance')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chiffreCleInstance, field: 'rendementCapitauxPropres', 'error')} ">
	<label for="rendementCapitauxPropres">
		<g:message code="chiffreCle.rendementCapitauxPropres.label" default="Rendement Capitaux Propres" />
		
	</label>
	<g:field name="rendementCapitauxPropres" value="${fieldValue(bean: chiffreCleInstance, field: 'rendementCapitauxPropres')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chiffreCleInstance, field: 'rendementCapitalInvesti', 'error')} ">
	<label for="rendementCapitalInvesti">
		<g:message code="chiffreCle.rendementCapitalInvesti.label" default="Rendement Capital Investi" />
		
	</label>
	<g:field name="rendementCapitalInvesti" value="${fieldValue(bean: chiffreCleInstance, field: 'rendementCapitalInvesti')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chiffreCleInstance, field: 'solvabilite', 'error')} ">
	<label for="solvabilite">
		<g:message code="chiffreCle.solvabilite.label" default="Solvabilite" />
		
	</label>
	<g:field name="solvabilite" value="${fieldValue(bean: chiffreCleInstance, field: 'solvabilite')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: chiffreCleInstance, field: 'effectifs', 'error')} ">
	<label for="effectifs">
		<g:message code="chiffreCle.effectifs.label" default="Effectifs" />
		
	</label>
	<g:field name="effectifs" value="${fieldValue(bean: chiffreCleInstance, field: 'effectifs')}"/>

</div>

