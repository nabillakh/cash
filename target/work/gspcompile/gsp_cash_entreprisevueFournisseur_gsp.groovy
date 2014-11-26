import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_entreprisevueFournisseur_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/entreprise/vueFournisseur.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(1)
invokeTag('javascript','g',7,['library':("jquery"),'plugin':("jquery")],-1)
printHtmlPart(3)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("Partenaire de la tésorerie des PME")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',13,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("keywords"),'content':("Trésorerie, cash, bfr, PME, LBO, Liquidation")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("Nabil Lakhmissi")],-1)
printHtmlPart(4)
expressionOut.print(request.contextPath)
printHtmlPart(5)
expressionOut.print(request.contextPath)
printHtmlPart(6)
expressionOut.print(request.contextPath)
printHtmlPart(7)
expressionOut.print(request.contextPath)
printHtmlPart(8)
expressionOut.print(request.contextPath)
printHtmlPart(9)
expressionOut.print(request.contextPath)
printHtmlPart(10)
})
invokeTag('captureHead','sitemesh',49,[:],1)
printHtmlPart(11)
createTagBody(1, {->
printHtmlPart(12)
expressionOut.print(entrepriseInstance.nom)
printHtmlPart(13)
loop:{
int k = 0
for( ind in (liste) ) {
printHtmlPart(14)
expressionOut.print(k)
printHtmlPart(15)
expressionOut.print(k)
printHtmlPart(16)
expressionOut.print(ind.nom)
printHtmlPart(17)
expressionOut.print(ind.risque)
printHtmlPart(18)
expressionOut.print(k)
printHtmlPart(19)
expressionOut.print(k)
printHtmlPart(20)
expressionOut.print((ind.explication))
printHtmlPart(21)
expressionOut.print(k)
printHtmlPart(22)
expressionOut.print(k)
printHtmlPart(23)
expressionOut.print(k)
printHtmlPart(24)
expressionOut.print(ind.mesure)
printHtmlPart(25)
expressionOut.print(k)
printHtmlPart(26)
expressionOut.print(k)
printHtmlPart(27)
expressionOut.print(k)
printHtmlPart(28)
expressionOut.print(k)
printHtmlPart(29)
expressionOut.print(k)
printHtmlPart(30)
expressionOut.print(k)
printHtmlPart(31)
expressionOut.print(ind.mesure)
printHtmlPart(32)
k++
}
}
printHtmlPart(33)
expressionOut.print(request.contextPath)
printHtmlPart(34)
expressionOut.print(request.contextPath)
printHtmlPart(35)
expressionOut.print(request.contextPath)
printHtmlPart(36)
expressionOut.print(request.contextPath)
printHtmlPart(37)
expressionOut.print(request.contextPath)
printHtmlPart(38)
expressionOut.print(request.contextPath)
printHtmlPart(39)
expressionOut.print(request.contextPath)
printHtmlPart(40)
expressionOut.print(request.contextPath)
printHtmlPart(41)
expressionOut.print(request.contextPath)
printHtmlPart(42)
expressionOut.print(request.contextPath)
printHtmlPart(43)
})
invokeTag('captureBody','sitemesh',290,['class':("home-page")],1)
printHtmlPart(44)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416918320893L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
