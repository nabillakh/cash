import compte.Ratios
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_cash_ratiosshow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/ratios/show.gsp" }
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
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'ratios.label', default: 'Ratios'))],-1)
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
if(true && (ratiosInstance?.rendementCapitauxPropres)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("ratios.rendementCapitauxPropres.label"),'default':("Rendement Capitaux Propres")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(ratiosInstance),'field':("rendementCapitauxPropres")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.rendementCapitalInvesti)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("ratios.rendementCapitalInvesti.label"),'default':("Rendement Capital Investi")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(ratiosInstance),'field':("rendementCapitalInvesti")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.retourSurActif)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("ratios.retourSurActif.label"),'default':("Retour Sur Actif")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(ratiosInstance),'field':("retourSurActif")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.roce)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("ratios.roce.label"),'default':("Roce")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(ratiosInstance),'field':("roce")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.performance)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("ratios.performance.label"),'default':("Performance")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(ratiosInstance),'field':("performance")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.margeCommercialeBrute)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("ratios.margeCommercialeBrute.label"),'default':("Marge Commerciale Brute")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(ratiosInstance),'field':("margeCommercialeBrute")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.ebitda)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("ratios.ebitda.label"),'default':("Ebitda")],-1)
printHtmlPart(29)
invokeTag('fieldValue','g',84,['bean':(ratiosInstance),'field':("ebitda")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.ebit)) {
printHtmlPart(30)
invokeTag('message','g',91,['code':("ratios.ebit.label"),'default':("Ebit")],-1)
printHtmlPart(31)
invokeTag('fieldValue','g',93,['bean':(ratiosInstance),'field':("ebit")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.cafSurCa)) {
printHtmlPart(32)
invokeTag('message','g',100,['code':("ratios.cafSurCa.label"),'default':("Caf Sur Ca")],-1)
printHtmlPart(33)
invokeTag('fieldValue','g',102,['bean':(ratiosInstance),'field':("cafSurCa")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.caSurActif)) {
printHtmlPart(34)
invokeTag('message','g',109,['code':("ratios.caSurActif.label"),'default':("Ca Sur Actif")],-1)
printHtmlPart(35)
invokeTag('fieldValue','g',111,['bean':(ratiosInstance),'field':("caSurActif")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.garantieTaux)) {
printHtmlPart(36)
invokeTag('message','g',118,['code':("ratios.garantieTaux.label"),'default':("Garantie Taux")],-1)
printHtmlPart(37)
invokeTag('fieldValue','g',120,['bean':(ratiosInstance),'field':("garantieTaux")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.rotationStock)) {
printHtmlPart(38)
invokeTag('message','g',127,['code':("ratios.rotationStock.label"),'default':("Rotation Stock")],-1)
printHtmlPart(39)
invokeTag('fieldValue','g',129,['bean':(ratiosInstance),'field':("rotationStock")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.creditClient)) {
printHtmlPart(40)
invokeTag('message','g',136,['code':("ratios.creditClient.label"),'default':("Credit Client")],-1)
printHtmlPart(41)
invokeTag('fieldValue','g',138,['bean':(ratiosInstance),'field':("creditClient")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.creditForunisseur)) {
printHtmlPart(42)
invokeTag('message','g',145,['code':("ratios.creditForunisseur.label"),'default':("Credit Forunisseur")],-1)
printHtmlPart(43)
invokeTag('fieldValue','g',147,['bean':(ratiosInstance),'field':("creditForunisseur")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.chiffreAffairesExport)) {
printHtmlPart(44)
invokeTag('message','g',154,['code':("ratios.chiffreAffairesExport.label"),'default':("Chiffre Affaires Export")],-1)
printHtmlPart(45)
invokeTag('fieldValue','g',156,['bean':(ratiosInstance),'field':("chiffreAffairesExport")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.depenseRDSurExploitation)) {
printHtmlPart(46)
invokeTag('message','g',163,['code':("ratios.depenseRDSurExploitation.label"),'default':("Depense RDS ur Exploitation")],-1)
printHtmlPart(47)
invokeTag('fieldValue','g',165,['bean':(ratiosInstance),'field':("depenseRDSurExploitation")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.liquiditeReduite)) {
printHtmlPart(48)
invokeTag('message','g',172,['code':("ratios.liquiditeReduite.label"),'default':("Liquidite Reduite")],-1)
printHtmlPart(49)
invokeTag('fieldValue','g',174,['bean':(ratiosInstance),'field':("liquiditeReduite")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.liquidite)) {
printHtmlPart(50)
invokeTag('message','g',181,['code':("ratios.liquidite.label"),'default':("Liquidite")],-1)
printHtmlPart(51)
invokeTag('fieldValue','g',183,['bean':(ratiosInstance),'field':("liquidite")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.liquiditeActionnaires)) {
printHtmlPart(52)
invokeTag('message','g',190,['code':("ratios.liquiditeActionnaires.label"),'default':("Liquidite Actionnaires")],-1)
printHtmlPart(53)
invokeTag('fieldValue','g',192,['bean':(ratiosInstance),'field':("liquiditeActionnaires")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.solvabiliteSurActif)) {
printHtmlPart(54)
invokeTag('message','g',199,['code':("ratios.solvabiliteSurActif.label"),'default':("Solvabilite Sur Actif")],-1)
printHtmlPart(55)
invokeTag('fieldValue','g',201,['bean':(ratiosInstance),'field':("solvabiliteSurActif")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.solvabiliteSurPassif)) {
printHtmlPart(56)
invokeTag('message','g',208,['code':("ratios.solvabiliteSurPassif.label"),'default':("Solvabilite Sur Passif")],-1)
printHtmlPart(57)
invokeTag('fieldValue','g',210,['bean':(ratiosInstance),'field':("solvabiliteSurPassif")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.coefficientEndettement)) {
printHtmlPart(58)
invokeTag('message','g',217,['code':("ratios.coefficientEndettement.label"),'default':("Coefficient Endettement")],-1)
printHtmlPart(59)
invokeTag('fieldValue','g',219,['bean':(ratiosInstance),'field':("coefficientEndettement")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.resultatParEffectif)) {
printHtmlPart(60)
invokeTag('message','g',226,['code':("ratios.resultatParEffectif.label"),'default':("Resultat Par Effectif")],-1)
printHtmlPart(61)
invokeTag('fieldValue','g',228,['bean':(ratiosInstance),'field':("resultatParEffectif")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.caParEmploye)) {
printHtmlPart(62)
invokeTag('message','g',235,['code':("ratios.caParEmploye.label"),'default':("Ca Par Employe")],-1)
printHtmlPart(63)
invokeTag('fieldValue','g',237,['bean':(ratiosInstance),'field':("caParEmploye")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.masseSalarialeSurCA)) {
printHtmlPart(64)
invokeTag('message','g',244,['code':("ratios.masseSalarialeSurCA.label"),'default':("Masse Salariale Sur CA")],-1)
printHtmlPart(65)
invokeTag('fieldValue','g',246,['bean':(ratiosInstance),'field':("masseSalarialeSurCA")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.etp)) {
printHtmlPart(66)
invokeTag('message','g',253,['code':("ratios.etp.label"),'default':("Etp")],-1)
printHtmlPart(67)
invokeTag('fieldValue','g',255,['bean':(ratiosInstance),'field':("etp")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (ratiosInstance?.capitalParEmploye)) {
printHtmlPart(68)
invokeTag('message','g',262,['code':("ratios.capitalParEmploye.label"),'default':("Capital Par Employe")],-1)
printHtmlPart(69)
invokeTag('fieldValue','g',264,['bean':(ratiosInstance),'field':("capitalParEmploye")],-1)
printHtmlPart(16)
}
printHtmlPart(70)
createTagBody(2, {->
printHtmlPart(71)
createTagBody(3, {->
invokeTag('message','g',272,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',272,['class':("edit"),'action':("edit"),'resource':(ratiosInstance)],3)
printHtmlPart(72)
invokeTag('actionSubmit','g',273,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(73)
})
invokeTag('form','g',275,['url':([resource:ratiosInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(74)
})
invokeTag('captureBody','sitemesh',277,[:],1)
printHtmlPart(75)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1416839074262L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
