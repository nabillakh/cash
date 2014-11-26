import compte.Liasse
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_liasse_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/liasse/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: liasseInstance, field: 'annee', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("liasse.annee.label"),'default':("Annee")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['name':("annee"),'value':(fieldValue(bean: liasseInstance, field: 'annee')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: liasseInstance, field: 'bilan', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("liasse.bilan.label"),'default':("Bilan")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("bilan"),'name':("bilan.id"),'from':(compte.BilanSimplifie.list()),'optionKey':("id"),'required':(""),'value':(liasseInstance?.bilan?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: liasseInstance, field: 'chiffresCles', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("liasse.chiffresCles.label"),'default':("Chiffres Cles")],-1)
printHtmlPart(2)
invokeTag('select','g',28,['id':("chiffresCles"),'name':("chiffresCles.id"),'from':(compte.ChiffreCle.list()),'optionKey':("id"),'required':(""),'value':(liasseInstance?.chiffresCles?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: liasseInstance, field: 'cres', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("liasse.cres.label"),'default':("Cres")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("cres"),'name':("cres.id"),'from':(compte.Cres.list()),'optionKey':("id"),'required':(""),'value':(liasseInstance?.cres?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: liasseInstance, field: 'entreprise', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("liasse.entreprise.label"),'default':("Entreprise")],-1)
printHtmlPart(2)
invokeTag('select','g',46,['id':("entreprise"),'name':("entreprise.id"),'from':(entreprises.Entreprise.list()),'optionKey':("id"),'required':(""),'value':(liasseInstance?.entreprise?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: liasseInstance, field: 'ratio', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("liasse.ratio.label"),'default':("Ratio")],-1)
printHtmlPart(2)
invokeTag('select','g',55,['id':("ratio"),'name':("ratio.id"),'from':(compte.Ratios.list()),'optionKey':("id"),'required':(""),'value':(liasseInstance?.ratio?.id),'class':("many-to-one")],-1)
printHtmlPart(9)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416838089398L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
