import compte.BilanSimplifie
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_bilanSimplifieindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/bilanSimplifie/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'bilanSimplifie.label', default: 'BilanSimplifie'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("create"),'action':("create")],2)
printHtmlPart(8)
invokeTag('message','g',19,['code':("default.list.label"),'args':([entityName])],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
invokeTag('sortableColumn','g',27,['property':("immobilisationsIncorporelles"),'title':(message(code: 'bilanSimplifie.immobilisationsIncorporelles.label', default: 'Immobilisations Incorporelles'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',29,['property':("immobilisationsCorporelles"),'title':(message(code: 'bilanSimplifie.immobilisationsCorporelles.label', default: 'Immobilisations Corporelles'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',31,['property':("autresActifsImmobilises"),'title':(message(code: 'bilanSimplifie.autresActifsImmobilises.label', default: 'Autres Actifs Immobilises'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',33,['property':("stock"),'title':(message(code: 'bilanSimplifie.stock.label', default: 'Stock'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',35,['property':("creances"),'title':(message(code: 'bilanSimplifie.creances.label', default: 'Creances'))],-1)
printHtmlPart(13)
invokeTag('sortableColumn','g',37,['property':("autresActifsCirculants"),'title':(message(code: 'bilanSimplifie.autresActifsCirculants.label', default: 'Autres Actifs Circulants'))],-1)
printHtmlPart(14)
loop:{
int i = 0
for( bilanSimplifieInstance in (bilanSimplifieInstanceList) ) {
printHtmlPart(15)
expressionOut.print((i % 2) == 0 ? 'even' : 'odd')
printHtmlPart(16)
createTagBody(3, {->
expressionOut.print(fieldValue(bean: bilanSimplifieInstance, field: "immobilisationsIncorporelles"))
})
invokeTag('link','g',45,['action':("show"),'id':(bilanSimplifieInstance.id)],3)
printHtmlPart(17)
expressionOut.print(fieldValue(bean: bilanSimplifieInstance, field: "immobilisationsCorporelles"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: bilanSimplifieInstance, field: "autresActifsImmobilises"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: bilanSimplifieInstance, field: "stock"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: bilanSimplifieInstance, field: "creances"))
printHtmlPart(17)
expressionOut.print(fieldValue(bean: bilanSimplifieInstance, field: "autresActifsCirculants"))
printHtmlPart(18)
i++
}
}
printHtmlPart(19)
invokeTag('paginate','g',62,['total':(bilanSimplifieInstanceCount ?: 0)],-1)
printHtmlPart(20)
})
invokeTag('captureBody','sitemesh',65,[:],1)
printHtmlPart(21)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416838749573L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
