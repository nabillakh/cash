import compte.BilanSimplifie
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_bilanSimplifieshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/bilanSimplifie/show.gsp" }
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
if(true && (bilanSimplifieInstance?.immobilisationsIncorporelles)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("bilanSimplifie.immobilisationsIncorporelles.label"),'default':("Immobilisations Incorporelles")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(bilanSimplifieInstance),'field':("immobilisationsIncorporelles")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.immobilisationsCorporelles)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("bilanSimplifie.immobilisationsCorporelles.label"),'default':("Immobilisations Corporelles")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(bilanSimplifieInstance),'field':("immobilisationsCorporelles")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.autresActifsImmobilises)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("bilanSimplifie.autresActifsImmobilises.label"),'default':("Autres Actifs Immobilises")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(bilanSimplifieInstance),'field':("autresActifsImmobilises")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.stock)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("bilanSimplifie.stock.label"),'default':("Stock")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(bilanSimplifieInstance),'field':("stock")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.creances)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("bilanSimplifie.creances.label"),'default':("Creances")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(bilanSimplifieInstance),'field':("creances")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.autresActifsCirculants)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("bilanSimplifie.autresActifsCirculants.label"),'default':("Autres Actifs Circulants")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(bilanSimplifieInstance),'field':("autresActifsCirculants")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.valeursDisponibles)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("bilanSimplifie.valeursDisponibles.label"),'default':("Valeurs Disponibles")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(bilanSimplifieInstance),'field':("valeursDisponibles")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.capital)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("bilanSimplifie.capital.label"),'default':("Capital")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(bilanSimplifieInstance),'field':("capital")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.autresCapitauxPropres)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("bilanSimplifie.autresCapitauxPropres.label"),'default':("Autres Capitaux Propres")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(bilanSimplifieInstance),'field':("autresCapitauxPropres")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.dettesLongTerme)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("bilanSimplifie.dettesLongTerme.label"),'default':("Dettes Long Terme")],-1)
printHtmlPart(35)
invokeTag('fieldValue','g',111,['bean':(bilanSimplifieInstance),'field':("dettesLongTerme")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.autresDettesLongTerme)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("bilanSimplifie.autresDettesLongTerme.label"),'default':("Autres Dettes Long Terme")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',120,['bean':(bilanSimplifieInstance),'field':("autresDettesLongTerme")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.provisionsPourRisquesCharges)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("bilanSimplifie.provisionsPourRisquesCharges.label"),'default':("Provisions Pour Risques Charges")],-1)
printHtmlPart(39)
invokeTag('fieldValue','g',129,['bean':(bilanSimplifieInstance),'field':("provisionsPourRisquesCharges")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.empruntsCT)) {
printHtmlPart(40)
invokeTag('message','g',136,['code':("bilanSimplifie.empruntsCT.label"),'default':("Emprunts CT")],-1)
printHtmlPart(41)
invokeTag('fieldValue','g',138,['bean':(bilanSimplifieInstance),'field':("empruntsCT")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.fournisseurs)) {
printHtmlPart(42)
invokeTag('message','g',145,['code':("bilanSimplifie.fournisseurs.label"),'default':("Fournisseurs")],-1)
printHtmlPart(43)
invokeTag('fieldValue','g',147,['bean':(bilanSimplifieInstance),'field':("fournisseurs")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (bilanSimplifieInstance?.autresDCT)) {
printHtmlPart(44)
invokeTag('message','g',154,['code':("bilanSimplifie.autresDCT.label"),'default':("Autres DCT")],-1)
printHtmlPart(45)
invokeTag('fieldValue','g',156,['bean':(bilanSimplifieInstance),'field':("autresDCT")],-1)
printHtmlPart(16)
}
printHtmlPart(46)
createTagBody(2, {->
printHtmlPart(47)
createTagBody(3, {->
invokeTag('message','g',164,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',164,['class':("edit"),'action':("edit"),'resource':(bilanSimplifieInstance)],3)
printHtmlPart(48)
invokeTag('actionSubmit','g',165,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(49)
})
invokeTag('form','g',167,['url':([resource:bilanSimplifieInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(50)
})
invokeTag('captureBody','sitemesh',169,[:],1)
printHtmlPart(51)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416838750067L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
