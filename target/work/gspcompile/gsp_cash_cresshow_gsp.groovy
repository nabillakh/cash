import compte.Cres
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_cresshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/cres/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'cres.label', default: 'Cres'))],-1)
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
if(true && (cresInstance?.chiffreAffaires)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("cres.chiffreAffaires.label"),'default':("Chiffre Affaires")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(cresInstance),'field':("chiffreAffaires")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.chiffreAffairesNet)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("cres.chiffreAffairesNet.label"),'default':("Chiffre Affaires Net")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(cresInstance),'field':("chiffreAffairesNet")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.coutVentes)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("cres.coutVentes.label"),'default':("Cout Ventes")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(cresInstance),'field':("coutVentes")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.margeBrute)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("cres.margeBrute.label"),'default':("Marge Brute")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(cresInstance),'field':("margeBrute")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.autresChargesExploitations)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("cres.autresChargesExploitations.label"),'default':("Autres Charges Exploitations")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(cresInstance),'field':("autresChargesExploitations")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.resultatExploitation)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("cres.resultatExploitation.label"),'default':("Resultat Exploitation")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(cresInstance),'field':("resultatExploitation")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.produitsFinanciers)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("cres.produitsFinanciers.label"),'default':("Produits Financiers")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(cresInstance),'field':("produitsFinanciers")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.chargesFinancieres)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("cres.chargesFinancieres.label"),'default':("Charges Financieres")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(cresInstance),'field':("chargesFinancieres")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.resultatFinancier)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("cres.resultatFinancier.label"),'default':("Resultat Financier")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(cresInstance),'field':("resultatFinancier")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.resultatCourantAvantImpot)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("cres.resultatCourantAvantImpot.label"),'default':("Resultat Courant Avant Impot")],-1)
printHtmlPart(35)
invokeTag('fieldValue','g',111,['bean':(cresInstance),'field':("resultatCourantAvantImpot")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.impotsTaxes)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("cres.impotsTaxes.label"),'default':("Impots Taxes")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',120,['bean':(cresInstance),'field':("impotsTaxes")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.resultatApresImpot)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("cres.resultatApresImpot.label"),'default':("Resultat Apres Impot")],-1)
printHtmlPart(39)
invokeTag('fieldValue','g',129,['bean':(cresInstance),'field':("resultatApresImpot")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.produitsExceptionnels)) {
printHtmlPart(40)
invokeTag('message','g',136,['code':("cres.produitsExceptionnels.label"),'default':("Produits Exceptionnels")],-1)
printHtmlPart(41)
invokeTag('fieldValue','g',138,['bean':(cresInstance),'field':("produitsExceptionnels")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.chargesExceptionnelles)) {
printHtmlPart(42)
invokeTag('message','g',145,['code':("cres.chargesExceptionnelles.label"),'default':("Charges Exceptionnelles")],-1)
printHtmlPart(43)
invokeTag('fieldValue','g',147,['bean':(cresInstance),'field':("chargesExceptionnelles")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.resultatExceptionnel)) {
printHtmlPart(44)
invokeTag('message','g',154,['code':("cres.resultatExceptionnel.label"),'default':("Resultat Exceptionnel")],-1)
printHtmlPart(45)
invokeTag('fieldValue','g',156,['bean':(cresInstance),'field':("resultatExceptionnel")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (cresInstance?.resultat)) {
printHtmlPart(46)
invokeTag('message','g',163,['code':("cres.resultat.label"),'default':("Resultat")],-1)
printHtmlPart(47)
invokeTag('fieldValue','g',165,['bean':(cresInstance),'field':("resultat")],-1)
printHtmlPart(16)
}
printHtmlPart(48)
createTagBody(2, {->
printHtmlPart(49)
createTagBody(3, {->
invokeTag('message','g',173,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',173,['class':("edit"),'action':("edit"),'resource':(cresInstance)],3)
printHtmlPart(50)
invokeTag('actionSubmit','g',174,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(51)
})
invokeTag('form','g',176,['url':([resource:cresInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(52)
})
invokeTag('captureBody','sitemesh',178,[:],1)
printHtmlPart(53)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416839832865L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
