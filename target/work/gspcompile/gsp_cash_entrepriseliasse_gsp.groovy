import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_entrepriseliasse_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/entreprise/liasse.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
loop:{
int k = 0
for( annee in (annees) ) {
printHtmlPart(1)
expressionOut.print(k)
printHtmlPart(2)
expressionOut.print(annee.liasse)
printHtmlPart(3)
if(true && (annee.actif)) {
printHtmlPart(4)
expressionOut.print(annee.liasse)
printHtmlPart(5)
expressionOut.print(k)
printHtmlPart(6)
expressionOut.print(Math.round(annee.annee))
printHtmlPart(7)
expressionOut.print(k)
printHtmlPart(8)
}
else {
printHtmlPart(9)
expressionOut.print(k)
printHtmlPart(10)
expressionOut.print(Math.round(annee.annee))
printHtmlPart(11)
}
printHtmlPart(12)
expressionOut.print(k)
printHtmlPart(13)
expressionOut.print(k)
printHtmlPart(14)
expressionOut.print(annee.liasse)
printHtmlPart(15)
expressionOut.print(k)
printHtmlPart(16)
expressionOut.print(annee.annee)
printHtmlPart(17)
expressionOut.print(k)
printHtmlPart(18)
invokeTag('remoteFunction','g',26,['controller':("liasse"),'action':("liasseAnnuelle"),'params':("\'liasseInstance=\'+liasse"),'update':("maLiasse")],-1)
printHtmlPart(19)
k++
}
}
printHtmlPart(20)
invokeTag('remoteFunction','g',39,['controller':("liasse"),'action':("liasseAnnuelle"),'params':("\'liasseInstance=\'+liasse"),'update':("maLiasse")],-1)
printHtmlPart(21)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1417016535368L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
