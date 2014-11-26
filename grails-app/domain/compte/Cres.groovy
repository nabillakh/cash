package compte

class Cres {

    String chiffreAffaires
    String chiffreAffairesNet

    String coutVentes

    String margeBrute

    String autresChargesExploitations

    String resultatExploitation

    String produitsFinanciers
    String chargesFinancieres
    String resultatFinancier
    String resultatCourantAvantImpot

    String impotsTaxes

    String resultatApresImpot

    String produitsExceptionnels
    String chargesExceptionnelles
    String resultatExceptionnel

    String resultat

    
 static constraints = {
    chiffreAffaires nullable : true
    chiffreAffairesNet nullable : true

    coutVentes nullable : true

    margeBrute nullable : true

    autresChargesExploitations nullable : true

    resultatExploitation nullable : true

    produitsFinanciers nullable : true
    chargesFinancieres nullable : true
    resultatFinancier nullable : true
    resultatCourantAvantImpot nullable : true

    impotsTaxes nullable : true

    resultatApresImpot nullable : true

    produitsExceptionnels nullable : true
    chargesExceptionnelles nullable : true
    resultatExceptionnel nullable : true

    resultat nullable : true

 }
}
