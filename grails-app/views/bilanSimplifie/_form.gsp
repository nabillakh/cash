<%@ page import="compte.BilanSimplifie" %>



<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'immobilisationsIncorporelles', 'error')} ">
	<label for="immobilisationsIncorporelles">
		<g:message code="bilanSimplifie.immobilisationsIncorporelles.label" default="Immobilisations Incorporelles" />
		
	</label>
	<g:field name="immobilisationsIncorporelles" value="${fieldValue(bean: bilanSimplifieInstance, field: 'immobilisationsIncorporelles')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'immobilisationsCorporelles', 'error')} ">
	<label for="immobilisationsCorporelles">
		<g:message code="bilanSimplifie.immobilisationsCorporelles.label" default="Immobilisations Corporelles" />
		
	</label>
	<g:field name="immobilisationsCorporelles" value="${fieldValue(bean: bilanSimplifieInstance, field: 'immobilisationsCorporelles')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'autresActifsImmobilises', 'error')} ">
	<label for="autresActifsImmobilises">
		<g:message code="bilanSimplifie.autresActifsImmobilises.label" default="Autres Actifs Immobilises" />
		
	</label>
	<g:field name="autresActifsImmobilises" value="${fieldValue(bean: bilanSimplifieInstance, field: 'autresActifsImmobilises')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'stock', 'error')} ">
	<label for="stock">
		<g:message code="bilanSimplifie.stock.label" default="Stock" />
		
	</label>
	<g:field name="stock" value="${fieldValue(bean: bilanSimplifieInstance, field: 'stock')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'creances', 'error')} ">
	<label for="creances">
		<g:message code="bilanSimplifie.creances.label" default="Creances" />
		
	</label>
	<g:field name="creances" value="${fieldValue(bean: bilanSimplifieInstance, field: 'creances')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'autresActifsCirculants', 'error')} ">
	<label for="autresActifsCirculants">
		<g:message code="bilanSimplifie.autresActifsCirculants.label" default="Autres Actifs Circulants" />
		
	</label>
	<g:field name="autresActifsCirculants" value="${fieldValue(bean: bilanSimplifieInstance, field: 'autresActifsCirculants')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'valeursDisponibles', 'error')} ">
	<label for="valeursDisponibles">
		<g:message code="bilanSimplifie.valeursDisponibles.label" default="Valeurs Disponibles" />
		
	</label>
	<g:field name="valeursDisponibles" value="${fieldValue(bean: bilanSimplifieInstance, field: 'valeursDisponibles')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'capital', 'error')} ">
	<label for="capital">
		<g:message code="bilanSimplifie.capital.label" default="Capital" />
		
	</label>
	<g:field name="capital" value="${fieldValue(bean: bilanSimplifieInstance, field: 'capital')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'autresCapitauxPropres', 'error')} ">
	<label for="autresCapitauxPropres">
		<g:message code="bilanSimplifie.autresCapitauxPropres.label" default="Autres Capitaux Propres" />
		
	</label>
	<g:field name="autresCapitauxPropres" value="${fieldValue(bean: bilanSimplifieInstance, field: 'autresCapitauxPropres')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'dettesLongTerme', 'error')} ">
	<label for="dettesLongTerme">
		<g:message code="bilanSimplifie.dettesLongTerme.label" default="Dettes Long Terme" />
		
	</label>
	<g:field name="dettesLongTerme" value="${fieldValue(bean: bilanSimplifieInstance, field: 'dettesLongTerme')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'autresDettesLongTerme', 'error')} ">
	<label for="autresDettesLongTerme">
		<g:message code="bilanSimplifie.autresDettesLongTerme.label" default="Autres Dettes Long Terme" />
		
	</label>
	<g:field name="autresDettesLongTerme" value="${fieldValue(bean: bilanSimplifieInstance, field: 'autresDettesLongTerme')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'provisionsPourRisquesCharges', 'error')} ">
	<label for="provisionsPourRisquesCharges">
		<g:message code="bilanSimplifie.provisionsPourRisquesCharges.label" default="Provisions Pour Risques Charges" />
		
	</label>
	<g:field name="provisionsPourRisquesCharges" value="${fieldValue(bean: bilanSimplifieInstance, field: 'provisionsPourRisquesCharges')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'empruntsCT', 'error')} ">
	<label for="empruntsCT">
		<g:message code="bilanSimplifie.empruntsCT.label" default="Emprunts CT" />
		
	</label>
	<g:field name="empruntsCT" value="${fieldValue(bean: bilanSimplifieInstance, field: 'empruntsCT')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'fournisseurs', 'error')} ">
	<label for="fournisseurs">
		<g:message code="bilanSimplifie.fournisseurs.label" default="Fournisseurs" />
		
	</label>
	<g:field name="fournisseurs" value="${fieldValue(bean: bilanSimplifieInstance, field: 'fournisseurs')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bilanSimplifieInstance, field: 'autresDCT', 'error')} ">
	<label for="autresDCT">
		<g:message code="bilanSimplifie.autresDCT.label" default="Autres DCT" />
		
	</label>
	<g:field name="autresDCT" value="${fieldValue(bean: bilanSimplifieInstance, field: 'autresDCT')}"/>

</div>

