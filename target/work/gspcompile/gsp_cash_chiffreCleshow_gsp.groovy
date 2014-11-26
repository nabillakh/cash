import compte.ChiffreCle
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_chiffreCleshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/chiffreCle/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'chiffreCle.label', default: 'ChiffreCle'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
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
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (chiffreCleInstance?.capaciteAutofinancement)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("chiffreCle.capaciteAutofinancement.label"),'default':("Capacite Autofinancement")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(chiffreCleInstance),'field':("capaciteAutofinancement")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (chiffreCleInstance?.liquiditeReduite)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("chiffreCle.liquiditeReduite.label"),'default':("Liquidite Reduite")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(chiffreCleInstance),'field':("liquiditeReduite")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (chiffreCleInstance?.performance)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("chiffreCle.performance.label"),'default':("Performance")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(chiffreCleInstance),'field':("performance")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (chiffreCleInstance?.rendementCapitauxPropres)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("chiffreCle.rendementCapitauxPropres.label"),'default':("Rendement Capitaux Propres")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(chiffreCleInstance),'field':("rendementCapitauxPropres")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (chiffreCleInstance?.rendementCapitalInvesti)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("chiffreCle.rendementCapitalInvesti.label"),'default':("Rendement Capital Investi")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(chiffreCleInstance),'field':("rendementCapitalInvesti")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (chiffreCleInstance?.solvabilite)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("chiffreCle.solvabilite.label"),'default':("Solvabilite")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(chiffreCleInstance),'field':("solvabilite")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (chiffreCleInstance?.effectifs)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("chiffreCle.effectifs.label"),'default':("Effectifs")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(chiffreCleInstance),'field':("effectifs")],-1)
printHtmlPart(16)
}
printHtmlPart(30)
createTagBody(2, {->
printHtmlPart(31)
createTagBody(3, {->
invokeTag('message','g',92,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',92,['class':("edit"),'action':("edit"),'resource':(chiffreCleInstance)],3)
printHtmlPart(32)
invokeTag('actionSubmit','g',93,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(33)
})
invokeTag('form','g',95,['url':([resource:chiffreCleInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(34)
})
invokeTag('captureBody','sitemesh',97,[:],1)
printHtmlPart(35)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416838870718L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
