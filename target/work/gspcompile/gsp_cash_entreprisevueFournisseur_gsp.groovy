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
loop:{
int k = 0
for( ind in (liste) ) {
printHtmlPart(1)
if(true && (ind.risque == "FORT")) {
printHtmlPart(2)
}
else {
printHtmlPart(1)
if(true && (ind.risque == "MODERE")) {
printHtmlPart(3)
}
else {
printHtmlPart(4)
}
printHtmlPart(1)
}
printHtmlPart(5)
expressionOut.print(ind.nom)
printHtmlPart(6)
expressionOut.print(ind.risque)
printHtmlPart(7)
expressionOut.print((ind.explication))
printHtmlPart(8)
expressionOut.print(k)
printHtmlPart(9)
expressionOut.print(k)
printHtmlPart(10)
expressionOut.print(k)
printHtmlPart(11)
expressionOut.print(k)
printHtmlPart(12)
expressionOut.print(k)
printHtmlPart(13)
expressionOut.print(k)
printHtmlPart(14)
expressionOut.print(k)
printHtmlPart(15)
expressionOut.print(k)
printHtmlPart(16)
expressionOut.print(k)
printHtmlPart(17)
k++
}
}
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416995738175L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
