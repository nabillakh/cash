import compte.ChiffreCle
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_chiffreCle_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/chiffreCle/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: chiffreCleInstance, field: 'capaciteAutofinancement', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("chiffreCle.capaciteAutofinancement.label"),'default':("Capacite Autofinancement")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['name':("capaciteAutofinancement"),'value':(fieldValue(bean: chiffreCleInstance, field: 'capaciteAutofinancement'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: chiffreCleInstance, field: 'liquiditeReduite', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("chiffreCle.liquiditeReduite.label"),'default':("Liquidite Reduite")],-1)
printHtmlPart(2)
invokeTag('field','g',19,['name':("liquiditeReduite"),'value':(fieldValue(bean: chiffreCleInstance, field: 'liquiditeReduite'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: chiffreCleInstance, field: 'performance', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("chiffreCle.performance.label"),'default':("Performance")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['name':("performance"),'value':(fieldValue(bean: chiffreCleInstance, field: 'performance'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: chiffreCleInstance, field: 'rendementCapitauxPropres', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("chiffreCle.rendementCapitauxPropres.label"),'default':("Rendement Capitaux Propres")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("rendementCapitauxPropres"),'value':(fieldValue(bean: chiffreCleInstance, field: 'rendementCapitauxPropres'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: chiffreCleInstance, field: 'rendementCapitalInvesti', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("chiffreCle.rendementCapitalInvesti.label"),'default':("Rendement Capital Investi")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("rendementCapitalInvesti"),'value':(fieldValue(bean: chiffreCleInstance, field: 'rendementCapitalInvesti'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: chiffreCleInstance, field: 'solvabilite', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("chiffreCle.solvabilite.label"),'default':("Solvabilite")],-1)
printHtmlPart(2)
invokeTag('field','g',55,['name':("solvabilite"),'value':(fieldValue(bean: chiffreCleInstance, field: 'solvabilite'))],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: chiffreCleInstance, field: 'effectifs', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("chiffreCle.effectifs.label"),'default':("Effectifs")],-1)
printHtmlPart(2)
invokeTag('field','g',64,['name':("effectifs"),'value':(fieldValue(bean: chiffreCleInstance, field: 'effectifs'))],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416838871552L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
