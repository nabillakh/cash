import entreprises.Entreprise
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_entreprise_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/entreprise/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'mesLiasses', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("entreprise.mesLiasses.label"),'default':("Mes Liasses")],-1)
printHtmlPart(2)
for( m in (entrepriseInstance?.mesLiasses) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(m?.encodeAsHTML())
})
invokeTag('link','g',13,['controller':("liasse"),'action':("show"),'id':(m.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'liasse.label', default: 'Liasse')]))
})
invokeTag('link','g',16,['controller':("liasse"),'action':("create"),'params':(['entreprise.id': entrepriseInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'siren', 'error'))
printHtmlPart(7)
invokeTag('message','g',25,['code':("entreprise.siren.label"),'default':("Siren")],-1)
printHtmlPart(8)
invokeTag('textField','g',28,['name':("siren"),'value':(entrepriseInstance?.siren)],-1)
printHtmlPart(9)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'clients', 'error'))
printHtmlPart(10)
invokeTag('message','g',34,['code':("entreprise.clients.label"),'default':("Clients")],-1)
printHtmlPart(2)
for( c in (entrepriseInstance?.clients) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(c?.encodeAsHTML())
})
invokeTag('link','g',40,['controller':("fournisseur"),'action':("show"),'id':(c.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'fournisseur.label', default: 'Fournisseur')]))
})
invokeTag('link','g',43,['controller':("fournisseur"),'action':("create"),'params':(['entreprise.id': entrepriseInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'fournisseurs', 'error'))
printHtmlPart(11)
invokeTag('message','g',52,['code':("entreprise.fournisseurs.label"),'default':("Fournisseurs")],-1)
printHtmlPart(2)
for( f in (entrepriseInstance?.fournisseurs) ) {
printHtmlPart(3)
createTagBody(2, {->
expressionOut.print(f?.encodeAsHTML())
})
invokeTag('link','g',58,['controller':("fournisseur"),'action':("show"),'id':(f.id)],2)
printHtmlPart(4)
}
printHtmlPart(5)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'fournisseur.label', default: 'Fournisseur')]))
})
invokeTag('link','g',61,['controller':("fournisseur"),'action':("create"),'params':(['entreprise.id': entrepriseInstance?.id])],1)
printHtmlPart(6)
expressionOut.print(hasErrors(bean: entrepriseInstance, field: 'nom', 'error'))
printHtmlPart(12)
invokeTag('message','g',70,['code':("entreprise.nom.label"),'default':("Nom")],-1)
printHtmlPart(8)
invokeTag('textField','g',73,['name':("nom"),'value':(entrepriseInstance?.nom)],-1)
printHtmlPart(13)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416824767173L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
