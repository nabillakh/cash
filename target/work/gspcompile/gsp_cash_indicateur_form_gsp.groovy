import referentiel.Indicateur
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_indicateur_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/indicateur/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: indicateurInstance, field: 'code', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("indicateur.code.label"),'default':("Code")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("code"),'value':(indicateurInstance?.code)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: indicateurInstance, field: 'definition', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("indicateur.definition.label"),'default':("Definition")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("definition"),'value':(indicateurInstance?.definition)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: indicateurInstance, field: 'nom', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("indicateur.nom.label"),'default':("Nom")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("nom"),'value':(indicateurInstance?.nom)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: indicateurInstance, field: 'numero', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("indicateur.numero.label"),'default':("Numero")],-1)
printHtmlPart(7)
invokeTag('field','g',37,['name':("numero"),'value':(fieldValue(bean: indicateurInstance, field: 'numero')),'required':("")],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1415697570456L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
