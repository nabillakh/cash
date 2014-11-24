<%@ page import="contact.Prospect" %>



<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'message', 'error')} ">
	<label for="message">
		<g:message code="prospect.message.label" default="Message" />
		
	</label>
	<g:textField name="message" value="${prospectInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="prospect.mail.label" default="Mail" />
		
	</label>
	<g:textField name="mail" value="${prospectInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prospectInstance, field: 'dateInscription', 'error')} required">
	<label for="dateInscription">
		<g:message code="prospect.dateInscription.label" default="Date Inscription" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateInscription" precision="day"  value="${prospectInstance?.dateInscription}"  />

</div>

