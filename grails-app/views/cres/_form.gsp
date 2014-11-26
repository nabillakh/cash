<%@ page import="compte.Cres" %>



<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'chiffreAffaires', 'error')} ">
	<label for="chiffreAffaires">
		<g:message code="cres.chiffreAffaires.label" default="Chiffre Affaires" />
		
	</label>
	<g:field name="chiffreAffaires" value="${fieldValue(bean: cresInstance, field: 'chiffreAffaires')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'chiffreAffairesNet', 'error')} ">
	<label for="chiffreAffairesNet">
		<g:message code="cres.chiffreAffairesNet.label" default="Chiffre Affaires Net" />
		
	</label>
	<g:field name="chiffreAffairesNet" value="${fieldValue(bean: cresInstance, field: 'chiffreAffairesNet')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'coutVentes', 'error')} ">
	<label for="coutVentes">
		<g:message code="cres.coutVentes.label" default="Cout Ventes" />
		
	</label>
	<g:field name="coutVentes" value="${fieldValue(bean: cresInstance, field: 'coutVentes')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'margeBrute', 'error')} ">
	<label for="margeBrute">
		<g:message code="cres.margeBrute.label" default="Marge Brute" />
		
	</label>
	<g:field name="margeBrute" value="${fieldValue(bean: cresInstance, field: 'margeBrute')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'autresChargesExploitations', 'error')} ">
	<label for="autresChargesExploitations">
		<g:message code="cres.autresChargesExploitations.label" default="Autres Charges Exploitations" />
		
	</label>
	<g:field name="autresChargesExploitations" value="${fieldValue(bean: cresInstance, field: 'autresChargesExploitations')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'resultatExploitation', 'error')} ">
	<label for="resultatExploitation">
		<g:message code="cres.resultatExploitation.label" default="Resultat Exploitation" />
		
	</label>
	<g:field name="resultatExploitation" value="${fieldValue(bean: cresInstance, field: 'resultatExploitation')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'produitsFinanciers', 'error')} ">
	<label for="produitsFinanciers">
		<g:message code="cres.produitsFinanciers.label" default="Produits Financiers" />
		
	</label>
	<g:field name="produitsFinanciers" value="${fieldValue(bean: cresInstance, field: 'produitsFinanciers')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'chargesFinancieres', 'error')} ">
	<label for="chargesFinancieres">
		<g:message code="cres.chargesFinancieres.label" default="Charges Financieres" />
		
	</label>
	<g:field name="chargesFinancieres" value="${fieldValue(bean: cresInstance, field: 'chargesFinancieres')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'resultatFinancier', 'error')} ">
	<label for="resultatFinancier">
		<g:message code="cres.resultatFinancier.label" default="Resultat Financier" />
		
	</label>
	<g:field name="resultatFinancier" value="${fieldValue(bean: cresInstance, field: 'resultatFinancier')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'resultatCourantAvantImpot', 'error')} ">
	<label for="resultatCourantAvantImpot">
		<g:message code="cres.resultatCourantAvantImpot.label" default="Resultat Courant Avant Impot" />
		
	</label>
	<g:field name="resultatCourantAvantImpot" value="${fieldValue(bean: cresInstance, field: 'resultatCourantAvantImpot')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'impotsTaxes', 'error')} ">
	<label for="impotsTaxes">
		<g:message code="cres.impotsTaxes.label" default="Impots Taxes" />
		
	</label>
	<g:field name="impotsTaxes" value="${fieldValue(bean: cresInstance, field: 'impotsTaxes')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'resultatApresImpot', 'error')} ">
	<label for="resultatApresImpot">
		<g:message code="cres.resultatApresImpot.label" default="Resultat Apres Impot" />
		
	</label>
	<g:field name="resultatApresImpot" value="${fieldValue(bean: cresInstance, field: 'resultatApresImpot')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'produitsExceptionnels', 'error')} ">
	<label for="produitsExceptionnels">
		<g:message code="cres.produitsExceptionnels.label" default="Produits Exceptionnels" />
		
	</label>
	<g:field name="produitsExceptionnels" value="${fieldValue(bean: cresInstance, field: 'produitsExceptionnels')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'chargesExceptionnelles', 'error')} ">
	<label for="chargesExceptionnelles">
		<g:message code="cres.chargesExceptionnelles.label" default="Charges Exceptionnelles" />
		
	</label>
	<g:field name="chargesExceptionnelles" value="${fieldValue(bean: cresInstance, field: 'chargesExceptionnelles')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'resultatExceptionnel', 'error')} ">
	<label for="resultatExceptionnel">
		<g:message code="cres.resultatExceptionnel.label" default="Resultat Exceptionnel" />
		
	</label>
	<g:field name="resultatExceptionnel" value="${fieldValue(bean: cresInstance, field: 'resultatExceptionnel')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cresInstance, field: 'resultat', 'error')} ">
	<label for="resultat">
		<g:message code="cres.resultat.label" default="Resultat" />
		
	</label>
	<g:field name="resultat" value="${fieldValue(bean: cresInstance, field: 'resultat')}"/>

</div>

