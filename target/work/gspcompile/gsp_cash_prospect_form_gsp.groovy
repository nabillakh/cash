import contact.Prospect
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_prospect_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/prospect/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: prospectInstance, field: 'message', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("prospect.message.label"),'default':("Message")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("message"),'value':(prospectInstance?.message)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: prospectInstance, field: 'mail', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("prospect.mail.label"),'default':("Mail")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("mail"),'value':(prospectInstance?.mail)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: prospectInstance, field: 'dateInscription', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("prospect.dateInscription.label"),'default':("Date Inscription")],-1)
printHtmlPart(6)
invokeTag('datePicker','g',28,['name':("dateInscription"),'precision':("day"),'value':(prospectInstance?.dateInscription)],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416593058644L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
